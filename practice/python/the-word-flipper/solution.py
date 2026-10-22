def reverse_words(sentence):
  ans=str()
  sentence_arr = sentence.split()
  for i in range(1, len(sentence_arr)+1):
    if i == 1:
      ans = sentence_arr[-i]
    else:
      ans+= ' '+ sentence_arr[-i]
  
  return(ans)
