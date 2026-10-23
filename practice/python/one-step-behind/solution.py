def lag(values: list) -> list:
  if values:
    ans = [None]
  else:
    ans = []
  for i in range(1, len(values)):
    ans.append(values[i-1])
  return(ans)
