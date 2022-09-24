`timescale 1ns / 1ps

module CosTb_270to360();

    reg [8:0]number_first_tb;
    wire whole_tb;
    wire [6:0]fraction_tb;
    wire sign_tb;
    reg [31:0]right_ones = 0;
    reg [31:0]wrong_ones = 0;
    
    Cos uut(.number_first(number_first_tb), 
            .whole(whole_tb), 
            .fraction(fraction_tb), 
            .sign(sign_tb)
            );
            
    initial begin
        number_first_tb = 270;
        //Exact Result = 0.0
        #5;
        if((whole_tb == 0)&(fraction_tb == 0)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 0)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 271;
        //Exact Result = 0.01745240643728313
        #5;
        if((whole_tb == 0)&(fraction_tb == 1)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 1)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 272;
        //Exact Result = 0.03489949670250128
        #5;
        if((whole_tb == 0)&(fraction_tb == 3)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 3)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 273;
        //Exact Result = 0.052335956242943946
        #5;
        if((whole_tb == 0)&(fraction_tb == 5)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 5)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 274;
        //Exact Result = 0.06975647374412522
        #5;
        if((whole_tb == 0)&(fraction_tb == 6)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 6)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 275;
        //Exact Result = 0.08715574274765789
        #5;
        if((whole_tb == 0)&(fraction_tb == 8)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 8)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 276;
        //Exact Result = 0.10452846326765299
        #5;
        if((whole_tb == 0)&(fraction_tb == 10)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 10)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 277;
        //Exact Result = 0.12186934340514768
        #5;
        if((whole_tb == 0)&(fraction_tb == 12)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 12)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 278;
        //Exact Result = 0.13917310096006547
        #5;
        if((whole_tb == 0)&(fraction_tb == 13)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 13)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 279;
        //Exact Result = 0.15643446504023067
        #5;
        if((whole_tb == 0)&(fraction_tb == 15)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 15)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 280;
        //Exact Result = 0.17364817766692997
        #5;
        if((whole_tb == 0)&(fraction_tb == 17)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 17)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 281;
        //Exact Result = 0.1908089953765451
        #5;
        if((whole_tb == 0)&(fraction_tb == 19)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 19)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 282;
        //Exact Result = 0.20791169081775943
        #5;
        if((whole_tb == 0)&(fraction_tb == 20)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 20)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 283;
        //Exact Result = 0.22495105434386492
        #5;
        if((whole_tb == 0)&(fraction_tb == 22)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 22)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 284;
        //Exact Result = 0.24192189559966742
        #5;
        if((whole_tb == 0)&(fraction_tb == 24)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 24)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 285;
        //Exact Result = 0.2588190451025203
        #5;
        if((whole_tb == 0)&(fraction_tb == 25)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 25)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 286;
        //Exact Result = 0.2756373558169994
        #5;
        if((whole_tb == 0)&(fraction_tb == 27)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 27)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 287;
        //Exact Result = 0.2923717047227367
        #5;
        if((whole_tb == 0)&(fraction_tb == 29)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 29)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 288;
        //Exact Result = 0.30901699437494723
        #5;
        if((whole_tb == 0)&(fraction_tb == 30)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 30)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 289;
        //Exact Result = 0.3255681544571563
        #5;
        if((whole_tb == 0)&(fraction_tb == 32)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 32)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 290;
        //Exact Result = 0.342020143325669
        #5;
        if((whole_tb == 0)&(fraction_tb == 34)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 34)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 291;
        //Exact Result = 0.3583679495453004
        #5;
        if((whole_tb == 0)&(fraction_tb == 35)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 35)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 292;
        //Exact Result = 0.37460659341591196
        #5;
        if((whole_tb == 0)&(fraction_tb == 37)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 37)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 293;
        //Exact Result = 0.3907311284892735
        #5;
        if((whole_tb == 0)&(fraction_tb == 39)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 39)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 294;
        //Exact Result = 0.40673664307579976
        #5;
        if((whole_tb == 0)&(fraction_tb == 40)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 40)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 295;
        //Exact Result = 0.4226182617406996
        #5;
        if((whole_tb == 0)&(fraction_tb == 42)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 42)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 296;
        //Exact Result = 0.4383711467890774
        #5;
        if((whole_tb == 0)&(fraction_tb == 43)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 43)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 297;
        //Exact Result = 0.45399049973954664
        #5;
        if((whole_tb == 0)&(fraction_tb == 45)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 45)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 298;
        //Exact Result = 0.4694715627858904
        #5;
        if((whole_tb == 0)&(fraction_tb == 46)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 46)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 299;
        //Exact Result = 0.4848096202463373
        #5;
        if((whole_tb == 0)&(fraction_tb == 48)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 48)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 300;
        //Exact Result = 0.5000000000000001
        #5;
        if((whole_tb == 0)&(fraction_tb == 50)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 50)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 301;
        //Exact Result = 0.5150380749100542
        #5;
        if((whole_tb == 0)&(fraction_tb == 51)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 51)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 302;
        //Exact Result = 0.5299192642332047
        #5;
        if((whole_tb == 0)&(fraction_tb == 52)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 52)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 303;
        //Exact Result = 0.5446390350150266
        #5;
        if((whole_tb == 0)&(fraction_tb == 54)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 54)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 304;
        //Exact Result = 0.559192903470747
        #5;
        if((whole_tb == 0)&(fraction_tb == 55)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 55)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 305;
        //Exact Result = 0.573576436351046
        #5;
        if((whole_tb == 0)&(fraction_tb == 57)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 57)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 306;
        //Exact Result = 0.5877852522924729
        #5;
        if((whole_tb == 0)&(fraction_tb == 58)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 58)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 307;
        //Exact Result = 0.6018150231520479
        #5;
        if((whole_tb == 0)&(fraction_tb == 60)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 60)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 308;
        //Exact Result = 0.6156614753256585
        #5;
        if((whole_tb == 0)&(fraction_tb == 61)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 61)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 309;
        //Exact Result = 0.6293203910498375
        #5;
        if((whole_tb == 0)&(fraction_tb == 62)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 62)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 310;
        //Exact Result = 0.6427876096865393
        #5;
        if((whole_tb == 0)&(fraction_tb == 64)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 64)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 311;
        //Exact Result = 0.656059028990507
        #5;
        if((whole_tb == 0)&(fraction_tb == 65)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 65)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 312;
        //Exact Result = 0.6691306063588578
        #5;
        if((whole_tb == 0)&(fraction_tb == 66)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 66)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 313;
        //Exact Result = 0.6819983600624986
        #5;
        if((whole_tb == 0)&(fraction_tb == 68)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 68)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 314;
        //Exact Result = 0.6946583704589973
        #5;
        if((whole_tb == 0)&(fraction_tb == 69)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 69)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 315;
        //Exact Result = 0.7071067811865474
        #5;
        if((whole_tb == 0)&(fraction_tb == 70)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 70)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 316;
        //Exact Result = 0.7193398003386509
        #5;
        if((whole_tb == 0)&(fraction_tb == 71)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 71)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 317;
        //Exact Result = 0.7313537016191707
        #5;
        if((whole_tb == 0)&(fraction_tb == 73)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 73)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 318;
        //Exact Result = 0.7431448254773942
        #5;
        if((whole_tb == 0)&(fraction_tb == 74)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 74)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 319;
        //Exact Result = 0.7547095802227719
        #5;
        if((whole_tb == 0)&(fraction_tb == 75)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 75)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 320;
        //Exact Result = 0.7660444431189778
        #5;
        if((whole_tb == 0)&(fraction_tb == 76)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 76)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 321;
        //Exact Result = 0.7771459614569706
        #5;
        if((whole_tb == 0)&(fraction_tb == 77)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 77)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 322;
        //Exact Result = 0.788010753606722
        #5;
        if((whole_tb == 0)&(fraction_tb == 78)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 78)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 323;
        //Exact Result = 0.7986355100472928
        #5;
        if((whole_tb == 0)&(fraction_tb == 79)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 79)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 324;
        //Exact Result = 0.8090169943749473
        #5;
        if((whole_tb == 0)&(fraction_tb == 80)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 80)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 325;
        //Exact Result = 0.8191520442889916
        #5;
        if((whole_tb == 0)&(fraction_tb == 81)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 81)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 326;
        //Exact Result = 0.8290375725550418
        #5;
        if((whole_tb == 0)&(fraction_tb == 82)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 82)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 327;
        //Exact Result = 0.838670567945424
        #5;
        if((whole_tb == 0)&(fraction_tb == 83)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 83)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 328;
        //Exact Result = 0.8480480961564258
        #5;
        if((whole_tb == 0)&(fraction_tb == 84)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 84)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 329;
        //Exact Result = 0.8571673007021121
        #5;
        if((whole_tb == 0)&(fraction_tb == 85)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 85)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 330;
        //Exact Result = 0.8660254037844384
        #5;
        if((whole_tb == 0)&(fraction_tb == 86)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 86)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 331;
        //Exact Result = 0.8746197071393959
        #5;
        if((whole_tb == 0)&(fraction_tb == 87)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 87)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 332;
        //Exact Result = 0.882947592858927
        #5;
        if((whole_tb == 0)&(fraction_tb == 88)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 88)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 333;
        //Exact Result = 0.8910065241883678
        #5;
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 334;
        //Exact Result = 0.8987940462991668
        #5;
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 335;
        //Exact Result = 0.90630778703665
        #5;
        if((whole_tb == 0)&(fraction_tb == 90)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 90)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 336;
        //Exact Result = 0.913545457642601
        #5;
        if((whole_tb == 0)&(fraction_tb == 91)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 91)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 337;
        //Exact Result = 0.9205048534524403
        #5;
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 338;
        //Exact Result = 0.9271838545667873
        #5;
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 339;
        //Exact Result = 0.9335804264972015
        #5;
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 340;
        //Exact Result = 0.9396926207859084
        #5;
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 341;
        //Exact Result = 0.9455185755993168
        #5;
        if((whole_tb == 0)&(fraction_tb == 94)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 94)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 342;
        //Exact Result = 0.9510565162951535
        #5;
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 343;
        //Exact Result = 0.9563047559630353
        #5;
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 344;
        //Exact Result = 0.9612616959383189
        #5;
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 345;
        //Exact Result = 0.9659258262890683
        #5;
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 346;
        //Exact Result = 0.9702957262759965
        #5;
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 347;
        //Exact Result = 0.9743700647852351
        #5;
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 348;
        //Exact Result = 0.9781476007338056
        #5;
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 349;
        //Exact Result = 0.981627183447664
        #5;
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 350;
        //Exact Result = 0.984807753012208
        #5;
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 351;
        //Exact Result = 0.9876883405951377
        #5;
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 352;
        //Exact Result = 0.9902680687415703
        #5;
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 353;
        //Exact Result = 0.9925461516413221
        #5;
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 354;
        //Exact Result = 0.9945218953682733
        #5;
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 355;
        //Exact Result = 0.9961946980917455
        #5;
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 356;
        //Exact Result = 0.9975640502598242
        #5;
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 357;
        //Exact Result = 0.9986295347545738
        #5;
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 358;
        //Exact Result = 0.9993908270190958
        #5;
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 359;
        //Exact Result = 0.9998476951563913
        #5;
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 360;
        //Exact Result = 1.0
        #5;
        if((whole_tb == 1)&(fraction_tb == 0)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 1)|(fraction_tb != 0)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;      
    end
endmodule     