//Movement and Collision
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check(vk_space);
hsp = (key_right - key_left) * hsp_walk;
vsp = vsp + grv;
if (place_meeting(x, y + 1, blocks)) and (key_jump) {
    vsp = vsp_jump; 
}
var onepixel = sign(hsp)

if (place_meeting(x + hsp, y, blocks)) {
    while (!place_meeting(x + onepixel, y, blocks)) {
        x = x + onepixel;
    }
    hsp = 0;
}
x = x + hsp;
var onepixel = sign(vsp)
if (place_meeting(x, y + vsp, blocks)) {
    while (!place_meeting(x, y + onepixel, blocks)) {
        y = y + onepixel;
    }
    vsp = 0;
}
y = y + vsp