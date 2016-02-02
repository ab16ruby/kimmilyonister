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
      
       def randomSayı(sayi)
               rastgele=rand(0..sayi)
       end 
end
   secim = ""
   puan=0
   milyoner = Milyoner.new
   sorular =  milyoner.soruParse
   cevaplar = milyoner.cevapParse
   sayi = 11
   
loop do
        
    index = milyoner.randomSayı(sayi)
      
    puts sorular[index]
      
    cevap = gets.chomp.upcase

    if cevap == cevaplar[index].strip
        
        print "Tebrikler Dogru cevap verdiniz"
        puan += index*10
        puts " "
        sorular.delete_at(index)
        cevaplar.delete_at(index)
        sayi -= 1     
        puts "Çıkmak için (H/h) devam etmek için (E/e) basin"
        secim = gets.chomp.upcase

        if secim == "H"
          puts "Puanınız {puan}"
	        break
        elsif secim == "E" 
	         redo   
       	end
    else 
       puts "Yanlis cevap verdiniz"
       puts "Puanınız {puan}" 
       break
    end    
end
