##Memory usage finder. Finds memory usage for all processes with particular name

This script showing memory usage by process name or process execution command

For example if you want to know how much memory eat java

    $ ./mem_stat java
	==========

	RSS - resident set size, the non-swapped physical memory that a task has used: 
	1606 Mb or 1.56836 Gb


If you want to know how much memory eat google-chrome

    $ ./mem_stat chrome
	==========

	RSS - resident set size, the non-swapped physical memory that a task has used: 
	3777.9 Mb or 3.68936 Gb


More precise process name would produce more precise memory usage
