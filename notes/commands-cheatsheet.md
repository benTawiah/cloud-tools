# Linux Commands Cheat Sheet for Cloud Engineers

## Navigation
| Command | Description | Example |
|---------|-------------|----------|
| `pwd` | Print current directory | `pwd` |
| `ls -la` | List all files with details | `ls -la /etc` |
| `cd` | Change directory | `cd /var/log` |
| `tree` | Show directory structure | `tree ~/cloud-tools` |

## File Operations
| Command | Description | Example |
|---------|-------------|----------|
| `touch` | Create empty file | `touch newfile.txt` |
| `mkdir -p` | Create directory (with parents) | `mkdir -p project/src/config` |
| `cp` | Copy files | `cp file.txt backup.txt` |
| `mv` | Move or rename | `mv old.txt new.txt` |
| `rm` | Delete file | `rm unwanted.txt` |
| `cat` | Display file contents | `cat config.yaml` |
| `less` | Scroll through large files | `less /var/log/syslog` |
| `head` | Show first N lines | `head -20 app.log` |
| `tail -f` | Stream live log output | `tail -f /var/log/syslog` |
| `find` | Search for files | `find / -name "*.log"` |
| `grep` | Search inside files | `grep "error" app.log` |

## Permissions
| Command | Description | Example |
|---------|-------------|----------|
| `chmod` | Change file permissions | `chmod 755 script.sh` |
| `chown` | Change file owner | `chown user:group file` |

## Process Management
| Command | Description | Example |
|---------|-------------|----------|
| `ps aux` | List all processes | `ps aux` |
| `top` | Live process monitor | `top` |
| `htop` | Better process monitor | `htop` |
| `kill` | Stop a process | `kill 1234` |
| `df -h` | Check disk space | `df -h` |
| `free -m` | Check memory | `free -m` |

## Packages
| Command | Description | Example |
|---------|-------------|----------|
| `sudo apt update` | Update package list | `sudo apt update` |
| `sudo apt install` | Install software | `sudo apt install git -y` |
| `which` | Find where a tool is | `which python3` |

## Text Processing
| Command | Description | Example |
|---------|-------------|----------|
| `echo` | Print text | `echo "hello"` |
| `grep -r` | Search recursively | `grep -r "TODO" ~/project/` |
| `wc -l` | Count lines | `wc -l access.log` |
| `awk` | Process text columns | `awk '{print $1}' file` |