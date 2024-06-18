# ruby ver.3.3.0
# affected by https://github.com/mizunowanko/Symvorak/tree/SymbolOnly
# karabiner-elements ver.14.13.0

require 'json'
require 'yaml'

Alpha2Symbol = YAML.load_file('alpha2symbol-us.yml')

def input_filename
  if ARGV[0] && File.exist?(ARGV[0])
    return ARGV[0]
  else
    puts 'Enter symbol file name'
    puts '---'
    puts `ls *.yml`

    filename = ''
    until File.exist?(filename)
      puts 'please retry' unless filename.empty?
      puts
      print '> '

      filename = gets.chomp
    end
    return filename
  end
end
    
Filename = input_filename
  
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
  }],
  to_if_alone: [{
    key_code: Alpha2Symbol['symbol']
  }]
}

Json[:manipulators] << {
  type: 'basic',
  from: {
    key_code: Alpha2Symbol['symbol'],
    modifiers: {
      mandatory: ['shift']
    },
  },
  to: [{
    key_code: Alpha2Symbol['symbol'],
    modifiers: ['left_shift']
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

puts 'success'
