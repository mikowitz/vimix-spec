# VimixSpec

[ESpec](https://github.com/antonmi/espec) integration with [vimux](https://github.com/benmills/vimux),
via [vimix](https://github.com/spiegela/vimix)

## Installation

Put the contents of this directory into your pathogen bundle.

## Usage

VimixSpec provides a number of available commands for common Mix tasks, so that you never have to leave your Vim
session.  Key mappings are disabled by default, but can easily be enabled by setting the following in your .vimrc:

```vim
let g:vimix_spec_map_keys = 1
```

See the documentation for [vimix](https://github.com/spiegela/vimix) for additional configuration

## Commands

Here are the key mappings for your reference:

| Key Map       | Vim Command          | Mix Command
| ------------- | -------------------- | -----------
| \<Leader\>es  | VimixSpecAll         | spec
| \<Leader\>ef  | VimixSpecCurrentFile | spec \<spec file\>
| \<Leader\>el  | VimixSpecCurrentLine | spec \<spec file\>:\<spec line\>

## Requirements

* [vimux](https://github.com/benmills/vimux)
* [Elixir Language](https://github.com/elixir-lang/elixir)
* [vimix](https://github.com/spiegela/vimix)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
