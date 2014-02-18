
require 'thor'
require_relative '../lib/csv2dot_helper.rb'

class Csv2dot < Thor

  desc "digraph CSV_FILE GRAPH_NAME", "Create a digraph called GRAPH_NAME from adjacency matrix in CSV_FILE"
  def digraph(csv_file,graph_name)
    result = Csv2dotHelper.parse(csv_file,:digraph,graph_name)
    puts result
  end


end


Csv2dot.start(ARGV)