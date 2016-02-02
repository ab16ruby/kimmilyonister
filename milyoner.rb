require ("terminal-color")
require ("./milyonclass") 

   puts "HOSGELDİNİZ ".red
   secim = ""
   puan=0
   milyoner = Milyoner.new
   sorular =  milyoner.soruParse
   cevaplar = milyoner.cevapParse
   sayi = 11
   
loop do
        
    index = milyoner.randomSayı(sayi)
      
    puts sorular[index].blue
      
    cevap = gets.chomp.upcase

    if cevap == cevaplar[index].strip
        
        print "Tebrikler Dogru cevap verdiniz"
        puan += (index+1)*10
        puts " "
        sorular.delete_at(index)
        cevaplar.delete_at(index)
            
        puts "Çıkmak için (H/h) devam etmek için (E/e) basin"
        secim = gets.chomp.upcase
        
        if secim == "H"
          puts "Puanınız ",puan
       	  break
        elsif secim == "E" 
	         redo   
       	end
       	 sayi -= 1
       	if sayi==0
       	 puts "tebrikler oyunda maksimum puanı kazandınız" 
        end     
    else 
       puts "Yanlis cevap verdiniz,OYUN BİTTİ".red
       puts "PUANINIZ ".blue ,puan
       break
    end    
end
