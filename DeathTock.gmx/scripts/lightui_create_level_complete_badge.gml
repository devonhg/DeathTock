///lightui_create_level_complete_badge(x,y,star_count,text)
var level_badge_id = instance_create(0, 0, obj_lightui_level_complete_badge);

with(level_badge_id)
{
    _x = argument0;
    _y = argument1;
    _index = clamp(argument2, 0, 3);
    _t = argument3;
    _parent = other.id;
    with(other)
    {
        lightui_add_child(level_badge_id);
    }
}

return level_badge_id;
