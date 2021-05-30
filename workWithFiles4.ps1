#workWithFiles4.ps1
#Create a program using bash commands that will locate find, open and write on files. 
#Devin Brown

$dogPath = "/Users/brownjog/Documents/cpt180Stuff/pets/dogs/dognames.txt"
$catPath = "/Users/brownjog/Documents/cpt180Stuff/pets/cats/catnames.txt"
$pathExist = (Test-Path -Path $dogPath) -AND (Test-Path -path $catPath)



if ($pathExist -eq $True)
{
	$file_content = Get-Content -Path $dogPath
	Write-Output $file_content
	
	$file_content = Get-Content -Path $catPath
	Write-Output $file_content

	
	$file_content = Get-Content -Path $catPath
	Add-Content -Path $catPath -Value "Sammy"
	Add-Content -Path $catPath -Value "Luna"
	Write-Output  $file_content
}

else
{
	Write-Output "Unable to access one or more files."
}

