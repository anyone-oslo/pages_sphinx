# PagesSphinx

Adds fulltext search support to Pages using ThinkingSphinx.

## Getting started

To get started, add it to your Gemfile:

```ruby
gem "pages_sphinx"
```

Next, run the installer to generate the configuration file:

```sh
bin/rails g pages_core:install
```

You can now start the process and index your content:

```ssh
bin/rails ts:configure
bin/rails ts:start
bin/rails ts:generate
```

## License

Pages is licensed under the
[MIT License](http://www.opensource.org/licenses/MIT).
