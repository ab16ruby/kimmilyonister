class Milyoner
       def soruParse
                sorular = ""
                File.open('sorular.txt', 'r') do |dosya| 
                    sorular = dosya.read 
                    end
                 block_given? ? yield(sorular) : sorular.split('*')
       end 
      
       def cevapParse
                cevaplar = ""
                File.open('cevaplar.txt', 'r') do |dosya|     
                    cevaplar = dosya.read    
                    end
                block_given? ? yield(cevaplar) : cevaplar.split('*')
       end 
       
       def randomSayı(sayi1)
               rand(0..sayi1)
       end 
end