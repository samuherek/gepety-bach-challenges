idx=0
while read -r line; do
    ((idx++))
    printf '%d: %s\n' $idx "$line"
done < $1
