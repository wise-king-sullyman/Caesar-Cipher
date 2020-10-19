# frozen_string_literal: true

require './caesar'

describe '#caesar_cipher' do
  it 'returns ciphered string' do
    expect(caesar_cipher('string', 1)).to eql('tusjoh')
  end

  it 'returns mixed case ciphers' do
    expect(caesar_cipher('StRinG', 1)).to eql('TuSjoH')
  end

  it 'returns multi-word ciphers' do
    expect(caesar_cipher('Two Words', 1)).to eql('Uxp Xpset')
  end

  it 'returns wrapped ciphers' do
    expect(caesar_cipher('zzz', 1)).to eql('aaa')
  end

  it 'returns unciphered string with shift 0' do
    expect(caesar_cipher('abc', 0)).to eql('abc')
  end

  it 'returns ciphers with large shifts' do
    expect(caesar_cipher('abc', 521)).to eql('bcd')
  end

  it 'returns ciphers with negative shifts' do
    expect(caesar_cipher('bcd', -1)).to eql('abc')
  end
end
