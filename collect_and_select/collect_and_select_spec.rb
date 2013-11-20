#require './collect_and_select'

# describe "#my_collect" do

# it "should return a new array with each element mulitiplied by two." do
#     expect(my_collect([1,3,5]) { |element| element * 2}).to eq([2,6,10])
#     end

# end    

require './collect_and_select'

describe "#my_select" do

    it "should return a new array with elements when elements in bloc are true" do
        expect(my_select([2,3,4])){ |element| element > 2}. to eq([3,4])

    end    
end
