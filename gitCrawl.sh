#!/usr/bin/env bash
#file=test1.txt
#curl "https://github.com/topics/security-tools?o=desc&s=stars" -o $file
#sed -i -e '/<link/d' $file
#sed -i -e '/<meta/d' $file
#sed '/"href"/!d' $file
#wc $file

# sed '/text\|blah/!d' file  ###Delete rows not contain


#curl -H 'Accept: application/vnd.github.mercy-preview+json' 'https://api.github
# .com/search/repositories?q=topic:security+stars:>500+fork:true&sort=stars&per_page=75' | jq -r '.items[]| .git_url' test.all




#for ((i=1; ; i+=100)); do
#    echo "i= $i"
#    contents=$(curl -H 'Accept: application/vnd.github.mercy-preview+json' \
#    'https://api.github.com/search/repositories?q=topic:security+stars:>500+fork:true&sort=stars&per_page=100&page=$i')
#    echo "$contents" > $i.json
#    if jq -e '.list | length == 0' >/dev/null; then
#       break
#    fi <<< "$contents"
#done


for ((i=1; ; i+=1)); do
    echo "i= $i"
    contents=$(curl -H 'Accept: application/vnd.github.mercy-preview+json' \
    "https://api.github.com/search/repositories?q=topic:security+stars:>500+fork:true&sort=stars&per_page=100&page=$i")
    echo "$contents" > $i.json
    echo "$contents" >> all.json

done

#curl -H 'Accept: application/vnd.github.mercy-preview+json' 'https://api.github
#.com/search/repositories?q=topic:security+stars:>500+fork:true&sort=stars&per_page=50&page=$i




#for ((i=0; ; i+=100)); do
#    contents=$(curl -u "username:password" -H "Content-Type: application/json" "https://<url>/api/core/v3/places?count=100&startIndex=$i")
#    echo "$contents" > $i.json
#    if jq -e '.list | length == 0' >/dev/null; then
#       break
#    fi <<< "$contents"
#done


#links
# https://github.com/controlm/automation-api-quickstart/tree/master/201-call-rest-api-using-curl
# https://stackoverflow.com/questions/19576742/how-to-clone-all-repos-at-once-from-github
# https://gist.github.com/erdincay/4f1d2e092c50e78ae1ffa39d13fa404e
# https://stackoverflow.com/questions/19576742/how-to-clone-all-repos-at-once-from-github/
# https://github.com/controlm/automation-api-quickstart/tree/master/201-call-rest-api-using-curl







#https://stackoverflow.com/questions/5130968/how-can-i-copy-the-output-of-a-command-directly-into-my-clipboard
