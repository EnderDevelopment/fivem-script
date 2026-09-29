# FiveM Script

A versatile FiveM script with client-server interaction and database support.

## Features

- Client-server interaction with ESX framework
- Database support with MySQL for storing and retrieving data

## Requirements

- FiveM server
- ESX framework
- MySQL database

## Installation

1. Download the script files.
2. Place the files in your FiveM server's resources directory.
3. Add the following line to your server.cfg file:

```
start FiveMScript
```

## Usage

### Client-side

- Trigger the client event with data:

```lua
TriggerEvent('fivemscript:clientEvent', { key = 'value' })
```

### Server-side

- Trigger the server event with data:

```lua
TriggerEvent('fivemscript:serverEvent', { key = 'value' })
```

## Configuration

Edit the `config.lua` file to customize the script settings:

```lua
Config = {}

-- Database configuration
Config.Database = {
    TableName = 'fivemscript_data'
}

-- Script settings
Config.Settings = {
    EnableFeature = true,
    FeatureCooldown = 300 -- 5 minutes in seconds
}
```

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=fivem-script&utm_content=bottom) — describe it in one sentence and get the full source code.