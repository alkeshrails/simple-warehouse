RSpec.describe RSpec do
    describe "exit" do
      it "exit" do
        exit(0)               
        expect(Exit.initialize).to eq(exit) 
      end
    end
end