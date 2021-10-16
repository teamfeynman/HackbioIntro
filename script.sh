# This script executes all scripts in the directory
#/Desktop/HackBio/HackbioIntro-main$ 

# Clone the teamfeynmanHackBioIntro repository from GitHub using the URL for the repository
git clone https://github.com/teamfeynman/HackbioIntro.git

# Change the directory to teamfeynmanHackBioIntro
cd ./HackbioIntro-main/

# Give privilege to execute all the scripts in this folder
# script_name.extension
chmod +x script.sh

# Loop through all the scripts in the folder and generate a csv file 
for i in $(ls script*)
do
    ./$i | awk -F ',' '{print $1,$2,$3,$4}' >> teamfeynman.csv
done
