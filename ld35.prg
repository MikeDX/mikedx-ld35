// LUDUM DARE #35
//
// THEME: SHAPESHIFT


PROGRAM ld35;

BEGIN
set_mode(640480);
load_fnt("font1.fnt");

graph=load_map("gfx/divld35.pcx");
x=320;
y=200;
size=50;
FRAME(2400);

write(1,320,400,4,"LD #35 - Shapeshift");

LOOP
    FRAME;
END

END
