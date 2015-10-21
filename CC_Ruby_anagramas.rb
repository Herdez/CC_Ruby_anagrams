#método llamado canonical que reciba una palabra y la regrese
#en un formato especifico el cual, si comparas dos anagramas 
#después de mandados a este método sean iguales.

def canonical(word)
	#split word and sort their letters.
  word.split("").sort
end

def are_anagrams?(word1, word2)
	#it returns true if words are anagrams
  canonical(word1) == canonical(word2)
end

#Driver code...
p are_anagrams?("roma", "emor") == false
p are_anagrams?("roma", "amor") == true
p are_anagrams?("arroz", "zorra") == true


#método que se llame anagrams_for el cual deberá recibir una 
#palabra y un arreglo de palabras (un diccionario) y regresar un
#arreglo de las palabras que sean anagramas de esa palabra o un 
#arreglo vació si no encuentra ninguna.

def anagrams_for(word, dictionary)
	 #it evaluates if 'word' and each word of 'dictionary' are anagrams 
   dictionary.select! { |word_dic| 
     are_anagrams?(word, word_dic)
   }
end

#Driver code...
p anagrams_for("oso", ["oso", "hola", "soo"])


