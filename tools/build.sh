#! /bin/zsh

echo -n "Enter PL: "
read PL
echo -n "Enter New Project Name: "
read NewProject
mkdir /home/bhu1/Dev/$PL/$NewProject
cd $PL
cp /home/bhu1/Dev/.templates/$PL/template1* $NewProject/main.cpp
cp /home/bhu1/Dev/.run/$PL/run1* $NewProject/run.sh
cd $NewProject
chmod +x run.sh
time_created=$(date +'%H:%M')
notify-send "Generating project!!" "New Project <i>$NewProject</i> created at $time_created"
ls 

