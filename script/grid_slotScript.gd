extends Panel

var planter: Node = null  # เก็บ node กระถางที่อยู่ในช่องนี้

func has_planter() -> bool:
	return planter != null  # คืนค่า true ถ้ามีกระถางในช่องนี้

func set_planter(p: Node):
	if planter:
		planter.queue_free()  # ถ้ามีกระถางอยู่แล้ว ลบทิ้งก่อน
	planter = p              # ตั้งกระถางใหม่
	add_child(p)             # เอากระถางมาใส่ใน node นี้

func can_drop_data(_pos, data):
	return data is Control   # ตรวจว่า data ที่ลากมาคือ node ประเภท Control (เช่น Planter)

func drop_data(_pos, data):
	set_planter(data)        # วางกระถางที่ลากมาลงช่องนี้
