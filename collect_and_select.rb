#Implement your own versions of collect and select
 
def my_collect(array)
#code goes here
#collect is like .each except that it alters the array
    i = 0
    collect_array = []
    while i < array.length
        item = yield array[i]
        i = i + 1
        collect_array << item
    end
    collect_array
end
array = [1, 2, 3]
my_collect(array){ |element| element * 2}
 
def my_select(array)
    #if hash is true, returns values in a new array
    i = 0
    select_array = []
    while i < array.length
        item = yield array[i]
        i += 1    
        if item == true
            select_array << item
        end    
    end 
     select_array
end
 

# CHALLENGE:
# Implement these methods as instance methods on the array class.