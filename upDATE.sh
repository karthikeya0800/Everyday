git pull
while true; do
    echo $(date) >> "dates.txt"
    git add -A
    git commit -m "date updated"
    git push origin main
    echo "----------------------------------date updated-------------------------------------"
    sleep 10
done
