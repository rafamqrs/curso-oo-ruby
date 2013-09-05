class Livro
	attr_reader :titulo, :preco, :ano_lancamento
	def initialize(titulo, preco, ano_lancamento)
		@titulo = titulo
		@preco = preco
		@ano_lancamento = ano_lancamento
	end
end


livro_rails = Livro.new(20, "Agile web dev",2012)

livro_ruby = Livro.new(50, "RUBY ON RAILS",2011)



def imprime_nota_fiscal(livros)
	livros.each do |livro|
		puts "Titulo: #{livro.titulo} - #{livro.preco}"
	end
end
livros = [livro_rails, livro_ruby]
imprime_nota_fiscal livros