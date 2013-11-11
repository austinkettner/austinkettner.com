---
title: Heroku SSL w/ custom certificate  
date: 2013-11-10  
image: http://d.pr/i/EhQe+
layout: post
---

Heroku does an great job of providing you information on how to do anything and everything. However, sometimes this information is not provided in a clear and concise manor. This realization rang true today when I was implementing an SSL Endpoint w/ a custom certificate.

Below are the steps in a clean and concise format. These steps are for generating a custom SSL Certificate (non-authority verified) and uploading them to a Heroku App of your choice.

It assumes your are in a Heroku-recognized working directory. If not, add `--app app-name' to the end of your commands.

### Step 1 - Generate pass-key
`$ openssl genrsa -des3 -passout pass:x -out server.pass.key 2048`

### Step 2 - Generate a no-pass-key
`$ openssl rsa -passin pass:x -in server.pass.key -out server.key`

### Step 3 - Removing the old pass-key
`$ rm server.pass.key`

### Step 4 - Generate CSR
`$ openssl req -new -key server.key -out server.csr + answer questions`

### Step 5 - Generate CRT
`$ openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt`

### Step 6 - Provision Heroku SSL Addon
`$ heroku addons:add ssl:endpoint`

### Step 7 - Upload Certificate to SSL Addon
`$ heroku certs:add server.crt server.key --app glances-website-staging`