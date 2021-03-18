This is just a convenient way to print source, target and pred files.

```
paste source_test.txt target_test.txt brnn_glove_pred.txt | awk -F'\t' '{printf("%-50s %s %s\n",$1,$2,$3)}' | grep "news rumor"
```
