class Milyoner
       
       def initialize
		@puan=0
       end
      
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
      
       def randomSayı(sayi)
               rastgele=rand(0..sayi)
       end 
end

   milyoner = Milyoner.new
   sorular =  milyoner.soruParse
   cevaplar = milyoner.cevapParse
   sayi = 11
   
   loop do
        
      index = milyoner.randomSayı(sayi)
      
      puts "#{sorular[index]}"
      
      cevap = gets.chomp.upcase

      if cevap == cevaplar[index]
        
          puts "Tebrikler Dogru cevap verdiniz"
          @puan += index*10
          puts " "
          sorular.delete_at(index)
          cevaplar.delete_at(index)
          sayi -= 1     
          puts "Çıkmak istiyorsanız (H/h) basın"
          devam = gets.chomp.upcase

          break if secim == "H"
	
       	  print `clear`
        else 
   	        puts "Yanlış cevap verdiniz "
   	        puts "Puanınız #{@puan}"
   	        break
   end
end