# All code bases will be PowerShell.
 #W0183324: Created basic menu

#"W0473011": Divide numbers (1-2)
function Div_Nums {
    # Asks users to type two numbers to divide.
    $Num1 = Read-Host "Write a number to divide"
    $Num2 = Read-Host "Write another number to divide"
    
    # Convert data type from text to numbers.
    $Num1 = [double]$Num1
    $Num2 = [double]$Num2
    
    # Check if second number is zero to avoid division by zero error.
    if ($Num2 -eq 0) {
        Write-Host "Cannot divide by zero. Please enter a non-zero number."
    }
    else {
        $Result = $Num1 / $Num2
        Write-Host "$Num1 divided by $Num2 = $Result"
    }
}

 Function Mod_Div{
# W0473939 scripts made in powershell (2-2)
# Mod (%)
# Powershell script that will ask the user for two numbers, divide them, and give the modulo
# Ask the user for their first number
	$firstnumber = Read-Host "Enter the first number"

	# Ask the user for their second number
	$secondnumber = Read-Host "Enter the second number"

	# Convert the input strings to numbers
	$firstnumber = [double]::Parse($firstnumber)
	$secondnumber = [double]::Parse($secondnumber)

	# Divide the two numbers and get the remainder
	[double]$remainder = $firstnumber % $secondnumber

	# Display the result
	Write-Host "The quotient of $firstnumber divided by $secondnumber has a remainder of $remainder"
}

 #W0183324: Created Function Option 2-3
 function Min_Nums {
     $Num1 = Read-Host "Write a first number to compare."
     $Num2 = Read-Host "Write another number to compare."
     $num1 = [double]$num1
     $num2 = [double]$num2
     $Result = [Math]::Min($Num1 , $Num2)
     Write-Host "The smaller number between $Num1 and $Num2 is $Result"
 }

 function Show-Menu2 {

     Write-Host "Select an option:"
     Write-Host "1. Divide (/)"
     Write-Host "2. Modulus Division (%)"
     Write-Host "3. Minimum Number"
     Write-Host "Q. Quit"
 }

 do {
     Show-Menu2
     $choice = Read-Host "Enter your choice"
     switch ($choice) {
         "1" {
             Write-Host "Dividing Numbers"
             Div_Nums
         }
         "2" {
             Write-Host "Finding leftover Value after Division"
             Mod_Div
         }
         "3" {
             Write-Host "Finding a smaller Number between two"
             Min_Nums
         }
         "Q" {
             Write-Host "Exiting..."
             break
         }
         default {
             Write-Host "Invalid selection. Please try again."
         }
     }
 } while ($choice -ne "Q")

