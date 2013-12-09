## Seed
Seed is a bare-bones Sinatra app that can be used as a template for making better Sinatra apps.

It comes with
 * [Sprockets](https://github.com/sstephenson/sprockets): to enable direct development in haml, sass and coffeescript.
 * [LiveReload](https://github.com/guard/guard-livereload): automatically reloads pages during development to speed up debugging


### Installation

Run with

    bundle exec rackup

### Developing
To automatically reload pages when you make changes to its source code, run in a seperate console:

    bundle exec guard
