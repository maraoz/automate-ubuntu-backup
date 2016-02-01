#! /bin/bash
# backup script

# parameter checks
if [ -z "$1" ]
then
  echo "No backup directory supplied. Usage:"
  echo "  $ sh backup.sh /path/to/backup/dir"
  exit 1
fi

BACKUP_DIR=$1

TMP_DIR=$(mktemp -d)
echo "Created temporary backup directory at $TMP_DIR"

# backup aptitude packages
# source: https://askubuntu.com/questions/9135/how-to-backup-settings-and-list-of-installed-packages

dpkg --get-selections > $TMP_DIR/package.list
cp -R /etc/apt/sources.list* $TMP_DIR
apt-key exportall > $TMP_DIR/repo.keys
echo "Copied aptitude packages, sources and repo keys"


# backup vim config

cp ~/.vimrc $TMP_DIR
echo "Copied vim config file"


# backup encrypted private keys and ssh config
SSH_CONFIG="$TMP_DIR/ssh-directory.tar.gz"
cd ~
tar -zcf $SSH_CONFIG .ssh
cd -
echo "Please enter password for encrypting ~/.ssh/ directory"
gpg -c $SSH_CONFIG
rm $SSH_CONFIG
echo "Copied encrypted copy of ~/.ssh"


# backup into directory
cp -r $TMP_DIR $BACKUP_DIR/automatic

