extends Node

static var shallow_copy: Callable = func(dict: Dictionary) -> Dictionary:
	return shallow_merge.call(dict, {})


static var shallow_merge: Callable = func(src_dict: Dictionary, dest_dict: Dictionary) -> Dictionary:
	for i in src_dict.keys():
		dest_dict[i] = src_dict[i]
	return dest_dict


static var array_values = func(data: Array) -> Array[Variant]:
	var values = []
	
	for item in data:
		for value in item.values():
			values.append(value)
		
	return values


static var array_keys = func(data: Array) -> Array[Variant]:
	var keys = []
	
	for item in data:
		for key in item.keys():
			keys.append(key)
		
	return keys
