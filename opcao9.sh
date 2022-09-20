lista=($1 $2 $3)
#echo "${lista[@]}"

ordenado=($(printf '%s\n' "${lista[@]}"|sort))
echo ${ordenado[@]}
echo ""