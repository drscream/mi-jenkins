# Changelog

## 2.32.1

* Support delegate datasets for Jenkins [Thomas Merkel]
* Switch to the newest Jenkins version 2.32.1 [Thomas Merkel]
* Merge branch &#x27;master&#x27; of https://github.com/datasets-at/mi-jenkins.
  [Thomas Merkel]
* Drop obsolete host variable - fixes #2. [Daniel Malon]

## 0.1.626

* Switch to newest core-base image. [Thomas Merkel]
* Update to newest jenkins version. [Thomas Merkel]
* Rename to core-jenkins and update motd. [Thomas Merkel]

## v0.1.6

* update to new jenkins version 1.600. [Thomas Merkel]
* Use a delegate dataset for jenkins home to store all information also after reprovision. [Thomas Merkel]

## v0.1.2

* bump image version. [Daniel Malon]
* only force ssl if metadata is provided. [Daniel Malon]

    still use nginx as a reverse proxy for pure http

* upgrade to jenkins v1.584. [Daniel Malon]
* Update to new version 1.583 of jenkins. [Thomas Merkel]
* Add `proxy_redirect` for jenkins, it still require a config of jenkins itself. [Thomas Merkel]
* Fix missing t for default. [Thomas Merkel]
* Add some logging information and enable nginx by default. [Thomas Merkel]
* Fix folder path for the nginx ssl certificate. [Thomas Merkel]
* Our build environment require a base image. [Thomas Merkel]

    The base64 image (14.2.0) has been selected as base image for the
    moment.

* Use nginx for ssl proxy to jenkins to make system more secure. [Thomas Merkel]

    Install and configure nginx as ssl proxy for jenkins. The ssl
    certificate will be automatically generated if no mdata variable
    nginx_ssl is set. Jenkins will only listen on localhost, so only a
    secure connection via nginx is possible. The version of the mibe image
    has been increased.

* Initial import. [Daniel Malon]

