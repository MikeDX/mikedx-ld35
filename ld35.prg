// LUDUM DARE #35
//
// THEME: SHAPESHIFT


PROGRAM ld35;
GLOBAL
shiftsound;
music1;

LOCAL

animtimer=0;
animspeed=5;
goff=0;

BEGIN
set_mode(640480);
load_fpg("ld35.fpg");
shiftsound=load_wav("sfx/shift.wav",0);
music1=load_song("sfx/music1.ogg",1);
load_fnt("font2_32.fnt");
graph=100;//load_map("gfx/divld35.pcx");
//force_pal("gfx/divld35.pcx");

x=320;
y=200;
size=50;
FRAME(2400);
song(music1);

//force_pal("ld35.fpg");
//graph=0;
//set_mode(640480);
write(1,320,400,4,"LD #35 - Shapeshift");
player();
LOOP
    FRAME;
END

END


PROCESS player()

private
gframe=1;
mleft=0;
newx=0;
BEGIN

graph=1;
size=300;
y=380;

LOOP
    newx=320+(sin(timer*1000)*190)/1000;
    if(newx!=x)
        if(newx<x)
            flags=1;
        else
            flags=0;
        end
    end

    x=newx;
    //y=mouse.y;
    animtimer++;
    if(x>131)
        if(!mleft)
            mleft=1;
            trans(x,y);
        end
    else
        mleft=0;
    end

    if(animtimer>animspeed)
        animtimer=0;
        gframe=1+(gframe==1);
    end
    graph = goff*2+gframe;

    frame;

END

END


PROCESS enemy()

BEGIN

END

PROCESS trans(x,y)


BEGIN
graph=7;
size=0;
//LOOP
sound(shiftsound,256,256);

while (angle<80000*12)
size+=20;
x=father.x;
y=father.y;
angle+=80000;

FRAME;
END
father.goff++;
            if(father.goff>2)
                father.goff=0;
            end
            frame;

//END

END
