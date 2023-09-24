require 'spec_helper'
require_relative '../lib/substrings'

describe 'Implement a method #substrings' do
  let(:dictionary) do
    %w[below down go going horn how howdy it i low own part partner
       sit]
  end
  it 'should return a hash listing each substring (case insensitive) ' do
    hash_list = substrings('below', dictionary)
    expect(hash_list).to eq({ 'below' => 1, 'low' => 1 })
  end

  it 'can handle multiple words' do
    hash_list = substrings("Howdy partner, sit down! How's it going?", dictionary)
    expect(hash_list).to eq({ 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3,
                              'own' => 1, 'part' => 1, 'partner' => 1, 'sit' => 1 })
  end
end
