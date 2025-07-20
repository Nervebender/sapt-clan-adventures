

function scr_fade_to_room(_room) {
    with (obj_fade_controller) {
        fading_out = true;
        fading_in = false;
        target_room = _room;
    }
}