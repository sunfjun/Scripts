#!/bin/sh
rm PoolDomainMarketplaceList*
wget http://www.pool.com/Downloads/PoolDomainMarketplaceList.zip
unzip PoolDomainMarketplaceList.zip


du -sh PoolDomainMarketplaceList.txt






fname="PoolDomainMarketplaceList.txt"
exec<$fname
regex='^([a-z]{1,1})([a|e|i|o|u]{1,1})([a-z]{1,4})\.com(.+)'
while read line
do
if [[ "$line" =~ $regex ]];then
echo $line
fi
done
