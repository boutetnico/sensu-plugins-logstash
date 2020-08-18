## Sensu-Plugins-logstash

[![Gem Version](https://badge.fury.io/rb/sensu-plugins-logstash-boutetnico.svg)](https://badge.fury.io/rb/sensu-plugins-logstash-boutetnico.svg)
[![Sensu Bonsai Asset](https://img.shields.io/badge/Bonsai-Download%20Me-brightgreen.svg?colorB=89C967&logo=sensu)](https://bonsai.sensu.io/assets/boutetnico/sensu-plugins-logstash)

## This is an unofficial fork

This fork is automatically tested, built and published to [RubyGems](https://rubygems.org/gems/sensu-plugins-logstash-boutetnico/) and [Bonsai](https://bonsai.sensu.io/assets/boutetnico/sensu-plugins-logstash).

## Functionality

## Files
 * bin/handler-logstash

## Usage

**handler-logstash**
```
{
  "logstash": {
    "endpoint": [
      {
        "address": "host1.example.tld",
        "port": 5000,
        "output": "redis"
      },
      {
        "address": "logstash-host1.example.tld",
        "port": 5001,
        "output": "udp"
      },
      {
        "address": "logstash-host2.example.tld",
        "port": 5002,
        "output": "tcp"
      }
    ],
    "list": "logstash",
    "type": "sensu-logstash",
    "custom": {
      "thisFieldWillBeMergedIntoTheTopLevelOfOutgoingJSON": {
        "metadata": "some metadata",
        "moreMetadata": 42
      }
    }
  }
}
```

Supported output types: `redis`, `tcp`, `udp`

## Installation

[Installation and Setup](http://sensu-plugins.io/docs/installation_instructions.html)

## Notes
