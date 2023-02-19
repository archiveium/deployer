# Getting Started

1. Clone this repository - `git clone https://github.com/archiveium/deployer.git`
1. Navigate to newly created directory - `cd deployer`
1. Create `.env` based on values from [.env.example](https://github.com/archiveium/app/blob/main/.env.example) (Refer to comments in file for more information)
1. Create `jobber_production.json` based on values fom [default.json](https://github.com/archiveium/jobber/blob/main/config/default.json)
1. Bring up the stack - `docker-compose up -d`