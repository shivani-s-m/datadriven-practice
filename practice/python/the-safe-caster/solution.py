def safe_cast(value, type_name):
  supported_types = {
    'int': int,
    'float': float,
    'bool': bool
  }
  if type_name not in supported_types:
    return None 
  try:
    return supported_types[type_name](value)
  except(ValueError,TypeError, OverflowError):
    return None
