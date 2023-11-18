def substrings(str, word_array)
    hsh = {}
    
    str.chars.each do |single_char|
        single_str = single_char.downcase
        word_array.each do |wrd|
            if single_str.include?(wrd)
                if hsh.key?(wrd)
                    hsh[wrd] += 1
                else
                    hsh[wrd] = 1
                end
            end
        end
    end
    
    puts hsh
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary) #{"below"=>1, "low"=>1}
substrings("Howdy partner, sit down! How's it going?", dictionary) # {"down"=>1, "go"=>1, "going"=>1, "it"=>1, "i"=>1, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
