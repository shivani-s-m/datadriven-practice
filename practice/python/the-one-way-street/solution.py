def longest_monotonic_run(arr: list[int]) -> int:
  if not arr:
    return(0)
  ans = 1
  inc = 1
  dec = 1 
  for i in range(1,len(arr)):
    if arr[i-1]< arr[i]:
      inc+=1
      dec = 1
    elif arr[i-1]>arr[i]:
      dec+=1
      inc=1
    else:
      dec+=1
      inc+=1
    ans=max(ans, inc, dec)
  return(ans)  
