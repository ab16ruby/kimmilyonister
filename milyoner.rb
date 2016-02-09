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
   sayi=12
   
loop do
    
  
    index = milyoner.randomSayı(sayi)
    	
    
    puts index.to_i 
    puts sayi 
    puts sorular [index]
      
    cevap =gets.chomp.upcase
     
    if cevap.strip ==cevaplar[index].strip
        
        print "Tebrikler Dogru cevap verdiniz"
    if  index.to_i+1==1 
           puan +=500
    elsif index.to_i+1==2
           puan +=1000
    elsif index.to_i+1==3
           puan +=2000
    elsif  index.to_i+1==4
           puan +=3000
    elsif index.to_i+1==5
           puan +=5000
    elsif index.to_i+1==6
           puan +=7500
    elsif index.to_i+1==7
           puan +=15000
    elsif index.to_i+1==8
           puan +=30000
    elsif index.to_i+1==9
           puan +=60000
    elsif index.to_i+1==10
           puan +=125000
    elsif index.to_i+1==11
           puan +=250000
    else index.to_i+1==12
           puan +=1000000
    end 

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
        	sayi -= 1
            system("clear")
            if sayi.zero?
            	puts "maksimum puanı kazandınız",puan
            	break
            end
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