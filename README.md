## Memory usage finder. Finds memory usage for all processes with particular name

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


## Quick run

#### Check how much memory eats processes with "chrome" string.

	$ bash <(wget -O - https://raw.githubusercontent.com/c0rp-aubakirov/mem_stat/master/mem_stat.sh) chrome

## Installation

	$ cd ~
	$ git clone https://github.com/c0rp-aubakirov/mem_stat
	$ cd mem_stat
	$ sudo ln -s `pwd`/mem_stat.sh /usr/local/sbin/mem_stat

Now you can use `mem_stat` in terminal


        $ mem_stat java
        ==========                    
                        
        RSS - resident set size, the non-swapped physical memory that a task has used: 
        1606 Mb or 1.56836 Gb         
