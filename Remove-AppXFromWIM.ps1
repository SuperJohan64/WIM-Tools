<#

Step1

Mount-WindowsImage -ImagePath "c:\Win10Install\Sources\Install.wim" -Index 1 -Path "c:\Mounted_image"

Step 2

Get-AppxProvisionedPackage -Path c:\Mounted_Image | Select DisplayName | Sort DisplayName

Step 3

Run Script below

Step 4

Dismount-WindowsImage -Path c:\Mounted_Image -Save

#>


$apps=@( 	
	"9E2F88E3.Twitter"
	"ClearChannelRadioDigital.iHeartRadio"
	"Flipboard.Flipboard"
	"king.com.CandyCrushSodaSaga"
	"Microsoft.3DBuilder"
	"Microsoft.BingFinance"
	"Microsoft.BingNews"
	"Microsoft.BingSports"
	#"Microsoft.BingWeather"
	"Microsoft.CommsPhone"
    #"Microsoft.GetHelp"
	"Microsoft.Getstarted"
	"Microsoft.Messaging"
	#"Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MixedReality.Portal"
	#"Microsoft.Office.OneNote"
	"Microsoft.Office.Sway"
	"Microsoft.People"
	"Microsoft.SkypeApp"
    "Microsoft.Wallet"
	"Microsoft.Windows.Phone"
	#"Microsoft.Windows.Photos"
	#"Microsoft.WindowsAlarms"
	#"Microsoft.WindowsCalculator"
	#"Microsoft.WindowsCamera"
    "Microsoft.WindowsFeedbackHub"
	"Microsoft.WindowsMaps"
	"Microsoft.WindowsPhone"
	"Microsoft.WindowsSoundRecorder"
	"Microsoft.XboxApp"
    "Microsoft.Xbox.TCUI"             
    "Microsoft.XboxGameOverlay"     
    "Microsoft.XboxGamingOverlay"  
    "Microsoft.XboxIdentityProvider"
    "Microsoft.XboxSpeechToTextOverlay"
    "Microsoft.YourPhone"
	"Microsoft.ZuneMusic"
	"Microsoft.ZuneVideo"
	"microsoft.windowscommunicationsapps"
	"Microsoft.MinecraftUWP"
	"ShazamEntertainmentLtd.Shazam"		
)

foreach ($app in $apps) {	
	Get-AppXProvisionedPackage -path c:\Mounted_Image | where DisplayName -EQ $app | Remove-AppxProvisionedPackage
    }