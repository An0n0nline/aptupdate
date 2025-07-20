# 🔄 APT Update & Maintenance Script

**The ultimate Swiss Army knife for Debian/Ubuntu system maintenance**  
*(Because `apt update && apt upgrade` is just the beginning...)*

## 🚀 Features
- **21 one-touch maintenance operations** (from basic updates to "percussive maintenance")
- **Fixes common issues** (broken packages, held packages, missing deps)
- **Automates cleanup** (autoremove, autoclean, cache purging)
- **Safety checks** (source verification, upgradable package listing)
- **Recovery tools** (DPKG repair, conflict resolution)

## 🛠️ Usage
```bash
# Download and run (requires root):
sudo wget https://raw.githubusercontent.com/An0n0nline/aptupdate/main/update.sh -O /usr/local/bin/aptupdate
sudo chmod +x /usr/local/bin/aptupdate
sudo aptupdate

📜 Menu Options
#	Command	What It Does
1	UPDATE	Basic package list refresh
3	UPDATE & UPGRADE	Standard system update
12	FULL SYSTEM REFRESH	Update+upgrade+clean+fix (recommended)
15	THROW A WRENCH...	Kernel source prep
16	DIGITAL PERCUSSIVE...	Adds build tools + updates
21	FIX CONFLICTS	Nuclear option for broken systems

💡 Pro Tips
Run option 12 weekly for maintenance
Use option 6 before upgrading to check held packages
Option 21 fixes most "Unable to correct dependencies" errors
The script automatically suggests returning to menu

🤔 Why This Exists
Because we've all typed:
sudo apt update && sudo apt upgrade -y && sudo apt --fix-broken install && sudo apt autoremove -y &&...
...and then realized we forgot autoclean.

⚠️ Requirements
Debian/Ubuntu based systems
Root access (most operations require sudo)
Basic terminal knowledge

"Digital Percussive Maintenance" mode may not actually involve hammers. 🔨😉
