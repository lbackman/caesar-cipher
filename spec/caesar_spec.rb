# spec/caesar_spec.rb
require './caesar'

describe "#mod(number, shift)" do
  it "returns number if shift is 0" do
    expect(mod(70, 0)).to eql(70)
  end

  it "shifts correct amount lower bound" do
    expect(mod(75, 75)).to eql(72)
  end

  it "shifts correct amount upper bound" do
    expect(mod(100, 1032)).to eql(118)
  end

  it "no shift if outside range" do
    expect(mod(92, 5)).to eql(92)
  end
end

describe "casesar(number, shift)" do
  it "Shift once" do
    expect(caesar('Lol', 1)).to eq('Mpm')
  end

  it "Negative shift" do
    expect(caesar('Lol', -2)).to eq('Jmj')
  end

  it "Ignores non-letter characters" do
    expect(caesar('A123', 27)).to eq('B123')
  end
end