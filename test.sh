changed='["test1/docs/aaaaa.png","test2/Readme.md", "test1/docs/main.tf", "test1/docs/main1.tf", "test2/main.tf"]'
targets="$( echo $changed | jq -r '.[]' | jq -s -R 'split("\n") | map(select(contains("/docs") or contains("/Readme.md") | not))'  )"
directories="$( echo $targets | jq -r '.[]' | cut -d'/' -f1 | sort -u | jq -s -R -c 'split("\n") | map(select(. != ""))' )"
array2=(`echo "${array1[*]}" | tr ' ' '\n' | sort -u`)
# echo $changed
echo $directories
# projects2="$( echo $projects | jq -r '.[]' )"
# echo ${projects2}

# echo '{"name": "Yamada"}' | jq -s -R '.[]'


          targets="$( echo $changed | jq -r '.[]' | jq -s -R 'split("\n") | map(select(contains("/docs/") or contains("/Readme.md") | not))'  )"
          directories="$( echo $targets | jq -r '.[]' | cut -d'/' -f1 | sort -u | jq -s -R -c 'split("\n") | map(select(. != ""))' )"
