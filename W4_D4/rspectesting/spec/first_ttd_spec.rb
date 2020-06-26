require 'first_ttd'
# require 'byebug'

describe "my_uniq" do 
    array = [1,1,1,2,2,2,3,3,3]

#     before(:each) do
#     # expect(my_uniq(array)).not_to receive(:uniq)
#   end
    # context "duplicate elements" do 
    
        it "checks to see if there are no duplicate elements" do
            # debugger
            expect(my_uniq(array)).to eq([1,2,3])
        end

        it "do not use built in uniq" do
            expect(my_uniq(array)).not_to receive(:uniq)
        end
    # end
end

describe "two_sum" do
    array = [-1, 0, 2, -2, 1] #---> [[0, 4], [2, 3]]

    it "must be Array" do 
        expect(two_sum(array).is_a?(Array)).to eq(true)
    end

    it "return idx of pairs that add to zero" do
        expect(two_sum(array)).to eq([[0, 4], [2, 3]])
    end
end

describe "my_transpose" do 
    rows = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ]
    # row1 = rows[0]
    # row2 = rows[1]
    # row3 = rows[2]

    # before(:each) do
    #     expect_any_instance_of(Array).not_to receive(:transpose)
    # end

    it "must be Array" do 
        expect(my_transpose(rows).is_a?(Array)).to eq(true)
    end

    # it "do not use built in transpose" do
    #     expect(my_transpose(rows)).not_to receive(:transpose)
    # end

    it "return transposed array" do
        expect(my_transpose(rows)).to eq([
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ])
    end

    it "should not use Array#transpose" do
      expect_any_instance_of(Array).to_not receive(:transpose)
      my_transpose([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
end

describe "stock_picker" do 
    array = [100,2,1,2,5, 6,7]
    array1 = [20,100,0, 10, 100]

    it "must be Array" do 
        expect(stock_picker(array).is_a?(Array)).to eq(true)
    end

    it "All elements must be Integers" do
        expect(array.all?{|el| el.is_a?(Integer)}).to eq(true)
    end

    it "Must return the days with maximum profit" do 
        expect(stock_picker(array)).to eq([2, 6])
        expect(stock_picker(array1)).to eq([2, 4])
    end


end


describe "towers_of_hanoi" do 
    arr1 = [1,2,3,4,5]
    arr2 = []
    arr3 = []
    arr4 = [5,6,7,8]

    context "move helper" do

        it "it can move to an empty arr" do 
            expect(move(arr1, arr2)).to eq([[2,3,4,5],[1]])
        end
        
        it "smaller can move on top of larger numbers" do 
            expect(move(arr1, arr4)).to eq([[2,3,4,5],[1,5,6,7,8]])

        it "if move is invalid raise error " do 
            expect{move(arr2, arr1)}.to raise_error("Invalid move")
        end

        it "Can only move smaller numbers ontop of bigger numbers " do 
            expect{move(arr4, arr2)}.to raise_error("Invalid move")
        end
        
    end

    # context "won" do 
    #     win_arr = arr1.dup

    #     it "win"do
    #         expect(won?(win_arr, [1,2,3,4,5], arr3)).to be(true)
    #         expect(won?(win_arr, arr2, [1,2,3,4,5])).to be(true)
    #         expect(won?(win_arr, arr2, [1,2,3,4,5].shuffle)).to be(false)
    #         expect(won?(win_arr, [1,2,3,4,5].shuffle, arr3)).to be(false)
    #     end
    # end
end