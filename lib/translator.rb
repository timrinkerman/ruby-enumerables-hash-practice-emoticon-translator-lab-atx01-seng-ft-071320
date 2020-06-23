# require modules here
require "yaml"
require "pry"
#create a key and assign the values to them
#

#finalHash = original hash << new_hash 

#new_hash = :english => "value[0]",
#           :japanese => "value[1]"
                        
def load_library(file_path)
#access the array #create an empty hash for the new info to go to

emoticons_hash = YAML.load_file("lib/emoticons.yml")
final_hash = {}

 #access a key of an emotion 
  emoticons_hash.each do |emotion_word, faces|
    final_hash[emotion_word] = {}
        final_hash[emotion_word][:english] = faces[0]
        final_hash[emotion_word][:japanese] = faces[1]
        
end 
final_hash
end



def get_japanese_emoticon
  
end

def get_english_meaning(file_path, emoticon)
  library = load_library("lib/emoticons.yml")
  library.each do |key, value|
    binding.pry
end