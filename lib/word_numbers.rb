class Fixnum
  define_method(:number_trans) do
    trans_hash_low = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", }

    trans_hash_teens ={0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}

    trans_hash_tens = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "woseventy", 8 => "eighty", 9 => "ninety"}

    num_array = self.to_s.split(//)
    num_length = num_array.length()
    if num_length == 1
      singleDig = num_array[0].to_i
      trans_hash_low.fetch(singleDig)


    elsif num_length == 2 && num_array[0] == "1"
      teenishNum = num_array[1].to_i
      trans_hash_teens.fetch(teenishNum)


    elsif num_length == 2 && num_array[1] =="0"
      firstNum = num_array[0].to_i
      respFirst = trans_hash_tens.fetch(firstNum)
      secNum = num_array[1].to_i
      respSec = trans_hash_low.fetch(secNum)
      return respFirst + respSec

    elsif num_length == 2
      firstNum = num_array[0].to_i
      respFirst = trans_hash_tens.fetch(firstNum)
      secNum = num_array[1].to_i
      respSec = trans_hash_low.fetch(secNum)
      return respFirst + "-" + respSec

    elsif num_length == 3 && num_array[1] =="0"
      firstNum = num_array[0].to_i
      respFirst = trans_hash_low.fetch(firstNum)
      thirdNum = num_array[2].to_i
      respThird = trans_hash_low.fetch(thirdNum)
      return respFirst + "-hundred " + respThird

    elsif num_length == 3 && num_array[1] == "1"
      firstNum = num_array[0].to_i
      respFirst = trans_hash_low.fetch(firstNum)
      teenishNum = num_array[2].to_i
      respSec = trans_hash_teens.fetch(teenishNum)
      return respFirst + "-hundred" + " " + respSec

    elsif num_length == 3 && num_array[1] != "0" && num_array[1] != "1"
      firstNum = num_array[0].to_i
      respFirst = trans_hash_low.fetch(firstNum)
      secNum = num_array[1].to_i
      respSec = trans_hash_tens.fetch(secNum)
      thirdNum = num_array[2].to_i
      respThird = trans_hash_low.fetch(thirdNum)
      return respFirst + "-hundred" + " " + respSec + respThird
    end

    end
  end
