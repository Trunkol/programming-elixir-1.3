handle_open = fn 
 		{:ok, file}	-> "Dados lidos: #{IO.read(file, :line)}"
 		{_, error}	-> "Erro: #{(:file.format_error(error))}"
 end

 IO.puts handle_open.(File.open("../ch2/notes.txt"))
 IO.puts handle_open.(File.open("naoexistente"))