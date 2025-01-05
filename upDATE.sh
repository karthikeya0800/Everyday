#!/bin/bash
cd /home/karthikeya/Desktop/Projects/Everyday 
echo $(date) >> "dates.txt"
git pull origin main
git add -A
git commit -m "date updated"
git push origin main
echo "--------------------------end of file--------------------------"