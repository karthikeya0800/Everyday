headline=$(cat headline.txt)
substring="Engineer"

if echo "$headline" | grep -q "$substring"; then
    new_headline=$(echo "$headline" | sed 's/Engineer/Developer/')
else
    new_headline=$(echo "$headline" | sed 's/Developer/Engineer/')
fi

echo $new_headline > headline.txt


curl 'https://www.naukri.com/cloudgateway-mynaukri/resman-aggregator-services/v1/users/self/fullprofiles' \
  -H 'accept: application/json' \
  -H 'accept-language: en-GB,en-US;q=0.9,en;q=0.8' \
  -H 'appid: 105' \
  -H 'authorization: Bearer eyJraWQiOiIzIiwidHlwIjoiSldUIiwiYWxnIjoiUlM1MTIifQ.eyJ1ZF9yZXNJZCI6MjEzNzY3NDE4LCJzdWIiOiIyMjYzMDk4MzgiLCJ1ZF91c2VybmFtZSI6ImYxNjQ5NDM1MTguODEzOCIsInVkX2lzRW1haWwiOnRydWUsImlzcyI6IkluZm9FZGdlIEluZGlhIFB2dC4gTHRkLiIsInVzZXJBZ2VudCI6Ik1vemlsbGEvNS4wIChYMTE7IExpbnV4IHg4Nl82NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzEzMy4wLjAuMCBTYWZhcmkvNTM3LjM2IiwiaXBBZHJlc3MiOiIxMDMuMTYwLjI2LjEwNCIsInVkX2lzVGVjaE9wc0xvZ2luIjpmYWxzZSwidXNlcklkIjoyMjYzMDk4MzgsInN1YlVzZXJUeXBlIjoiIiwidXNlclN0YXRlIjoiQVVUSEVOVElDQVRFRCIsInVkX2lzUGFpZENsaWVudCI6ZmFsc2UsInVkX2VtYWlsVmVyaWZpZWQiOnRydWUsInVzZXJUeXBlIjoiam9ic2Vla2VyIiwic2Vzc2lvblN0YXRUaW1lIjoiMjAyNS0wNi0yOVQwOTozODo0MyIsInVkX2VtYWlsIjoia2FydGhpa2V5YTA4MDBAZ21haWwuY29tIiwidXNlclJvbGUiOiJ1c2VyIiwiZXhwIjoxNzUyNDAzNzAzLCJ0b2tlblR5cGUiOiJhY2Nlc3NUb2tlbiIsImlhdCI6MTc1MjQwMDEwMywianRpIjoiZGZjNGYxNWRjNWY3NDMyYWFmNzU1YzIyYmVmYTExMTUiLCJwb2RJZCI6InByb2QtNWM3ZGI1ODQ2LWxwNHB6In0.sEJMja2dja74onX9S8DZI77zIMhCkK4nYAuI5yjpOy0g3xDIvPH0jJzEDRMqv7ljl4LGb2x8v5WGtM5usTwMB9ScQAnHNnMLcXId9Q3r1TARMtBr_-0JzoLQd1PZNbZmivVMJtzwJazHcy_7xVfYOt0jXLXKhCM3E8xR_6eyzj3TBqegFKS3Ruu9o_uBZnTEuHDNYLpzfOjFv9rotbGlBVQPWlqMglYlxZyXRKOZ6xemxTOrVJ5zmeHOJ0THgZYkfiqDbhyGrLVDcnJEZMt1DvajkhwCb3GXawMhER5SwUv7NFBiSl9C1AcqAZwhGFID4o6VnE0Y_d8Eup_Ijw1geA' \
  -H 'clientid: d3skt0p' \
  -H 'content-type: application/json' \
  -b 'test=naukri.com; _t_ds=1258a2bc1751170115-41258a2bc-01258a2bc; J=0; _ga=GA1.1.1512863587.1751170116; _gcl_au=1.1.1241322825.1751170117; nauk_rt=dfc4f15dc5f7432aaf755c22befa1115; nauk_sid=dfc4f15dc5f7432aaf755c22befa1115; nauk_otl=dfc4f15dc5f7432aaf755c22befa1115; NKWAP=a1cf37b20931c3a08a44efba51eda73935bdcea0415fde376d021a67f36edbfeb8197ded423be680~a43e70a3ebf96d691f6561adfc7df396a1b7685e8088e3810488aa224b02518a~1~0; MYNAUKRI[UNID]=8426d027c5024c3d9d7052a1af049ac7; nauk_ps=default; _ga_T749QGK6MQ=GS2.1.s1751170116$o1$g0$t1751170123$j53$l0$h0; _ff_ds=0248905001751170299-591F4A118217-570B2D660986; failLoginCount=0; PHPSESSID=h5psn09t3kv2g578lsjl8oooqv; _t_r=1091%2F%2F; tStp=1752317816647; nauk_at=eyJraWQiOiIzIiwidHlwIjoiSldUIiwiYWxnIjoiUlM1MTIifQ.eyJ1ZF9yZXNJZCI6MjEzNzY3NDE4LCJzdWIiOiIyMjYzMDk4MzgiLCJ1ZF91c2VybmFtZSI6ImYxNjQ5NDM1MTguODEzOCIsInVkX2lzRW1haWwiOnRydWUsImlzcyI6IkluZm9FZGdlIEluZGlhIFB2dC4gTHRkLiIsInVzZXJBZ2VudCI6Ik1vemlsbGEvNS4wIChYMTE7IExpbnV4IHg4Nl82NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzEzMy4wLjAuMCBTYWZhcmkvNTM3LjM2IiwiaXBBZHJlc3MiOiIxMDMuMTYwLjI2LjEwNCIsInVkX2lzVGVjaE9wc0xvZ2luIjpmYWxzZSwidXNlcklkIjoyMjYzMDk4MzgsInN1YlVzZXJUeXBlIjoiIiwidXNlclN0YXRlIjoiQVVUSEVOVElDQVRFRCIsInVkX2lzUGFpZENsaWVudCI6ZmFsc2UsInVkX2VtYWlsVmVyaWZpZWQiOnRydWUsInVzZXJUeXBlIjoiam9ic2Vla2VyIiwic2Vzc2lvblN0YXRUaW1lIjoiMjAyNS0wNi0yOVQwOTozODo0MyIsInVkX2VtYWlsIjoia2FydGhpa2V5YTA4MDBAZ21haWwuY29tIiwidXNlclJvbGUiOiJ1c2VyIiwiZXhwIjoxNzUyNDAzNzAzLCJ0b2tlblR5cGUiOiJhY2Nlc3NUb2tlbiIsImlhdCI6MTc1MjQwMDEwMywianRpIjoiZGZjNGYxNWRjNWY3NDMyYWFmNzU1YzIyYmVmYTExMTUiLCJwb2RJZCI6InByb2QtNWM3ZGI1ODQ2LWxwNHB6In0.sEJMja2dja74onX9S8DZI77zIMhCkK4nYAuI5yjpOy0g3xDIvPH0jJzEDRMqv7ljl4LGb2x8v5WGtM5usTwMB9ScQAnHNnMLcXId9Q3r1TARMtBr_-0JzoLQd1PZNbZmivVMJtzwJazHcy_7xVfYOt0jXLXKhCM3E8xR_6eyzj3TBqegFKS3Ruu9o_uBZnTEuHDNYLpzfOjFv9rotbGlBVQPWlqMglYlxZyXRKOZ6xemxTOrVJ5zmeHOJ0THgZYkfiqDbhyGrLVDcnJEZMt1DvajkhwCb3GXawMhER5SwUv7NFBiSl9C1AcqAZwhGFID4o6VnE0Y_d8Eup_Ijw1geA; is_login=1; bm_mi=5C824706D3E2D85788AA5CC0F75A9232~YAAQTXxBF/S0prOXAQAAD4ovAxxfIVksgMcC5Q/NaZraehnasQw9UQfRbcOHitn9bFx/uYC/aohDgpkeYmDHdxQxdimJdU7a+7csiZdI0phR/Y8wCNOI8EcIeViI0ifaqZPgoes6kiGC+++Jml8sBG5MXvr9VWHek1CfU9qoZcLkqiYsZJxjaLb/c0MTg3AjtllAZGik5ok+NFuAq7Ye5WYT2t7ZneN5PRI5cweZ1SpNKJ/bTN3swt3jA0KBXrPhLA0bgc0OW/f8BGykxQuXLXIkxI2lO44ZRMvAz9CrODnCSK9xfUTdmnbtEJmsHRjqgzqFVFwkedmZS0Iyz9c=~1; ak_bmsc=8ABF78DB21FD967BB8A156C4AB5E52BF~000000000000000000000000000000~YAAQTXxBFw+1prOXAQAAfI0vAxwblRHYYhxa+M9+iK/oqoTGSGnRbTWD9zRy+sbzSVI7VKqWy3oHMVkhTfObh21QXL3rQi9mupiUIzRwsutV94re+lNPqEB4IYTFiOvW1lpqA4QQKURY18TH7Ck9XVc6rA/CLtHiZeahVLg5dTpeI0mEfAKgwKr8cpqgxjlvGFZ+rRVofw8pPF0fZCJ92wqhLZVaiacaIORCMGQh9usK3nuyR1rYos4RRI2nKKxGxke+v+yRJrel7baP2L5fgDCUoWYbLCB2Q/J84sFz2Y24Z3/SDDnV6qfFA18q3Vqrov5hXXE1Vt4ooW4x3Elu+GgnUxowRaVcZNosPhnnkWb1VSyFJIRHi60Gqovlgh5yzXwLvZs0NBVxrkGhrlKITBl/XXc8e3eue1ZdhhYZHM7V69+tUtO+KPoLGjbkkmyIfpxA2jIpyT5/6/wSMJc9YgoRqmGE+s77/oXZ+c4utRNkYKmlBkibSgceB/TmwwE=; ACTIVE=1752400114; HOWTORT=cl=1752400126160&r=https%3A%2F%2Fwww.naukri.com%2Fmnjuser%2Finbox&nu=https%3A%2F%2Fwww.naukri.com%2Fmyapply%2Fhistorypage&ul=1752400126196&hd=1752400126316; bm_sv=DDD12591E7F6333E61CC6D82B0697EB3~YAAQTXxBF/a7prOXAQAAYUcwAxzcUFE46n9ZmKnF4BDPxd/b3WDlvv7zfdrwQfzYsTHoznDlaNbw5Rh1eklmOgQKGeUXvmZS6cOklwYYqAMn10E2IORSsxspsjokpbzNU0e38ZfhsuhDLey1Pig+4jq/Kz5+X+OYxz6ezldtlbjxYGoeo4j0YqtMqLt7MEJ8TzCMv8GnwcZojsdZ04moCHnEiZf6jcas3EPXptk7yxq4FoOoLxI1KWAuF2UkKN7lxg==~1; _ga_K2YBNZVRLL=GS2.1.s1752400106$o12$g1$t1752400164$j2$l0$h0' \
  -H 'origin: https://www.naukri.com' \
  -H 'priority: u=1, i' \
  -H 'referer: https://www.naukri.com/mnjuser/profile?id=&altresid&action=modalOpen' \
  -H 'sec-ch-ua: "Not(A:Brand";v="99", "Google Chrome";v="133", "Chromium";v="133"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'systemid: Naukri' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36' \
  -H 'x-http-method-override: PUT' \
  -H 'x-requested-with: XMLHttpRequest' \
  --data-raw '{"profile":{"resumeHeadline":"'"new_headline"'"},"profileId":"3a0bf38be7d564d4cfdaea70808e1911bec785d932e2c3ee113f03cb115cb3db"}'