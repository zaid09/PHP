<?php
include 'func.inc.php';
?>

<head>
<title>Search Engine</title>
</head>

<body bgcolor= "black" text="white">
<hr size ="2">
<marquee  behaviour = "scroll" align ="center">
<h2>Search Engine</h2>
</marquee>
<hr size ="2">
<form align ="center" method="POST">
<fieldset>
<form action ="" method="POST">
<p>
	<input type="text" name ="keywords"/> <input type="submit" name="sbt" value ="Search"/> 
</p>
</form>
</fieldset>
</body>
<?php
if(isset($_POST['sbt']))
{
	$suffix="";
	$keywords=mysql_real_escape_string(htmlentities(trim($_POST['keywords'])));

$errors=array();

if(empty($keywords)){
$errors[]= 'Please enter a search term';
} else if(strlen($keywords)<3) {
$errors[]='Your sarch term must be three or more characters';
} else if(search_results($keywords)===false) {
$errors[]= 'Your search for '.$keywords.' returned no results';
}

if(empty($errors)) {
	$results= search_results($keywords);
	$results_num = count($results);
	$suffix=($results_num!=1) ? 's' : '';

	echo '<p>Your search for <strong>', $keywords, '</strong> returned <strong>', $results_num, '</strong> result',$suffix,'</p>';

	foreach($results as $result) {
	echo '<p><strong>',$result['title'],'</strong><br>',$result['description'],'...<br><a href="',$result['url'],'" target="_blank">',$result['url'],'</a></p>';
}
} else {
	foreach($errors as $error) {
		echo $error.'<br>';
		}	
	
  }



}
?>
