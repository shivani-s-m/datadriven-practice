from collections import defaultdict
def most_frequent(items: list) -> list:
  if not items:
    return []
  ans = []
  freqdict = defaultdict(int)
  for i in items: 
    if i in freqdict:
      freqdict[i]+=1
    else:
      freqdict[i]=1
  maxCount = max(freqdict.values())
  for i in freqdict:
     if freqdict[i] == maxCount:
      ans.append(i)
  
  return sorted(ans)
