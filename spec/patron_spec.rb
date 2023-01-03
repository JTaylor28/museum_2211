require 'rspec'
require './lib/exhibit'
require './lib/patron'

RSpec.describe Patron do
   let(:patron_1) do 
        Patron.new("Bob", 20)
    end

    let(:patron_2) do 
        Patron.new("Sally", 20)
    end

    describe '#initialize' do 
        it "exhists" do 
            expect(patron_1).to be_an_instance_of(Patron)
        end
  
        it "has attributes" do
            expect(patron_1.name).to eq("Bob")
            expect(patron_1.age).to eq(20)
            expect(patron_1.spending_money).to eq(20)
            expect(patron_1.interests).to eq([])
        end
          
        it "Can have intrests" do 
            patron_1.add_interest("Dead Sea Scrolls")
            patron_1.add_interest("Gems and Minerals")
            expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
        end
    end
end 