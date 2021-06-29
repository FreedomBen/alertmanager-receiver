# alertmanager-receiver

This is a simple PoC project that takes pieces from a number of other projects and connects them together to act as a [webhook receiver for Alert Manager in OpenShift 4](https://docs.openshift.com/container-platform/4.6/monitoring/managing-alerts.html).

## Why would I want to use this?

If you want to log all the alerts that fire in Alert Manager, this is a simple way to do that.  It is a simple Sinatra app that just waits for alerts to come in and prints them to the console.  This output can then be picked up by the [EFK stack](https://docs.openshift.com/container-platform/4.7/logging/config/cluster-logging-collector.html) or another service like Splunk.

## Why not use nginx?

Initially I did, but then I realized I wanted to transform the JSON from Alert Manager a bit.  I also realized I might want to persist it to a database.  For these reasons having it in Sinatra is easier.

## Sounds good, how do I use it?

Instructions coming soon.
