# Poke aggregation scripts

Poke checkers emit a huge amount of check results in the Warp10 instance.

This aggregations scripts make it easier for end users to understand what happens.
It can also compute alerting series.

## Add an aggregation

This repository should only contains folders named with un integer.
The integer represents the periodicity in ms.

Under folders, add WarpScripts files.
Each file in folders must have the **mc2** extension.

## Deploy it

This repository must be cloned under the configured runner path.
You can get with the key **runner.root** in Warp10 configuration file.

## Automation

You can use [poke-me](https://github.com/warp-poke/poke-me) project to automaticaly deploy your aggregations on push.

* Install poke-me on a Warp10 runner instance
* Add the poke-me public key into __Settings > deploy keys__
* Add a Webhook to call poke-me on each Git push

## Repo tree

```sh
/
    2000/
        now.mc2         # run every 2 seconds
    10000/
        aggreg1.mc2     # run every 10 seconds
```
