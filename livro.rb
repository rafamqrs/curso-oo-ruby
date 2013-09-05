class Livro
	attr_reader :titulo, :preco, :ano_lancamento
	def initialize(titulo, preco, ano_lancamento)
		@titulo = titulo
		@preco = preco
		@ano_lancamento = ano_lancamento
	end
end


livro_rails = Livro.new("Agile web dev", 30.00,2012)

livro_ruby = Livro.new("RUBY ON RAILS", 50.00,2011)



def imprime_nota_fiscal(livros)
	livros.each do |livro|
		puts "Titulo: #{livro.titulo} - Preço: #{livro.preco} - Ano: #{livro.ano_lancamento}"
	end
end
livros = [livro_rails, livro_ruby]
imprime_nota_fiscal livros