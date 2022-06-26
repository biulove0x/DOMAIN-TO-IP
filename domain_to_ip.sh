#!/bin/bash
# @author : biulove0x
# @name   : Convert Domain to IP Address
banner()
{
    echo "##########################################"
    echo "# @author : biulove0x                    #"
    echo "# @name   : Convert Domain to IP Address #"
    echo "##########################################"
}
banner
for domain in $(cat $1);
do
    # Get IP Address
    ip=$(dig +short $domain)
    # Output
    echo "${domain} => ${ip}" | tr '\n' ' '
    echo
    # Save
    echo "${ip}" >> results.txt
done
