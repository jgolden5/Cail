#!/bin/bash
if [[ $1 ]]; then
  prompt="$1"
else
  read -p "Enter prompt: " prompt
fi
prompt=$(echo "$prompt" | sed 's/ /%/g')
curl 'https://chat.mistral.ai/api/chat' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'content-type: application/json' \
  -b '__cf_bm=UhDuKS6DrIBMYxmMXwUlAzGaodW4ar.pO7BUtONByr0-1761002374-1.0.1.1-guagHp_5d2RMCLOVE05zRfHqahohWtmbwHfAs5nlX.40S5QHvuEeoY2YR6Gofgm7pZb9fl.6tTPCMXfn8w4fbveU0L3vqk_LGm69siW6jJU; _cfuvid=Cs53ItcOm0o7kN86j92rLyKITo9djE2zmmPFD0IITDw-1761002374346-0.0.1.1-604800000; csrftoken=esmD6n79hnwegkZN1B4Q2KvdQiU475vp; anonymousUser=e414cd9b-ae8a-49bd-bbe6-396c32cd0d51; intercom-id-xel0jpx9=9af659d9-d556-4e9d-972e-d7501c42bcd3; intercom-session-xel0jpx9=; intercom-device-id-xel0jpx9=4b21139d-4df9-4580-9c7b-cf0b4716e29e' \
  -H 'origin: https://chat.mistral.ai' \
  -H 'priority: u=1, i' \
  -H 'referer: https://chat.mistral.ai/chat?q='"$prompt"'' \
  -H 'sec-ch-ua: "Microsoft Edge";v="141", "Not?A_Brand";v="8", "Chromium";v="141"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0' \
  --data-raw '{"chatId":"a2341711-5fc6-43ca-82f2-2e9fc91fa4a5","mode":"start","disabledFeatures":[],"clientPromptData":{"currentDate":"2025-10-20","userTimezone":"T-07:00 (America/Los_Angeles)"},"stableAnonymousIdentifier":"1wts2z7","shouldAwaitStreamBackgroundTasks":true,"shouldUseMessagePatch":true}'
