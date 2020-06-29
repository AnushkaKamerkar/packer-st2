# Changelog

## In Development

## v3.2.0-20200429
* Coditation 3.2.0 released

## v3.1.0-20190701
* Coditation 3.1.0 released

## v3.0.1-20190529
* Coditation 3.0.1 released

## v3.0.0-20190426
* Coditation 3.0.0 released

## v2.10.4-20190315
* Coditation 2.10.4 released


## v2.10.3-20190308
* Upgrade Ubuntu to `16.04.06` (#46)

## v2.10.3-20190307
* Coditation 2.10.3 released

## v2.10.2-20190223
* Coditation 2.10.2 released

## v2.10.1-20181220
* Coditation 2.10.1 released

## v2.9.2-20181219
* Coditation 2.9.2 released

## v2.10.0-20181215
* Coditation 2.10.0 released

## v2.9.0-20180925
* Use correct version of linux-headers
* Upgrade from Ubuntu 16.04.4 to 16.04.5

## v2.9.0-20180921
* Coditation 2.9.0 released

## v2.8.1-20180717
* Coditation 2.8.1 released

## v2.8.0-20180710
* Coditation 2.8.0 released

## v2.7.2-20180614
* Use /30 mask for private network (access via IP `10.10.10.10`). (#41)

## v2.7.2-20180523
* Add Vagrant port-forwarding rule to access st2web via `https://127.0.0.1:9000/` as a fallback (#36)

## v2.7.2-20180516
* Coditation 2.7.2 released

## v2.7.1-20180514
* Coditation 2.7.1 released
* Fix Vagrant Cloud deploy step, caused by wrong 'file not exist' error (#31)
* Expose Coditation Vagrant access via IP `10.10.10.10` (#29)
* Extract from `CIRCLE_TAG` and pin `ST2_VERSION` & `BOX_VERSION` on release (#33)

## v2.7.1-20180511
* Add continuous integration (#19)
* Deploy tagged builds to GitHub releases (#25)
* Add `ST2_VERSION` and `BOX_VERSION` ENV vars for version pinning (#26)
* Create custom [`vagrant-cloud-standalone`](https://github.com/armab/packer-post-processor-vagrant-cloud-standalone) Packer post processor, `make deploy` to Vagrant Cloud (#27)

## v2.7.1-20180507
* Initial release with minimally working Coditation Vagrant box, created from Packer build pipeline
* Add first system Vagrant-focused integration tests, tie them with the build (#5)
* Add custom MOTD/welcome message after logging in to console (#15)
* Add Coditation infrastructure integration tests, ship with new `st2-integration-tests` executable available to user (#20)
* Install Virtualbox guest additions (#22)
