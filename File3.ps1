# All code bases will be PowerShell.
 #W0183324: Created basic menu

#"W0473011": Find Maximum Number (3-1)
function Max_Num {
    # Asks users to type two numbers to compare.
     $Num1 = Read-Host "Write a first number to compare."
     $Num2 = Read-Host "Write another number to compare."
     # Convert data type from text to numbers.
     $num1 = [double]$num1
     $num2 = [double]$num2
     $Result = [Math]::Max($Num1 , $Num2)
     Write-Host "The bigger number between $Num1 and $Num2 is $Result"
 }

Function Avg_Num{
# W0473939 scripts made in powershell (3-2)
# Avg-Math.avg()
# PowerShell script that will ask the user for six 3-digit numbers and calculate the average of all the numbers given
# Create an intializer variable to hold onto the total of the numbers
	$sum = 0

	# Prompt the user for six 3-digit numbers
	for ($i = 1; $i -le 6; $i++) {
		do {
			$number = Read-Host "Enter number $i (must be a 3-digit number)"
		} until ($number -match '^\d{3}$')
	# ↑ Loop until a 3-digit number is enterered ↑

		$sum += [int]$number  # Convert the string to an integer and add it to the sum
	}

	# Get the total the average for the numbers
	$average = $sum / 6

	# Display the result
	Write-Host "The average of the six numbers is $average."
}

 #W0183324: Created Function Option 3-3
 function Pow_Num {
     $Num1 = Read-Host "Write a base number to be powered."
     $Num2 = Read-Host "Write a value of power"
     $num1 = [double]$num1
     $num2 = [double]$num2
     $Result = [Math]::Pow($Num1 , $Num2)
     Write-Host "$Num1 to power $Num2 = $Result"
 }

 function Show-Menu3 {

     Write-Host "Select an option:"
     Write-Host "1. Maximum Number"
     Write-Host "2. Average Number"
     Write-Host "3. Power a Number"
     Write-Host "Q. Quit"
 }

 do {
     Show-Menu3
     $choice = Read-Host "Enter your choice"
     switch ($choice) {
         "1" {
             Write-Host "Finding a Bigger Number between two"
             Max_Num
         }
         "2" {
             Write-Host "Finding Average Number"
             Avg_Num
         }
         "3" {
             Write-Host "Number to Power"
             Pow_Num
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
