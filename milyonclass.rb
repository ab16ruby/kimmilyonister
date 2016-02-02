class Milyoner
       def soruParse
                sorular = ""
                File.open('sorular.txt', 'r') do |dosya| 
                raise ArgumentErrors unless "dosya açılamadı "     
                    sorular = dosya.read 
                    end
                 block_given? ? yield(sorular) : sorular.split('*')
       end 
      
        def cevapParse
                cevaplar = ""
                File.open('cevaplar.txt', 'r') do |dosya|     
                    cevaplar = dosya.read 
                raise ArgumentErrors unless "dosya acılamadı "     
                    end
                block_given? ? yield(cevaplar) : cevaplar.split('*')
       end 
      
       def randomSayı(sayi)
               rastgele=rand(0..sayi)
       end 
end