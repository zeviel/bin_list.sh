#!/bin/bash

api="https://lookup.binlist.net"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_card_details() {
  # 1 - bin: (string): first 6 digits of card number
  curl --request GET \
       --url "$api/$1" \
       --user-agent "$user_agent" \
       --header "Accept-Version: 3"
}
