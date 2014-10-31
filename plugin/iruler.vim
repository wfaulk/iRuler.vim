" iRuler        provides remote editing for F5 BigIP iRules
" Author:       wfaulk
" HomePage:     https://github.com/wfaulk/iRuler.vim
" Version:      0.2.1

" Most everything in autoload/iruler.vim

com! -nargs=? F5Connect     call iruler#Connect(<args>)
com! -nargs=? F5PubRule     call iruler#PubRule(<args>)
com! -nargs=0 F5GetRules    call iruler#GetRules(<args>)
com! -nargs=0 F5OpenRule    call iruler#OpenRule(<args>)
com! -nargs=0 F5NewRule     call iruler#NewRule(<args>)
com! -nargs=1 F5Partition   call iruler#Partition(<args>)
com! -nargs=0 F5WriteConfig call iruler#WriteConfig(<args>)
com! -nargs=1 F5ApplyRule   call iruler#ApplyRule(<args>)
com! -nargs=+ F5DeleteRule  call iruler#DeleteRule(<args>)

" Original vim-iruler commands
com! Co           F5Connect
com! Connect      F5Connect
com! Sav          F5PubRule
com! Ls           F5GetRules
com! Get          F5OpenRule
com! New          F5NewRule
com! Par          F5Partition
com! Partition    F5Partition
com! Apply        F5ApplyRule
com! Delete       F5DeleteRule
