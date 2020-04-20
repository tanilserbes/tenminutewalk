require 'tenminute'
describe TenMinuteWalk do
  sample = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']
  it {is_expected.to respond_to(:checking).with(1).argument}

  describe ' #checking' do
    it 'checks array size and returns size' do
      expect(subject.checking(sample)).to eq 10
    end

    it 'if the given array includes correct direction instructions' do
      expect(subject.direction_correct?(sample)).to equal true
    end
  end
end
