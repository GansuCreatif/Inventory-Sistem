draw_sprite_stretched
(
	spr_inventory, //sprite
	0, //frame
	x-6, //koordinat x
	y-6, //koordinat y
	12+rowLength*36, //Lebar inventory
	12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36 //Tinggi inventory

);

for (var i = 0; i < INVENTORY_SLOTS; i += 1)
{
	var xx = x + (i mod rowLength) * 36 + 2;
	var yy = y + (i div rowLength) * 36 + 2;
	var hover = (obj_Mouse.inventoryHover == id) && (obj_Mouse.slotHover == i)
	draw_sprite(spr_Slots,0,xx,yy)
	if(inventory[i] !=-1)
	{
		var alpha = 1.0;
		if(obj_Mouse.inventoryDrag == id) && (obj_Mouse.slotHover == i) alpha = 0.5;
		draw_set_alpha(alpha);
		draw_sprite(sprItem,inventory[i],xx,yy);
		draw_set_alpha(1.0);
	}
}