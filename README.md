# Automate Ubuntu Backups
Automate Ubuntu backups, including aptitude packages, vim config, and encrypted keys.

## Getting started

To backup, choose a directory where you want to save your files (e.g. Dropbox, Google Drive, or any folder to then compress and store safely) and run:
```
$ sh backup.sh path/to/backup/dir
```
Example:
```
$ sh backup.sh ~/Dropbox/Backups/2016-31-01/
```

You'll be promted for a passphrase to encrypt your ssh keys


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
