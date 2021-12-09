command! -bang -nargs=* -complete=file Ag call ag#search(<q-args>)
