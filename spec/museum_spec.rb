require 'rspec'
require './lib/museum'
require './lib/patron'
require './lib/exhibit'


RSpec.describe Museum do 
    let(:dmns) do 
        Museum.new("Denver Museum of Nature and Science")
    end 

    describe "#initialize" do 
        it "exhists" do 
            expect(dmns.name).to eq("Denver Museum of Nature and Science")
        end

        it "has attributes" do
            expect(dmns.exhibits).to eq([])
        end
    end
end