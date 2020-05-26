At times an external hard drive tends to get annoying stuck, and I don't want to force quit it either. Something along these lines helped.

```
lsof +D "/Volumes/hard_drive"
qlmanage -r
killall Finder
killall Spotlight
```
