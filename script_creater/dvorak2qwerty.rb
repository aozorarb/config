# sequence:
#   top left(almost 1) to right, second top left to right, ...,
#   last left to right, top left to right with shift, second top left to right with shift, ...

Qwerty = {
  mac_jis: %w(
    1 2 3 4 5 6 7 8 9 0 - ^ \\
    q w e r t y u i o p @ [
    a s d f g h j k l ; : ]
    z x c v b n m , . / _
    ! " # $ % & ' ( ) 0 = ~ |
    Q W E R T Y U I O P ` {
    A S D F G H J K L + * }
    Z X C V B N M < > ? _
  ),
  hhkb: %w(

  )
}

Dvorak = {
  mac_jis: %w(
    1 2 3 4 5 6 7 8 9 0 [ ] \\
    ' , . p y f g c r l / =
    a o e u i d h t n s - \\
    ; q j k x b m w v z `
    ! @ # $ % ^ & * ( ) { } |
    " < > P Y F G C R L / =
    A O E U I D H T N S - \\
    ; Q J K X B M W V Z `
  ),
  hhkb: %w(

  )
}

# select mode from created array
Mode = :mac_jis

mapping = ''
#unmapping = ''

raise "Invalid the Mode" if Qwerty[Mode].nil? || Dvorak[Mode].nil?
raise "Not equal count of letters(Qwerty: #{Qwerty[Mode].size}, Dvorak: #{Dvorak[Mode].size})" unless Qwerty[Mode].size == Dvorak[Mode].size

Qwerty[Mode].size.times do |i|
  from = Qwerty[Mode][i]
  to = Dvorak[Mode][i]
  mapping << "noremap! #{from} #{to}\n" 
#  unmapping << "unmap! #{from}"
end

File.open("dvorak-#{Mode}.vim", 'w') { |file| file.puts mapping }
#File.open("qwerty.vim", 'w') { |file| file.puts unmapping }
