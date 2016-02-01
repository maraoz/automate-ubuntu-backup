#! /bin/bash
# restore script

# parameter checks
if [ -z "$1" ]
then
  echo "No backup directory supplied. Usage:"
  echo "  $ sh restore.sh /path/to/backup/dir"
  exit 1
fi

BACKUP_DIR=$1

# restore backup directory
cp -a $BACKUP_DIR/automatic/. ~

# restore aptitude packages
# source: https://askubuntu.com/questions/9135/how-to-backup-settings-and-list-of-installed-packages

sudo apt-key add ~/repo.keys
sudo cp -R ~/sources.list* /etc/apt/
sudo apt-get update
sudo apt-get install dselect
sudo dpkg --set-selections < ~/package.list
sudo apt-get dselect-upgrade


# restore vim config
# already done!


# restore encrypted private keys and ssh config
gpg ~/ssh-directory.tar.gz.gpg
tar -zxf ~/ssh-directory.tar.gz -C ~

# cleanup ~
rm ~/ssh-directory.tar.gz.gpg ~/ssh-directory.tar.gz
rm -rf ~/sources.list*
rm ~/package.list
rm ~/repo.keys




