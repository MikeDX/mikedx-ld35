// LUDUM DARE #35
//
// THEME: SHAPESHIFT


PROGRAM ld35;

LOCAL

animtimer=0;
animspeed=5;

BEGIN
set_mode(640480);
load_fnt("font2_32.fnt");
graph=load_map("gfx/divld35.pcx");
force_pal("gfx/divld35.pcx");

x=320;
y=200;
size=50;
FRAME(2400);
load_fpg("ld35.fpg");
force_pal("gfx/divld35.pcx");
graph=0;

//write(1,320,400,4,"LD #35 - Shapeshift");
player();
LOOP
    FRAME;
END

END


PROCESS player()


BEGIN

graph=1;
size=300;

LOOP
    x=mouse.x;
    y=mouse.y;
    animtimer++;
    if(animtimer>animspeed)
        animtimer=0;
        graph=1+(graph==1);
    end

    frame;

END

END


PROCESS enemy()

BEGIN

END


