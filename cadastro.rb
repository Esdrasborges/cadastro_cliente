require "cpf_cnpj"

class Cliente   
    attr_accessor :nome, :endereco, :numero_tele, :cpf
    attr_writer :numero_cadastro

    def initialize(nome, cpf, endereco, numero_tele, numero_cadastro)
        @nome = nome
        @cpf = cpf
        @endereco = endereco
        @numero_tele = numero_tele
        @numero_cadastro = numero_cadastro
    end

    def avaliar_cpf
        while !CPF.valid?(@cpf)
            puts "Qual o numero do seu CPF?: "
            @cpf = gets.chomp
            if CPF.valid?(@cpf)
                puts "O número do CPF é válido! Por favor, continue seu cadastro"
            else
                puts "O número do CPF não é válido! Por favor, digite um novo."
            end
        end

        puts "Qual o seu nome? "
        @nome = gets.chomp 
        puts "Qual o seu Enderço? "
        @endereco = gets.chomp
        puts "Qual o seu Número de Telefone? "
        @numero_tele = gets.chomp.to_s

        puts "Seu Cadastro Foi concluído com Sucesso, observe com atenção sua ficha"
        print "Nome = #{@nome}, CPF = #{@cpf}, Endereço = #{@endereco}, Numero de Telefone = #{@numero_tele}, Numero de Cadastro = #{@numero_cadastro}"
    end
end

cliente1 = Cliente.new("", "", "", "", 1)
puts "Cadastro do Cliente"
cliente1.avaliar_cpf

