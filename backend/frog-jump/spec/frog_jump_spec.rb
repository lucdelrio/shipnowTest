require 'rspec'
require_relative '../model/frog_jump'

describe 'FrogJump' do

  it 'example given' do
    frog_jump = FrogJump.new
    result = 3
    expect(frog_jump.frog_jump(10,85,30)).to eq result
  end

  it 'frog start in 0' do
    frog_jump = FrogJump.new
    result = 4
    expect(frog_jump.frog_jump(00,85,25)).to eq result
  end

  it 'frog start after finish line' do
    frog_jump = FrogJump.new
    result = 0
    expect(frog_jump.frog_jump(10,5,12)).to eq result
  end

  it 'frog start at finish line' do
    frog_jump = FrogJump.new
    result = 0
    expect(frog_jump.frog_jump(10,10,12)).to eq result
  end

end
