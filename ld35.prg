// LUDUM DARE #35
//
// THEME: SHAPESHIFTING


PROGRAM ld35;

BEGIN
set_mode(640480);
graph=load_map("gfx/divld35.pcx");
x=320;
y=200;
size=25;
write(0,160,100,4,"LD #35 - Shapeshift");

LOOP
    FRAME;
END

END
