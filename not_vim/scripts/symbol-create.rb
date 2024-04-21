# ruby ver.3.3.0
# affected by https://github.com/mizunowanko/Symvorak/tree/SymbolOnly
# karabiner-elements ver.14.13.0
require 'json'
require 'yaml'
puts `ls *.yml`
puts 'Enter full file name>'
Filename = gets.chomp
if File.exist?(Filename)
  Alpha2Symbol = YAML.load_file(Filename)
else
  puts 'Not found'
  exit(1)
end

Json = {
  description: Alpha2Symbol['description'],
  manipulators: [
  ]
}


# set symbol key
Json[:manipulators] << {
  type: 'basic',
  from: {
    key_code: Alpha2Symbol['symbol'],
    modifiers: {
      mandatory: ['any']
    },
  },
  to: [{
    set_variable: {
      name: 'symbol',
      value: true
    }
  }],
  to_after_key_up: [{
    set_variable: {
      name: 'symbol',
      value: false
    }
  }]
}

Alpha2Symbol['swap_keys'].each do |k, v|
  from_keycode = k
  partitioned = v.partition('-')
  is_with_shift = (partitioned[0] == 'S')
  to_keycode = (is_with_shift ? partitioned[2] : partitioned[0])

  Json[:manipulators] << {
    type: 'basic',
    conditions: [{
      type: 'variable_if',
      name: 'symbol',
      value: true
    }],
    from: {
      key_code: from_keycode,
      modifiers: {
        mandatory: ['any']
      },
    },
    to: [{
      key_code: to_keycode
    }]
  }
  if is_with_shift
    Json[:manipulators].last[:to][0][:modifiers] = ['shift']
  end
end


File.open('symbol-out.json', 'w') do |file|
  file.puts JSON.pretty_generate(Json)
end
