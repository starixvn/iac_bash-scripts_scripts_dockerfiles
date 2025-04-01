#!/usr/bin/env sh

GROUP_ID="$1"
message="$2"

curl -d "token=0A40aOc7CtpzjbBSJu8KNWQRoXyjRvf9&message=${message}&conversationId=${GROUP_ID}" -X POST https://bot.nexdev.net/skynex/api/messages/ForwardWithToken
