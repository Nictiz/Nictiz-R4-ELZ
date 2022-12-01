@echo off

SET ntsCredentialsFlag=
if exist qa/nts-credentials.env (
  SET ntsCredentialsFlag=--env-file qa/nts-credentials.env
)

echo Point your webbrowser to http://localhost:9000
docker-compose %ntsCredentialsFlag% -f docker-compose.yml up %*
