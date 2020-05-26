At times ELAN's search and replace tool is really convenient, but it can also break things. In the end of the replacement it is possible to save the log file, and I highly recommend doing that.

    cat question_marks.txt | grep -v ":  0" | grep "Number of hits" | sed 's/Number of hits in //g' | sed 's/ :.*//g'
 
This gives a nice list of files that were edited.

Then we use Git to revert those files into a previous stage using the commit hash of wanted commit:

    git checkout abc123 -- path/to/file1.eaf path/to/file2.eaf

