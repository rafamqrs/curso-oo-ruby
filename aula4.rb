#Aula 4 - Responsabilidades e coesão dos objetos
#Classe Livro
class Livro
	attr_reader :titulo, :preco, :ano_lancamento
	def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
		@titulo = titulo
		@ano_lancamento = ano_lancamento
		@possui_reimpressao = possui_reimpressao
		@preco = calcula_preco(preco)
	end

	def to_csv
		"#{@titulo}, #{@ano_lancamento}, #{@preco}"
	end
end
#Fim da Classe Livro

#Classe Array do Ruby
class Array
	attr_reader :maximo_necessario
	def <<(livro)
		push(livro)
		if @maximo_necessario.nil? || @maximo_necessario < size
			@maximo_necessario = size
		end
		self
	end
end
#Classe Estoque
class Estoque
	attr_reader :livros
	def initialize()
		@livros = []
	end

	def adiciona(livro)
		@livros << livro if livro
	end	

	def exportar_csv
		livros.each do |livro|
			puts livro.to_csv
		end
	end
	def mais_barato_que(estoque , valor)
		@livros.select do |livro|
		livro.preco <= valor
		end
	end
end
#Fim da Classe Estoque


def possui_reimpressao?
	@possui_reimpressao
end	

#Metodo calcula preço base através do ano de lancamento
def calcula_preco(base)
	if @ano_lancamento < 2006
		if @possui_reimpressao
			base * 0.9
		else
			base * 0.95
		end
	elsif @ano_lancamento <= 2010
		base * 0.96
	else
		base
	end
end 
def livro_newsletter(livro)
	if livro.ano_lancamento < 1999
		puts "Newsletter/Liquidacao"
		puts livro.titulo
		puts livro.preco
		puts.possui_reimpressao?
	end
end		


programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true)
ruby = Livro.new("Programming Ruby", 100, 2004, true)

algoritmos = Livro.new("algoritmos", 100, 1998, true)
arquitetura = Livro.new("Introducao a arquitetura de software", 70, 2011, true)
estoque = Estoque.new
estoque.adiciona algoritmos
puts estoque.livros.maximo_necessario

estoque.livros << arquitetura << programmer 
estoque.livros << ruby
puts estoque.livros.maximo_necessario

estoque.livros.delete algoritmos
puts estoque.livros.maximo_necessario
