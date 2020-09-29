At times we accidentally create way too large files and commit them. This apparently removes it from the whole history.

```
git filter-branch --index-filter "git rm -rf --cached --ignore-unmatch path_to_file" HEAD
```
