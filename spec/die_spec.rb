require_relative 'spec_helper'

describe Die do

  before do
    $stdout = StringIO.new
    @die = Die.new
  end

  it "roll should be less than die" do
    @die.number.should <= 6
  end

  it "does not change unless explicitly rolled" do
    first_time = @die.number
    second_time = @die.number

    first_time.should == second_time
  end

  it "should roll different numbers of the dice" do
    first_time = @die.number

    @die.roll
    second_time = @die.number

    first_time.should_not be second_time
  end
end