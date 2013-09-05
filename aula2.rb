#Classe Livro
class Livro
	attr_reader :titulo, :preco, :ano_lancamento
	def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
		@titulo = titulo
		@ano_lancamento = ano_lancamento
		@possui_reimpressao = possui_reimpressao
		@preco = calcula_preco(preco)
	end
end
#Classe Estoque
class Estoque
	attr_reader :livros
	def initialize()
		@livros = []
	end

	def exportar_csv
		livros.each do |livro|
			puts "#{livro.titulo} - #{livro.ano_lancamento}"
		end
	end
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
		puts "Newsletter/Liquidação"
		puts livro.titulo
		puts livro.preco
	end
end		

def mais_barato_que(estoque , valor)
	estoque.select do |variable|
	livro.preco <= valor
	end
end


algoritmos = Livro.new("algoritmos", 100, 1998, true)
arquitetura = Livro.new("Introdução a arquitetura de software", 70, 2011, true)
estoque = Estoque.new
estoque.livros << algoritmos << arquitetura
estoque.livros << Livro.new("The pragmatic Programmer", 100, 1999, true)
estoque.livros << Livro.new("Programming Ruby", 100, 2004, true)

estoque.exportar_csv
