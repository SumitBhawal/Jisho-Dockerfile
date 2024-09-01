# Jisho-Dockerfile
Necessary Dockerfile for Jisho app
Folder structure :
src/
├── dockerfile/
│   ├── composer
│   ├── nginx
│   └── php
├── env/
│   └── mysql.env
├── Jisho/
│   └── (Laravel app files and directories)
├── kuromoji-service/
│   ├── node_modules/
│   ├── index.js
│   ├── package.json
│   └── package-lock.json
├── nginx/
│   └── nginx.conf
└── docker-compose.yml
