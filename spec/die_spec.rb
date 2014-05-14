require_relative 'spec_helper'

describe Die do

  before do
    $stdout = StringIO.new
    @myroll = Die.new(6).roll
  end

  it "roll should be less than die" do
    @myroll.should <= 6
  end
end