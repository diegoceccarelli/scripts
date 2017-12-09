# Productivity scripts

Not really taylored for public reuse, but take a look if interested.

## Vim

Adds all sorts of stuff. Uses Vundle for plugin management, have to install
it separately. 

```bash
# Clone the repository to your home folder for this to work out of box. 
# I should really make it location independent...
ln -s ~/scripts/vim/.vimrc ~/.vimrc
```

.vimrc is split into several parts.

1. `settings-base.vim` -- standard vim settings
2. `settings-mappings.vim` -- keyboard mappings
3. `settings-syntastic.vim` -- was meaningful when I actually used syntastic, add
compiler options there.
4. `settings-syntax.vim` -- some syntax highlighting overrides
5. `.vimrc` -- includes aforementioned files + plugin settings, and random ad-hoc stuff.

