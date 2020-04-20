require 'tenminute'
describe TenMinuteWalk do
  sample = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']
  it {is_expected.to respond_to(:checking).with(1).argument}

  describe ' #checking' do
    it 'checks array size and returns size' do
      expect(subject.checking(sample)).to eq 10
    end

    it 'collects N-W directions array size to be 5' do
      expect(subject.collect_nw(sample)).to eq 5
    end

    it 'collects S-E directions array size to be 5' do
      expect(subject.collect_se(sample)).to eq 5
    end

    it 'if the given array includes correct direction instructions' do
      expect(subject.direction_correct?(sample)).to equal true
    end



  end
end
