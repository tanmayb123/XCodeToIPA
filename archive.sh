#Special thanks to Guillaume Cerquant and his xcodearchive script, which essentially gives this script life. https://github.com/gcerquant/xcodearchive

FILE=$1
BASENAME=`basename "$1" .xcodeproj`

echo "Building IPA File for: $BASENAME..."

cd ${HOME}/Desktop/debug/

mkdir ${HOME}/Desktop/IPA

ruby xcodearchive.rb -o ~/Desktop/IPA -p $FILE

echo "Completed Building IPA for: $BASENAME. Find it in the IPA folder on the desktop"