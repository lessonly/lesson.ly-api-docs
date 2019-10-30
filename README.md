Lessonly API Docs
========

The docs are built with [Slate](https://github.com/tripit/slate).

To view them locally, run:

`$ bundle exec middleman`

The documentation will be available at `localhost:4567`

To deploy, commit your changes and run:

`$ rake publish`

The changes will be immediately available at [docs.lessonly.com](http://docs.lessonly.com). Don't forget to `$ git push` your changes as well.



# Build

`bundle exec middleman build`

# Publish

## Push new files

`AWS_ACCESS_KEY_ID=<redacted> AWS_SECRET_ACCESS_KEY=<redacted> bundle exec middleman s3_sync`

## Invalidate Cloudfront

`AWS_ACCESS_KEY_ID=<redacted> AWS_SECRET_ACCESS_KEY=<redacted> bundle exec middleman invalidate`