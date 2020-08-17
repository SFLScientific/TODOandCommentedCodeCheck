## Check for TODO and commented out code

Check that looks for existing TODO's and commented out code in a repo

Only checks .py and .md files for TODOs, 
and only .py for commented out code

TODO's are considered:
 - `todo`
 - `TODO`
 - `to-do`
 - `FIXME`
 - `fix-me`
 - `fixme`
 - `fix me`
 - `to do`
 - `FIX ME`
 - `TO DO`
 - `XXX`
 - `xxx`
 - `FILLME`
 - `fillme`

Commented out code is any single comment in a `.py` file that could be considered code
E.x.:
```
for item in list:
    #print(item)
    otherlist.append(item)
```
Where the print statement would be considered commented out code

E.x.:
```
for item in list:
    # Add item to the other list
    otherlist.append(item)
```
Where the comment here is not considered commented out code
