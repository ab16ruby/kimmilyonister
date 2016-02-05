require ("terminal-color")
require ("./milyonclass") 
require ("./template.rb")

require 'turkish_support'
using TurkishSupport

abc = GameTemplate.new

abc.window(width:"100",height:"25",padding:"15")
abc.header(sym:"#")
abc.header(title:"HOŞGELDİNİZ")

   secim = ""
   puan=0
   milyoner = Milyoner.new
   sorular =  milyoner.soruParse
   cevaplar = milyoner.cevapParse
   sayi1 = 16
   
loop do
    
  
    index = milyoner.randomSayı(sayi1)
    puts index.to_i 
    puts sayi1
    puts sorular [index]
      
    cevap =gets.chomp.upcase
     
    if cevap ==cevaplar[index].strip
        
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
        
        elsif 
        	secim == "E" 
        	sayi1 -= 1
            system("clear")
	       redo 
	    else 
	       break 
	    end  
       	
       	
       	     
    else 
       puts "Yanlis cevap verdiniz,OYUN BİTTİ".red
       puts "PUANINIZ ".blue ,puan
       break
    end    
end