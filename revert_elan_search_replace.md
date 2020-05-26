At times ELAN's search and replace tool is really convenient, but it can also break things. In the end of the replacement it is possible to save the log file, and I highly recommend doing that.

    cat question_marks.txt | grep -v ":  0" | grep "Number of hits" | sed 's/Number of hits in //g' | sed 's/ :.*//g'
 
This gives a nice list of files that were edited.

Then we use Git to revert those files into a previous stage using the commit hash of wanted commit:

    git checkout abc123 -- path/to/file1.eaf path/to/file2.eaf

The biggest benefit of using ELAN's internal tool is that it leaves really clear diff in version control, which really allows spotting when something goes wrong. Programmatically this can be challenging, as it is far from trivial to format XML so that it just is the same. Of course one can also use some XML aware diff tools, but this is an easy solution.
