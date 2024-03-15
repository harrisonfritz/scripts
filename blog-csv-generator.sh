#!/bin/bash

# Add the .csv extension to the filename
filename="blogs.csv"

# Prompt the user for the data to include in the CSV file
echo "Enter data for each column, separated by commas:"
read -p "Post_id: " post_id
read -p "Title: " title
read -p "Author: " author
read -p "Description: " description
read -p "Publication_date: " publication_date
read -p "Card_image_url: " card_image_url
read -p "Enter the path to the file containing the content: " content_file_path

# Read the contents of the file into the content variable
content=$(cat "$content_file_path")

# Replace double quotes with escaped double quotes in the content variable
content="${content//\"/\\\"}"

# Create the CSV file with the field names and user input
echo "Post_id,Title,Content,Author,Description,Publication_date,Card_image_url" > "$filename"
echo "$post_id,$title,\"$content\",$author,\"$description\",$publication_date,$card_image_url" >> "$filename"

# Print a success message
echo "CSV file created successfully with user input: $filename"
cp -f ./blogs.csv ~/Downloads/blogs.csv

