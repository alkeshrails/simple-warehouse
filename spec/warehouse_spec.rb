require 'warehouse'
require 'emptywarehouse'
require 'store'
require 'rails_helper'


RSpec.describe Warehouse, 'warehouse' do
    let(:a) { Emptywarehouse.new(W: 0, H: 0) }
    let(:b) { Store.new(X: 2 , Y: 3, W: 1, H: 4, P:'a' ) }
    
    context 'empty warehouse' do
        it 'should be create crate' do
            expect(Warehouse.new.create_warehouse(b.W,b.H)).to eql("#{b.W} x #{b.H}")
          end
    end

    # context 'remove crate' do
    #     before { Warehouse.new.remove_crate(b.X , b.Y ) } 
    #     it     { is_expected.to eq("removed crate x and y") }
    # end

    context 'location warehouse' do
        it 'show location' do
            expect(Warehouse.new.loaction_wherehouse(b.W,b.H, b.P)).to eql("#{b.W} x #{b.H}")
          end
    end
    
end