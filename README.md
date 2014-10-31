iRuler
======
Remote editing of F5 BigIP iRules with vim

Getting Started
---------------
Use [Vundle](https://github.com/gmarik/Vundle.vim) or
[Pathogen](https://github.com/tpope/vim-pathogen/) to load
http://github.com/wfaulk/iRuler.vim

Inside vim, run `:F5Connect` to connect to your BigIP, then run
`:F5GetRules` to get a list of rules.  (They will be folded; use `zo`
to open folds.)  Move your cursor to the iRule you want to edit and
run `:F5OpenRule`.  Edit the rule as desired, then run `:F5PubRule` to
upload your changes.

Notes
-----
iRuler requires a python-enabled vim.

iRuler currently includes the python modules pycontrol and suds.  This
may change to a prerequisite, but I personally had trouble with keeping
them elsewhere non-global and having MacVim find them.

Credits
-------
The majority of the functional code is taken directly from
[vim-iruler](https://devcentral.f5.com/d/vim-based-irule-editor)
but updated to work better as a Pathogen/Vundle plugin.