#  It is recommended to test the script on a local machine for its purpose and effects. 
#  ManageEngine Endpoint Central will not be responsible for any 
#  damage/loss to the data/setup based on the behavior of the script.
#  Description - Script to check if an application is installed.
#  Parameters - <App Name>
#  Example 1 - "Brave Browser"
#  Example 1 - "Evernote"
#  Configuration Type - USER/COMPUTER  

if [ $# == '1' ]; then

if open -Ra $1 ; then
echo "VERIFIED: \"$1\" is installed"
exit 0
else
echo "ERROR: \"$1\" is not installed"
exit 2
fi

else
echo "Invalid Arguments - Please refer description of the script"
exit 1
fi



