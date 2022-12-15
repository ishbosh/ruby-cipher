#spec/cipher_spec.rb
require './lib/cipher'

# possible test cases:
# Output original message when shift value is 0
# Shift original message by 3 chars
# Wraps letters around to a when they go past z
# Shift original message by -3 chars
# Shift original message and keep case the same
# Shift original message with numbers
# Shift original message with spaces removed
# Shift original message with punctuation

describe CaesarCipher do
  describe '#caesar_cipher' do
    it 'when shift is 0' do
      message = 'this is the original message'
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher(message, 0)).to eql(message)
    end

    it 'when shift is 3' do
      message = 'shift me three'
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher(message, 3)).to eql('vkliw ph wkuhh')
    end

    it 'wraps when beyond z' do
      message = 'wrappy zappy'
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher(message, 30)).to eql('avettc dettc')
    end

    it 'when message has different casing' do
      message = 'Keep My Case'
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher(message, 1)).to eql('Lffq Nz Dbtf')
    end

    it 'when shift is negative' do
      message = 'Go back'
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher(message, -3)).to eql('Dl yxzh')
    end
  end
end
