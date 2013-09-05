class Livro
	attr_accessor :titulo, :preco, :ano_lancamento
end


livro_rails = Livro.new
livro_rails.preco = 20
livro_rails.titulo = "Agile web dev"
livro_rails.ano_lancamento = 2012


livro_ruby = Livro.new
livro_ruby.preco = 30
livro_ruby.titulo = "ruby"
livro_ruby.ano_lancamento = 2010


def imprime_nota_fiscal(livros)
	livro = 1
	livros.each do |livro|
		puts "Titulo: #{livro.titulo} - #{livro.preco}"
	end
end
livros = [livro_rails, livro_ruby]
imprime_nota_fiscal livros