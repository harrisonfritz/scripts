#!/bin/bash
export pgConnP="asdf"
cd ~/github/db-go
go run pg-connect.go
cd ~/github/my-blog
ng serve

