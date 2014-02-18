require 'rspec'
require_relative '../lib/csv2dot_helper.rb'


describe 'Csv2Dot' do

  before do
    @in = "one,two,three,four\n0,1,1,0\n0,0,0,1\n0,0,0,0\n1,0,0,0\n"
    @filename = "in.csv"
    @out = <<end_file
digraph test_graph {
one -> two;
one -> three;
two -> four;
four -> one;
}
end_file

  end

  it 'should convert adjecency matrix' do

    File.stub(:open).with(@filename,{:universal_newline=>false}) { StringIO.new(@in) }
    result = Csv2dotHelper.parse(@filename, :digraph, "test_graph")
    result.should eq(@out)

  end
end