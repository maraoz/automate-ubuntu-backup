# Automate Ubuntu Backups
Automate Ubuntu backups, including aptitude packages, vim config, and encrypted keys.
This is an ongoing project to try to reduce the overhead of formatting my laptop. 

## Getting started

### Backup
To backup, choose a directory where you want to save your files (e.g. Dropbox, Google Drive, or any folder to then compress and store safely) and run:
```
$ sh backup.sh path/to/backup/dir
```
Example:
```
$ sh backup.sh ~/Dropbox/Backups/2016-31-01/
```

You'll be promted for a passphrase to encrypt your ssh keys. Remember it!

### Restore
To restore, download your file from Dropbox, Google Drive, etc. and run:
```
$ sh restore.sh path/to/backup/dir
```
Example:
```
$ sh backup.sh ~/Dropbox/Backups/2016-31-01/
```
You'll be promted for the passphrase you set earlier.


## Roadmap
If you have some time to code it or already have scripts to do this, please create a PR:

- PGP keys
- cloned git projects (maybe with some interface to select what to backup)
- automatically install vim vundle plugins when restoring
- wallpapers
- workspaces config (e.g. I use 3x3 workspaces)
- remember wi-fi passwords

## License 
Code released under the MIT license.

Copyright (c) 2016 Manuel Araoz.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
