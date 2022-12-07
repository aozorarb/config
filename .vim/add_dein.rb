puts "プラグイン一括追加サービス"
lazy = '-1'
until lazy == '0' || lazy == '1'
	puts "通常[0]かlazy[1]か選択"
	lazy = gets.to_s.chomp
end

def enter(file)
	puts "プラグイン名を入力(終了はCTRL + d)"
	File.open("#{file}.toml", 'a') do |file|
		plugin = ''
		while plugin = gets	
			if plugin.nil?
				puts "入力を終了します"
				break
			end
			plugin.chomp!
			file.puts <<-EOF
			[[plugins]]
			repo = '#{plugin}'

			EOF
		end
	end
end

if lazy == '0'
	enter("dein")
elsif lazy == '1'
	enter("dein_lazy")
end
