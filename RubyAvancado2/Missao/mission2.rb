#Missão 2
#Em uma classe chamada Carro, crie um método público chamado get_km que recebe como parâmetro a seguinte informação “Um fusca de cor amarela viaja a 80km/h ”.
#
#O método get_km deve chamar um método privado com o nome de find_km. Este deve localizar e retornar o casamento de padrão 80km/h.
#
#No final, imprima este retorno. 


class Carro 


    def get_km(text)
        find_km(text)
    end

    private
    def find_km(text)
        return print = /[0-9]{2}km\/h/.match(text)
    end
end

carro = Carro.new

puts carro.get_km('Um fusca de cor amarela viaja a 80km/h')
