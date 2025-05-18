//numbre siendo escrito
var larguin, numbre;
numbre = argument0;
larguin = string_length(argument0);
if(keyboard_key == vk_backspace){
    if(larguin > 1){
        numbre = string_copy(numbre, 1, larguin - 1);
    }
    else{
        numbre = "";
    }
}
else if(larguin < 16){
    switch(keyboard_lastkey){
        case vk_space:
            numbre += "_"; break;
        case ord('0'): case vk_numpad0:
            numbre += "0"; break;
        case ord('1'): case vk_numpad1:
            numbre += "1"; break;
        case ord('2'): case vk_numpad2:
            numbre += "2"; break;
        case ord('3'): case vk_numpad3:
            numbre += "3"; break;
        case ord('4'): case vk_numpad4:
            numbre += "4"; break;
        case ord('5'): case vk_numpad5:
            numbre += "5"; break;
        case ord('6'): case vk_numpad6:
            numbre += "6"; break;
        case ord('7'): case vk_numpad7:
            numbre += "7"; break;
        case ord('8'): case vk_numpad8:
            numbre += "8"; break;
        case ord('9'): case vk_numpad9:
            numbre += "9"; break;
        case ord('A'): case vk_left:
            numbre += "a"; break;
        case ord('B'):
            numbre += "b"; break;
        case ord('C'):
            numbre += "c"; break;
        case ord('D'): case vk_right:
            numbre += "d"; break;
        case ord('E'):
            numbre += "e"; break;
        case ord('F'):
            numbre += "f"; break;
        case ord('G'):
            numbre += "g"; break;
        case ord('H'):
            numbre += "h"; break;
        case ord('I'):
            numbre += "i"; break;
        case ord('J'):
            numbre += "j"; break;
        case ord('K'):
            numbre += "k"; break;
        case ord('L'):
            numbre += "l"; break;
        case ord('M'):
            numbre += "m"; break;
        case ord('N'):
            numbre += "n"; break;
        case ord('O'):
            numbre += "o"; break;
        case ord('P'):
            numbre += "p"; break;
        case ord('Q'):
            numbre += "q"; break;
        case ord('R'):
            numbre += "r"; break;
        case ord('S'): case vk_down:
            numbre += "s"; break;
        case ord('T'):
            numbre += "t"; break;
        case ord('U'):
            numbre += "u"; break;
        case ord('V'):
            numbre += "v"; break;
        case ord('W'): case vk_up:
            numbre += "w"; break;
        case ord('X'):
            numbre += "x"; break;
        case ord('Y'):
            numbre += "y"; break;
        case ord('Z'):
            numbre += "z"; break;
    }
}
return(numbre);
