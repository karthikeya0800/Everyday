while true; do
    echo $(date) >> "dates.txt"
    git add -A
    git commit -m "date updated"
    git push origin main
    sleep 10
done