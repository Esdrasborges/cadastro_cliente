class Cliente   
    attr_accessor :nome, :endereco, :numero_tele, :cpf
    attr_writer :numero_cadastro
    def initialize (nome , cpf,  endereco, numero_tele, numero_cadastro)
        @nome = nome
        @cpf = cpf
        @endereco = endereco
        @numero_tele = numero_tele
        @numero_cadastro = numero_cadastro
    end

    def avaliar_cpf
        puts "Qual o numero do seu CPF?: "
        self.cpf = gets.chomp
        if CPF.valid?(@cpf)
            puts "O número do CPF é válido! Por favor, continue seu cadastro"
            puts "Qual o seu nome? "
            @nome = gets.chomp 
            puts "Qual o seu Enderço? "
            @endereco = gets.chomp
            puts "Qual o seu Número de Telefone? "
            @numero_tele = gets.chomp.to_s
            puts "Seu Cadastro Foi conluido com Sucesso, observe com atenção sua ficha"
            puts "Nome = #{@nome}, CPF = #{@cpf}, Endereço = #{@endereco}, Numero de Telefone =  #{@numero_tele.to_s}, Numero de Cadastro = #{@numero_cadastro.to_s}"
        else
            puts "O número do CPF não é valido! Por favor digite um novo."
        end
    end
end