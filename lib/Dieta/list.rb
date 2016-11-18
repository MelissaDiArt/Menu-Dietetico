Nodo=Struct.new(:v,:s,:p)

class Lista_DE

	attr_accessor :head , :tail
	
	def initialize()

		@head = nil
		@tail = nil
	end

	def insert_ini(valor)

		x = Nodo.new(valor,@head,nil)

		if(@head.nil?) 

			@tail = x
	
		else
		
			@head.p = x

		end 

		@head = x
		 
			
	end

	def extract_ini()

		if(@head.nil?)
			puts "La lista esta vacía"

		else
			aux = @head[:v]
			@head = @head[:s]
			@head.p = nil
			aux
		end
	end

	def insert_fin(valor)
		
		y = Nodo.new(valor,nil,@tail)

		if(@head.nil?)

			@head = y
		
		else
		
			@tail.s = y
		end

		@tail = y
		
	end
	
	def extract_fin()
		
		if(@head.nil?)
			puts "La lista esta vacía"
		else
			aux = @tail[:v]
			@tail = @tail[:p]
			@tail.s = nil
			aux
		end
	end

	def to_s()
		z=1
		aux=@head
		m =""
		while(aux[:s] != nil)

			m += "#{z}) #{aux[:v].to_s}\n"
			aux = aux[:s]
			z += 1
		end
		m
	end

end 
