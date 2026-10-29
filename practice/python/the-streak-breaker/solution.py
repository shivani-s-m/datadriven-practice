def remove_consecutive_dupes(items):
  if items:
    ans = [items[0]]
  else:
    return([])
  for i in range(1, len(items)):
    if items[i] != ans[-1]:
      ans.append(items[i])
  
  return(ans)
