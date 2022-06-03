require 'help'
RSpec.describe "help", type: :request do
    context 'help' do
        it { is_expected.to eq("help") }
    end
end