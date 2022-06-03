class Warehouse 
    attr_reader :X
    attr_reader :Y
      def create_warehouse(w,h)
          @crate_width = w
          @crate_height = h
          # m = Matrix.build(w, h) {|row, col| col - row }
          return "#{w} x #{h}"
        end 
  
      def remove_crate(x,y)
          @crate_x = x
          @crate_y = y
          a = @crate_x.to_s.split('').map(&:to_i)
          b = @crate_y.to_s.split('').map(&:to_i)
          if a.delete(@crate_x) == 'nil' && b.delete(@crate_y) == 'nil'
            return "removed crate x and y" 
          end  
        end
  
      def loaction_wherehouse(w, h, p)
        if !p.empty?
          if (h<w || w<h)
            for  i in 1..w do
              for j in 1..h do 
                return "#{w} x #{h}"
              end
            end
          end
        end
      end
  
      def view_warehouse()
  
      end
  
  end