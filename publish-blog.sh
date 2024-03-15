#!/bin/bash

./blog-csv-generator.sh
./blog-coppier.sh
ssh  root@167.99.158.224 "/root/code/blog-loader.sh"
