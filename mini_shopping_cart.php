<?php
session_start();
$page='main.php';

mysql_connect('localhost','root','') or die(mysql_error());
mysql_select_db('cart') or die(mysql_error());

if(isset($_GET['add'])) {
$quantity=mysql_query("SELECT id, `quantity` FROM `products` WHERE id=".mysql_real_escape_string((int)$_GET['add']));
while($quantity_row=mysql_fetch_assoc($quantity)) {
if($quantity_row['quantity']!=$_SESSION['cart_'.(int)$_GET['add']]) {
$_SESSION['cart_'.(int)$_GET['add']]+='1'; }
}
header ('location:'.$page);
}

if(isset($_GET['remove'])) {
$_SESSION['cart_'.(int)$_GET['remove']]--;
header ('location:'.$page);
}

if(isset($_GET['delete'])) {
$_SESSION['cart_'.(int)$_GET['delete']]='0';
header ('location:'.$page);
}

function products() {
$get=@mysql_query('SELECT id, name, description, price FROM products WHERE quantity>0 ORDER BY id');
if(@mysql_num_rows($get)==0) {
echo "There are no products to display!";
}
else {
while($get_row=mysql_fetch_assoc($get)) {
echo '<p>'.$get_row['name'].'<br/>'.$get_row['description'].'<br/>&pound;'.number_format($get_row['price'],2).'&nbsp; <a href="cart.php?add='.$get_row['id'].'">Add</a></p>';
}
}
}

function paypal_items() {
$num=0;
foreach($_SESSION as $name => $value) {
if($value!=0) {
if(substr($name,0,5)=='cart_') {
$id= substr($name,5,strlen(($name)-5));
$get=@mysql_query("SELECT id, name,price,shipping FROM products WHERE id=".mysql_real_escape_string((int)$id));
while($get_row=mysql_fetch_assoc($get)) {
$num++;
echo '<input type="hidden" name="item_number_'.$num.'" value="'.$id.'">';
echo '<input type="hidden" name="item_name_'.$num.'" value="'.$get_row['name'].'">';
echo '<input type="hidden" name="amount_'.$num.'" value="'.$get_row['price'].'">';
echo '<input type="hidden" name="shipping_'.$num.'" value="'.$get_row['shipping'].'">';
echo '<input type="hidden" name="quantity_'.$num.'" value="'.$value.'">';
}
}
}
}
}


function cart() {
$total=0;
foreach($_SESSION as $name => $value) {
if($value>0) {
if(substr($name,0,5)=='cart_') {
$id= substr($name,5,strlen(($name)-5));
$get=@mysql_query("SELECT id, name,price FROM products WHERE id=".mysql_real_escape_string((int)$id));
while($get_row=@mysql_fetch_assoc($get)) {
$sub=$get_row['price']*$value;
echo $get_row['name'].'&nbsp;x&nbsp;'.$value.'&nbsp;@ &pound;'.number_format($get_row['price'],2).' = &pound;'.number_format($sub,2).'<a href ="cart.php?remove='.$id.'">[-]</a><a href ="cart.php?add='.$id.'">[+]</a><a href ="cart.php?delete='.$id.'">[Delete]</a><br/>';
}
}
$total+=$sub;
}
}
if($total==0) { echo "Your cart is empty"; }
else {
echo '<p>Total: &pound;'.number_format($total,2).'</p>';
?>
<form action ="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_cart">
<input type="hidden" name="upload" value="1">
<input type="hidden" name="business" value="analchoudhury1@gmail.com">
<?php paypal_items();  ?>

<input type="hidden" name="currency_code" value="GBP">
<input type="hidden" name="amount" value="<?php echo $total;?>">
<input type= "image" src="http://www.paypal.com/en_US/i/btn/x-click-but03.gif" name="submit" alt="Make payments with PayPal - it's fast, free and secure!">
</form>
<?php
}
}
?>

