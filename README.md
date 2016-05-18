# NYU Libraries Errors

[![Build Status](https://travis-ci.org/NYULibraries/nyulibraries_errors.svg?branch=master)](https://travis-ci.org/NYULibraries/nyulibraries_errors)
[![Coverage Status](https://coveralls.io/repos/github/NYULibraries/nyulibraries_errors/badge.svg?branch=master)](https://coveralls.io/github/NYULibraries/nyulibraries_errors?branch=master)
[![Code Climate](https://codeclimate.com/github/NYULibraries/nyulibraries_errors/badges/gpa.svg)](https://codeclimate.com/github/NYULibraries/nyulibraries_errors)

Custom error pages for NYU Libraries Rails applications.

## Usage

Add the following to your Gemfile, and you're set!

```
gem 'nyulibraries_errors', github: 'NYULibraries/nyulibraries_errors'
```

Now visit your application at `localhost:3000/500` or `localhost:3000/404` and you should see the official NYU Libraries error pages.

Currently only `500`, `404` and `422` errors are implemented.

## Customization

To change the language displayed on the various error pages you can simply define the locales in your client application. See the [en.yml](config/locales/en.yml). Note that top-level copy can be overridden by error-specific ones, i.e. if there is a `nyulibraries_errors.500.suggested_links.links` it will be used over the generic `nyulibraries_errors.suggested_links.links`.
