csv2dot
=======

Adjacency matrix in CSV to DOT

## Input

Expected format of CSV is as follows

For an adjacency matrix for N nodes:

- 1st row - Name of the nodes on the first row
- Ith row (where I is 2 to N) - Adjacency list for node I-1

### Example

in.csv:

	one,two,three,four
	0,1,1,0
	0,0,0,1
	0,0,0,0
	1,0,0,0

To DOT format:	

	$ ./csv2dot digraph in.csv test_graph > out.dot

Use ```dot``` to convert to  output format (here PNG):

	$ dot out.dot -Tpng -O

Result:

![](https://raw2.github.com/karlll/csv2dot/master/out.png)

## Usage

	$ ./csv2dot
	
	Commands:
  	csv2dot.rb digraph CSV_FILE GRAPH_NAME  # Create a digraph called GRAPH_NAME from adjacency matrix in CSV_FILE
  	csv2dot.rb help [COMMAND]               # Describe available commands or one specific command
  	




