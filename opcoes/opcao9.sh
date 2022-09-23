lista=($1 $2 $3)
ordenado=($(printf '%s\n' "${lista[@]}"|sort))
echo -e "\n"${ordenado[@]}"\n"