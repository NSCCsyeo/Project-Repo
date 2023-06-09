
# All code bases will be PowerShell.
#W0183324: Created basic menu

#"W0473011": Add numbers (1-1) 
function Add_nums{
    # Asks users to type two numbers to add.
     $Num1 = Read-Host "Write a number to add"
     $Num2 = Read-Host "Write another number to add"
     # Convert data type from text to numbers.
     $num1 = [double]$num1
     $num2 = [double]$num2
     $Result = $Num1 + $Num2
     Write-Host "$Num1 + $Num2 = $Result"
}

Function Sub_Nums{
# W0473939 scripts made in powershell (1-2)
# Subtraction (-)
# Script that will ask the user for two numbers and give the answer of those two numbers added together
# Ask the user for their first number
	$firstnumber = Read-Host "Enter the first number"
	# Ask the user for their second number
	$secondnumber = Read-Host "Enter the second number"

	# Convert the input strings to numbers
	$firstnumber = [double]::Parse($firstnumber)
	$secondnumber = [double]::Parse($secondnumber)

	# Add the two numbers together
	$sumofbothnumbers = $firstnumber - $secondnumber

	# Display the
	Write-Host "The sum of $firstnumber and $secondnumber is $sumofbothnumbers."
}

#W0183324: Created Function Option 1-3
function Mul_Nums {
     $Num1 = Read-Host "Write a number to multiply"
     $Num2 = Read-Host "Write another number to multiply"
     $num1 = [double]$num1
     $num2 = [double]$num2
     $Result = $Num1 * $Num2
     Write-Host "$Num1 x $Num2 = $Result"
}

function Show-Menu1 {

     Write-Host "Select an option:"
     Write-Host "1. Add (+)"
     Write-Host "2. Substract (-)"
     Write-Host "3. Multiply (x)"
     Write-Host "Q. Quit"
}

do {
     Show-Menu1
     $choice = Read-Host "Enter your choice"
     switch ($choice) {
         "1" {
             Write-Host "Adding Numbers"
             Add_nums
         }
         "2" {
             Write-Host "Substracting Numbers"
             Sub_Nums
         }
         "3" {
             Write-Host "Multiplying Numbers"
             Mul_Nums
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

