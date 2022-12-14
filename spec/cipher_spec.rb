#spec/cipher_spec.rb
require './lib/cipher.rb'

# possible test cases:
# Output original message when shift value is 0
# Shift original message by 3 chars
# Shift original message by -3 chars
# Shift original message with numbers
# Shift original message with spaces removed
# Shift original message with punctuation
# Shift original message and keep case the same

describe CaeserCipher do
  describe '#caesar_cipher' do
    it 'outputs original message when shift is 0' do
      message = 'this is the original message'
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher(message)). to eql(message)
    end
  end
end