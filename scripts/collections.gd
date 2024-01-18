extends Node

static var shallow_copy: Callable = func(dict: Dictionary) -> Dictionary:
	return shallow_merge.call(dict, {})


static var shallow_merge: Callable = func(src_dict: Dictionary, dest_dict: Dictionary) -> Dictionary:
	for i in src_dict.keys():
		dest_dict[i] = src_dict[i]
	return dest_dict
