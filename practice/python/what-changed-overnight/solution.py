def schema_diff(new_schema: list[dict], old_schema: list[dict]) -> dict:
  old_schema_dict = {}
  new_schema_dict = {}
  for i in old_schema: 
    old_schema_dict[i['name']] = i['type']
  for i in new_schema:
    new_schema_dict[i['name']] = i['type']
  added = []
  for i in new_schema_dict.keys():
    if i not in old_schema_dict.keys():
      added.append(i)
      
  removed=[]
  type_changed=[]
  for i in old_schema_dict:
    if i not in new_schema_dict:
      removed.append(i) 
    else:
      if new_schema_dict[i]!= old_schema_dict[i]:
        type_changed.append({'name': i, 'new_type': new_schema_dict[i], 'old_type': old_schema_dict[i]})
  added.sort()
  removed.sort()
  type_changed.sort(key=lambda x: x['name'])

  return {
    "added": added,
    "removed": removed,
    "type_changed": type_changed
  }
