require 'rspec'
require_relative "../lib/tennis_scorer"
describe "TennisScorer", "basic scoring" do
  it "should start with a score of 0-0" do
    ts = TennisScorer.new
    ts.score.should == "0-0"
  end
  
  it "should be 15-0 if the server wins a point" do
    ts = TennisScorer.new
    ts.srv_win
    ts.score.should == "15-0"
  end

  it "should be 40-0 if the server wins 3 points" do
    ts = TennisScorer.new
    ts.srv_win
    ts.srv_win
    ts.srv_win
    ts.score.should == "40-0"
  end

  it "should be 0-40 if the server wins 3 points" do
    ts = TennisScorer.new
    ts.cl_win
    ts.cl_win
    ts.cl_win
    ts.score.should == "0-40"
  end

  it "should be 0-15 if the receiver wins a point" do
    ts = TennisScorer.new
    ts.cl_win
    ts.score.should == "0-15"
  end

  it "should be 15-15 after they both win a point" do
    ts = TennisScorer.new
    ts.srv_win
    ts.cl_win
    ts.score.should == "15-15"
  end
end

