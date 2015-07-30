Git Logs Service
================

A service that indexes git logs

Dependencies
------------

* Ruby 2.1.5
* Bundler

Installation
------------

TODO

Usage
-----

TODO

Test data
---------

Use this magic spell:

    git log --pretty=format:'{"sha":"%h", "message": "%s", "commit_date": "%ai", "author": {"name": "%an", "email": "%ae" }}' | while read line; do curl -X POST -H 'Content-Type: application/json' -d $line 127.0.0.1:3001/commits ; done

