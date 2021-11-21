#!/bin/bash
cd ~/Downloads
rm -f ./blogs.csv
ls
mv 'Blogs - Sheet1.csv' blogs.csv
scp ~/Downloads/blogs.csv root@167.99.158.224:/tmp
