#!/bin/bash



#curl -X POST \
#	-H "content-type=application/x-www-form-urlencoded" \
#	-H "Cookie=oracle-rfCookieConsent=allow; j" \
#	-H "" \
#	-H "" \
#	-H "" \
#https://events.rainfocus.com/api/search

curl 'https://events.rainfocus.com/api/search' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0' -H 'Accept: */*' -H 'Accept-Language: de,en-US;q=0.7,en;q=0.3' --compressed -H 'Referer: https://events.rainfocus.com/widget/oracle/oow18/catalogcodeone18?' -H 'content-type: application/x-www-form-urlencoded' -H 'rfwidgetid: KKA8rC3VuZo5clh8gX5Aq07XFonUTLyU' -H 'rfapiprofileid: uGiII5rYGOjoHXOZx0ch4r7f1KzFC0zd' -H 'rfauthtoken: eyJhbGciOiJIUzI1NiJ9.eyJ2aWV3RmlsZUFjY2VzcyI6IiIsImxhc3ROYW1lIjoiSG9jaGxlaXRuZXIiLCJjbGllbnRJZCI6IjZCQTI1NDkwM0I2MkM4NzdFMDQwMTQ5MEJEQUI1NzBGIiwiY2FsZW5kYXJSZWFkT25seUFjY2VzcyI6ZmFsc2UsImNvbXBhbnlOYW1lIjoiSG9jaElTIiwiYXR0ZW5kZWVUeXBlQ29kZSI6IiIsImlzcyI6IlJGIiwicmVnaXN0ZXJlZCI6dHJ1ZSwic2NoZWR1bGVyQWNjZXNzIjp0cnVlLCJ1c2VyS2V5IjoiMTQ1NzQ2OTQ2NzY5MzAwMTVhYmsiLCJ0b2tlbiI6IjAxMWI4MGU1NDVjZjQ4NGI0YmU4MmI5ZWQ4NTVhNGQzN2NlOWJkYmM2ZGYyYmVlMzBkZGViYjk2ZDA3Yjc5MDEiLCJmaXJzdE5hbWUiOiJBbmRyZWFzIiwic2NoZWR1bGVBY2Nlc3MiOiIxNTMzMTQzMTkzNDY0MDAxdVFzUSwgMTUzNzgwMjE2NTUxMDAwMWF3RlYiLCJlbmNyeXB0ZWRFbWFpbCI6IkZGQzQ3NTZGMDNDNjQxRTc0MzY3RTk1QTdGMTM3QjgwRkRFOTU3OUJCNDUxNkUxMzBBMDRCMUFGRTRCQ0Q4Qjk3MiIsIm1lZXRpbmdBY2Nlc3MiOiIwIiwiZXhwIjoxNTQwNzAxNTk5LCJ2aWV3QWNjZXNzIjoiMTUzMzE0MzE5MzQ2NDAwMXVRc1EsIDE1MzUzODQwMzUxMzUwMDEydDMxLCAxNTM3ODAyMTY1NTEwMDAxYXdGViIsImlhdCI6MTU0MDYxNTE5OSwiZW1haWwiOiIzZGY2YWFkMmU5ZjAyMWM3MWIzMWIxZGRiMmEyMTM0Yjc3YjNlN2E1ZjU5YjIyMDIyMWJhZDJhZGY2ZjRhMjExIn0.4k8rIRyifVpHKXB6bSqV8KFevt6eQlgFcwus146158A' -H 'origin: https://events.rainfocus.com' -H 'Connection: keep-alive' -H 'Cookie: oracle-rfCookieConsent=allow; s_fid=32B0E7CB811CA0AD-3DBB03580DEC70AB; s_nr=1540506683135-Repeat; rfjwt=eyJhbGciOiJIUzI1NiJ9.eyJ2aWV3RmlsZUFjY2VzcyI6IiIsImxhc3ROYW1lIjoiSG9jaGxlaXRuZXIiLCJjbGllbnRJZCI6IjZCQTI1NDkwM0I2MkM4NzdFMDQwMTQ5MEJEQUI1NzBGIiwiY2FsZW5kYXJSZWFkT25seUFjY2VzcyI6ZmFsc2UsImNvbXBhbnlOYW1lIjoiSG9jaElTIiwiYXR0ZW5kZWVUeXBlQ29kZSI6IiIsImlzcyI6IlJGIiwicmVnaXN0ZXJlZCI6dHJ1ZSwic2NoZWR1bGVyQWNjZXNzIjp0cnVlLCJ1c2VyS2V5IjoiMTQ1NzQ2OTQ2NzY5MzAwMTVhYmsiLCJ0b2tlbiI6IjAxMWI4MGU1NDVjZjQ4NGI0YmU4MmI5ZWQ4NTVhNGQzN2NlOWJkYmM2ZGYyYmVlMzBkZGViYjk2ZDA3Yjc5MDEiLCJmaXJzdE5hbWUiOiJBbmRyZWFzIiwic2NoZWR1bGVBY2Nlc3MiOiIxNTMzMTQzMTkzNDY0MDAxdVFzUSwgMTUzNzgwMjE2NTUxMDAwMWF3RlYiLCJlbmNyeXB0ZWRFbWFpbCI6IkZGQzQ3NTZGMDNDNjQxRTc0MzY3RTk1QTdGMTM3QjgwRkRFOTU3OUJCNDUxNkUxMzBBMDRCMUFGRTRCQ0Q4Qjk3MiIsIm1lZXRpbmdBY2Nlc3MiOiIwIiwiZXhwIjoxNTQwNzAxNTk5LCJ2aWV3QWNjZXNzIjoiMTUzMzE0MzE5MzQ2NDAwMXVRc1EsIDE1MzUzODQwMzUxMzUwMDEydDMxLCAxNTM3ODAyMTY1NTEwMDAxYXdGViIsImlhdCI6MTU0MDYxNTE5OSwiZW1haWwiOiIzZGY2YWFkMmU5ZjAyMWM3MWIzMWIxZGRiMmEyMTM0Yjc3YjNlN2E1ZjU5YjIyMDIyMWJhZDJhZGY2ZjRhMjExIn0.4k8rIRyifVpHKXB6bSqV8KFevt6eQlgFcwus146158A; SESSION=1f2b3127-7b97-4c44-af68-7a77ed8eafa8; JSESSIONID=FEC9457A52745DF1C816FCF6469226CF' -H 'X-Benutzer-Id: 11621' -H 'X-benutzer-login: zdom' -H 'TE: Trailers' --data 'type=session&size=90'
