### Stupid hack to get tab completion in Mac OS X 10.9.x
### See http://stackoverflow.com/questions/7116038/python-tab-completion-mac-osx-10-7-lion

import readline
import rlcompleter
if 'libedit' in readline.__doc__:
    readline.parse_and_bind("bind ^I rl_complete")
else:
    readline.parse_and_bind("tab: complete")
