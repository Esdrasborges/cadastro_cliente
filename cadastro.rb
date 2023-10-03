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

    
end