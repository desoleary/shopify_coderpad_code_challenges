RSpec.describe '#reverse string' do
  it 'reverses string contents' do
    def reverse_str(str)
      str.chars.reduce([]) do |memo, c|
        memo.insert(0, c.to_s).join('')
      end
    end

    expect(reverse_str('abc')).to eql('cba')
  end
end
