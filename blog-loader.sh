#!/bin/bash
cd ~/Downloads
rm -f ./blogs.csv
ls
mv 'Blogs - Sheet1.csv' blogs.csv
psql -d postgres -c '\c blog' -c 'select * from posts' -c "copy posts(Post_id,Title,Content,Author,Description,Publication_Date) from '/home/windingroad100hf/Downloads/blogs.csv' delimiter ',' csv header;"
rm -f ~/Downloads/blogs.csv
