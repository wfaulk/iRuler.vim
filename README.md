iRuler
======
Remote editing of F5 BigIP iRules with vim

Getting Started
---------------
Use [Vundle](https://github.com/gmarik/Vundle.vim) or
[Pathogen](https://github.com/tpope/vim-pathogen/) to load
http://github.com/wfaulk/iRuler.vim

* For Vundle, add `Plugin 'wfaulk/iRuler.vim'` to the appropriate location
in your `.vimrc`.

* For Pathogen:

        cd ~/.vim/bundle/<br />
        git clone http://github.com/wfaulk/iRuler.vim

Once installed, inside vim, run `:F5Connect` to connect to your BigIP, then run
`:F5GetRules` to get a list of rules.  (They will be folded; use `zo`
to open folds.)  Move your cursor to the iRule you want to edit and
run `:F5OpenRule`.  Edit the rule as desired, then run `:F5PubRule` to
upload your changes.

Important Data Retention Notice
-------------------------------
iRuler does not currently flush your changes to the BigIP's on-disk config.
This will change in the future, but make sure you do it yourself by hand for
now. The easiest way is probably to click any "Update" button in the BigIP's
web interface.

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
