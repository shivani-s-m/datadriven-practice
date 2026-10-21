def the_never_ending_sequence(n: int):
  ans = [0,1]
  if n == 0:
    return([])
  if n == 1:
    return([0])
  for i in range(2,n):
    ans.append(ans[-1]+ans[-2])
  return(ans)  
