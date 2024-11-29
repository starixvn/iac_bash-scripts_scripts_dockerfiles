#!/usr/bin/env sh

GROUP_ID="$1"
message="$2"

curl -d "token=0A40aOc7CtpzjbBSJu8KNWQRoXyjRvf9&message=${message}&conversationId=19:5cf103014bf348b4a214935d021d09f3@thread.tacv2" -X POST https://bot.nexdev.net/skynex/api/messages/ForwardWithToken
