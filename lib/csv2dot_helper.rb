require 'csv'

class Csv2dotHelper
  def self.parse(csv_file, graph_type, graph_name)
    node_str = ""
    rows = CSV.read(csv_file)

    @node_names = rows.shift
    rows.each_with_index do |row,r_idx|

      row.each_with_index do |cell,c_idx|

        case cell
          when "1"
            node_str << "#{@node_names[r_idx]} -> #{@node_names[c_idx]};\n"
        end
      end


    end
    "#{graph_type.to_s} #{graph_name} {\n#{node_str}}\n"
  end

end