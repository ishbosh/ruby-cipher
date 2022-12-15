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
    context 'when shift is 0' do
      it 'keeps the original message' do
        message = 'this is the original message'
        cipher = CaesarCipher.new
        expect(cipher.caesar_cipher(message, 0)).to eql(message)
      end
    end

    context 'when shift is 3' do
      it 'shifts letters to the right by 3' do
        message = 'shift me three'
        cipher = CaesarCipher.new
        expect(cipher.caesar_cipher(message, 3)).to eql('vkliw ph wkuhh')
      end
    end

    context 'when shift goes out of range' do
      it 'wraps z to a' do
        message = 'wrappy zappy'
        cipher = CaesarCipher.new
        expect(cipher.caesar_cipher(message, 30)).to eql('avettc dettc')
      end
    end

    context 'when message has different casing' do
      it 'keeps the original casing' do
        message = 'Keep My Case'
        cipher = CaesarCipher.new
        expect(cipher.caesar_cipher(message, 1)).to eql('Lffq Nz Dbtf')
      end
    end

    context 'when shift is negative' do
      it 'shifts letters to the left' do
        message = 'hi'
        cipher = CaesarCipher.new
        expect(cipher.caesar_cipher(message, -1)).to eql('gh')
      end

      it 'wraps a to z' do
        message = 'Go back'
        cipher = CaesarCipher.new
        expect(cipher.caesar_cipher(message, -3)).to eql('Dl yxzh')
      end
    end

    context 'when numbers or symbols are in message' do
      it 'keeps same numbers' do
        message = 'HAL9000'
        cipher = CaesarCipher.new
        expect(cipher.caesar_cipher(message, 1)).to eql('IBM9000')
      end

      it 'keeps same punctuation' do
        message = 'beep. boop. I am a bot!'
        cipher = CaesarCipher.new
        expect(cipher.caesar_cipher(message, 1)).to eql('cffq. cppq. J bn b cpu!')
      end
    end

    context 'when space removal is enabled' do
      it 'removes spaces from the message' do
        message = "I have no spaces"
        cipher = CaesarCipher.new
        expect(cipher.caesar_cipher(message, 0, true)).to eql('Ihavenospaces')
      end
    end
  end
end
