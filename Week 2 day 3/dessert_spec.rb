require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:brownie) { Dessert.new("cake", 10, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq('cake')
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(9)
    end

    it "starts ingredients as an empty array"
      expect(cake.ingredients).to be empty
    it "raises an argument error when given a non-integer quantity"
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("frosting")
      expect(brownie.ingredients).to include("frosting")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do

    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
    cake.eat(5)
    expect(cake.quantity).to eq(80)
  end
    it "raises an error if the amount is greater than the quantity"
    expect cake.eat(15).to raise_error
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
