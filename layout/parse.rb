keycodes_to_keys = {}

File.open('keys.txt').each_line do |line|
    keycode, key = line.split(' ')
    keycodes_to_keys[keycode.to_i(16)] = key
end

def parse(file, keycodes_to_keys)
    keys_to_chars = {}

    File.open(file).each_line do |line|
        key, char = line.split(' ')
        keys_to_chars[key] = ('0x' + char.sub('ASCII_', '').sub('ISO_8859_1_', '')).to_i(16)
    end

    puts keycodes_to_keys
    puts keys_to_chars

    ofile = File.open(file.sub('.txt', '.bin'),'wb')
    buffer = []

    (0..255).each do |i|
        if i % 16 == 0
            print "\n"
        end
        key = keycodes_to_keys.fetch(i,0)
        char = keys_to_chars.fetch(key, 0x3f)
        buffer << char
        print char.chr.force_encoding(Encoding::ISO_8859_1)
    end

    ofile.write(buffer.pack("C*"))

    puts
    puts
end

parse('keys_unshifted.txt', keycodes_to_keys)
parse('keys_shifted.txt', keycodes_to_keys)