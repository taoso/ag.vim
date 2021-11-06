# ag

Simple plugin for ag/rg.

Only support neovim now. All PRs are welcome.

# Usage

```viml
" search Ag
call ag#search('Ag\b')
" or
:Ag Ag\b
" only search markdown
:Ag Ag\b --md
" only search markdown for rg
:Ag Ag\b -t md
```

# Use rg

```viml
let g:ag_cli = rg
```

# todo

- [ ] support vim
