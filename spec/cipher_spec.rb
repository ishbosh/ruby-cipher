#spec/cipher_spec.rb
require './lib/cipher'

# possible test cases:
# Output original message when shift value is 0
# Shift original message by 3 chars
# Wraps letters around to a when they go past z
# Shift original message by -3 chars
# Shift original message with numbers
# Shift original message with spaces removed
# Shift original message with punctuation
# Shift original message and keep case the same

describe CaesarCipher do
  describe '#caesar_cipher' do
    it 'when shift is 0' do
      message = 'this is the original message'
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher(message, 0)).to eql(message)
    end

    it 'when shift is 3' do
      message = 'shift me by three'
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher(message, 3)).to eql('vkliw ph eb wkuhh')
    end
  end
end
