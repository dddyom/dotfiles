#!/bin/sh

API="https://api.kraken.com/0/public/Ticker"

quote=$(curl -sf $API?pair=BTCUSD| jq -r ".result.XXBTZUSD.c[0]")
quote=$(LANG=C printf "%.0f" "$quote")

#printf " "
#echo "$quote" 
echo " $quote"
