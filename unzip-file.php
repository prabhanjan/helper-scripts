<?php

set_time_limit(0);

$path = getcwd();

$zip = new ZipArchive;

$res = $zip->open('uploads.zip');

if ($res === TRUE) {

  $zip->extractTo($path.'/extracted/');

  $zip->close();

  echo 'Successfully Extracted';

}

else 
{

 echo 'failed to Extract';

}