command! -bang -nargs=* -complete=file Ag call ag#search(<f-args>)
