`timescale 1ns / 1ps

module SinTb_270to360();

    reg [8:0]number_first_tb;
    wire whole_tb;
    wire [6:0]fraction_tb;
    wire sign_tb;
    reg [31:0]right_ones = 0;
    reg [31:0]wrong_ones = 0;
    
    Sin uut(.number_first(number_first_tb), 
            .whole(whole_tb), 
            .fraction(fraction_tb), 
            .sign(sign_tb)
            );
    
    initial begin
        number_first_tb = 270;
        //Exact Result = -1.0
        #5
        if((whole_tb == 1)&(fraction_tb == 0)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 1)|(fraction_tb != 0)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 271;
        //Exact Result = -0.9998476951563913
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 272;
        //Exact Result = -0.9993908270190958
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 273;
        //Exact Result = -0.9986295347545738
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 274;
        //Exact Result = -0.9975640502598243
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 275;
        //Exact Result = -0.9961946980917455
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 276;
        //Exact Result = -0.9945218953682734
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 277;
        //Exact Result = -0.992546151641322
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 278;
        //Exact Result = -0.9902680687415704
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 279;
        //Exact Result = -0.9876883405951378
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 280;
        //Exact Result = -0.9848077530122081
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 281;
        //Exact Result = -0.9816271834476639
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 282;
        //Exact Result = -0.9781476007338056
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 283;
        //Exact Result = -0.9743700647852352
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 284;
        //Exact Result = -0.9702957262759966
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 285;
        //Exact Result = -0.9659258262890684
        #5
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 286;
        //Exact Result = -0.9612616959383188
        #5
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 287;
        //Exact Result = -0.9563047559630354
        #5
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 288;
        //Exact Result = -0.9510565162951536
        #5
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 289;
        //Exact Result = -0.945518575599317
        #5
        if((whole_tb == 0)&(fraction_tb == 94)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 94)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 290;
        //Exact Result = -0.9396926207859083
        #5
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 291;
        //Exact Result = -0.9335804264972017
        #5
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 292;
        //Exact Result = -0.9271838545667874
        #5
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 293;
        //Exact Result = -0.9205048534524405
        #5
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 294;
        //Exact Result = -0.9135454576426011
        #5
        if((whole_tb == 0)&(fraction_tb == 91)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 91)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 295;
        //Exact Result = -0.9063077870366498
        #5
        if((whole_tb == 0)&(fraction_tb == 90)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 90)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 296;
        //Exact Result = -0.898794046299167
        #5
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 297;
        //Exact Result = -0.891006524188368
        #5
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 298;
        //Exact Result = -0.8829475928589271
        #5
        if((whole_tb == 0)&(fraction_tb == 88)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 88)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 299;
        //Exact Result = -0.8746197071393956
        #5
        if((whole_tb == 0)&(fraction_tb == 87)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 87)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 300;
        //Exact Result = -0.8660254037844386
        #5
        if((whole_tb == 0)&(fraction_tb == 86)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 86)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 301;
        //Exact Result = -0.8571673007021123
        #5
        if((whole_tb == 0)&(fraction_tb == 85)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 85)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 302;
        //Exact Result = -0.8480480961564261
        #5
        if((whole_tb == 0)&(fraction_tb == 84)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 84)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 303;
        //Exact Result = -0.8386705679454243
        #5
        if((whole_tb == 0)&(fraction_tb == 83)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 83)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 304;
        //Exact Result = -0.8290375725550416
        #5
        if((whole_tb == 0)&(fraction_tb == 82)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 82)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 305;
        //Exact Result = -0.8191520442889918
        #5
        if((whole_tb == 0)&(fraction_tb == 81)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 81)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 306;
        //Exact Result = -0.8090169943749476
        #5
        if((whole_tb == 0)&(fraction_tb == 80)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 80)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 307;
        //Exact Result = -0.798635510047293
        #5
        if((whole_tb == 0)&(fraction_tb == 79)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 79)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 308;
        //Exact Result = -0.7880107536067218
        #5
        if((whole_tb == 0)&(fraction_tb == 78)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 78)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 309;
        //Exact Result = -0.7771459614569708
        #5
        if((whole_tb == 0)&(fraction_tb == 77)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 77)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 310;
        //Exact Result = -0.7660444431189781
        #5
        if((whole_tb == 0)&(fraction_tb == 76)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 76)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 311;
        //Exact Result = -0.7547095802227722
        #5
        if((whole_tb == 0)&(fraction_tb == 75)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 75)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 312;
        //Exact Result = -0.7431448254773946
        #5
        if((whole_tb == 0)&(fraction_tb == 74)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 74)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 313;
        //Exact Result = -0.7313537016191703
        #5
        if((whole_tb == 0)&(fraction_tb == 73)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 73)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 314;
        //Exact Result = -0.7193398003386511
        #5
        if((whole_tb == 0)&(fraction_tb == 71)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 71)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 315;
        //Exact Result = -0.7071067811865477
        #5
        if((whole_tb == 0)&(fraction_tb == 70)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 70)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 316;
        //Exact Result = -0.6946583704589976
        #5
        if((whole_tb == 0)&(fraction_tb == 69)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 69)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 317;
        //Exact Result = -0.6819983600624983
        #5
        if((whole_tb == 0)&(fraction_tb == 68)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 68)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 318;
        //Exact Result = -0.6691306063588581
        #5
        if((whole_tb == 0)&(fraction_tb == 66)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 66)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 319;
        //Exact Result = -0.6560590289905074
        #5
        if((whole_tb == 0)&(fraction_tb == 65)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 65)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 320;
        //Exact Result = -0.6427876096865396
        #5
        if((whole_tb == 0)&(fraction_tb == 64)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 64)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 321;
        //Exact Result = -0.6293203910498378
        #5
        if((whole_tb == 0)&(fraction_tb == 62)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 62)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 322;
        //Exact Result = -0.6156614753256582
        #5
        if((whole_tb == 0)&(fraction_tb == 61)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 61)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 323;
        //Exact Result = -0.6018150231520483
        #5
        if((whole_tb == 0)&(fraction_tb == 60)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 60)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 324;
        //Exact Result = -0.5877852522924734
        #5
        if((whole_tb == 0)&(fraction_tb == 58)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 58)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 325;
        //Exact Result = -0.5735764363510465
        #5
        if((whole_tb == 0)&(fraction_tb == 57)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 57)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 326;
        //Exact Result = -0.5591929034707466
        #5
        if((whole_tb == 0)&(fraction_tb == 55)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 55)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 327;
        //Exact Result = -0.544639035015027
        #5
        if((whole_tb == 0)&(fraction_tb == 54)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 54)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 328;
        //Exact Result = -0.529919264233205
        #5
        if((whole_tb == 0)&(fraction_tb == 52)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 52)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 329;
        //Exact Result = -0.5150380749100545
        #5
        if((whole_tb == 0)&(fraction_tb == 51)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 51)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 330;
        //Exact Result = -0.5000000000000004
        #5
        if((whole_tb == 0)&(fraction_tb == 50)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 50)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 331;
        //Exact Result = -0.4848096202463369
        #5
        if((whole_tb == 0)&(fraction_tb == 48)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 48)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 332;
        //Exact Result = -0.4694715627858908
        #5
        if((whole_tb == 0)&(fraction_tb == 46)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 46)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 333;
        //Exact Result = -0.45399049973954697
        #5
        if((whole_tb == 0)&(fraction_tb == 45)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 45)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 334;
        //Exact Result = -0.4383711467890778
        #5
        if((whole_tb == 0)&(fraction_tb == 43)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 43)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 335;
        //Exact Result = -0.4226182617406992
        #5
        if((whole_tb == 0)&(fraction_tb == 42)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 42)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 336;
        //Exact Result = -0.40673664307580015
        #5
        if((whole_tb == 0)&(fraction_tb == 40)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 40)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 337;
        //Exact Result = -0.3907311284892739
        #5
        if((whole_tb == 0)&(fraction_tb == 39)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 39)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 338;
        //Exact Result = -0.37460659341591235
        #5
        if((whole_tb == 0)&(fraction_tb == 37)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 37)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 339;
        //Exact Result = -0.35836794954530077
        #5
        if((whole_tb == 0)&(fraction_tb == 35)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 35)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 340;
        //Exact Result = -0.3420201433256686
        #5
        if((whole_tb == 0)&(fraction_tb == 34)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 34)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 341;
        //Exact Result = -0.3255681544571567
        #5
        if((whole_tb == 0)&(fraction_tb == 32)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 32)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 342;
        //Exact Result = -0.3090169943749477
        #5
        if((whole_tb == 0)&(fraction_tb == 30)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 30)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 343;
        //Exact Result = -0.29237170472273716
        #5
        if((whole_tb == 0)&(fraction_tb == 29)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 29)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 344;
        //Exact Result = -0.27563735581699894
        #5
        if((whole_tb == 0)&(fraction_tb == 27)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 27)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 345;
        //Exact Result = -0.2588190451025207
        #5
        if((whole_tb == 0)&(fraction_tb == 25)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 25)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 346;
        //Exact Result = -0.24192189559966787
        #5
        if((whole_tb == 0)&(fraction_tb == 24)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 24)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 347;
        //Exact Result = -0.22495105434386534
        #5
        if((whole_tb == 0)&(fraction_tb == 22)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 22)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 348;
        //Exact Result = -0.20791169081775987
        #5
        if((whole_tb == 0)&(fraction_tb == 20)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 20)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 349;
        //Exact Result = -0.19080899537654467
        #5
        if((whole_tb == 0)&(fraction_tb == 19)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 19)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 350;
        //Exact Result = -0.1736481776669304
        #5
        if((whole_tb == 0)&(fraction_tb == 17)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 17)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 351;
        //Exact Result = -0.1564344650402311
        #5
        if((whole_tb == 0)&(fraction_tb == 15)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 15)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 352;
        //Exact Result = -0.13917310096006588
        #5
        if((whole_tb == 0)&(fraction_tb == 13)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 13)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 353;
        //Exact Result = -0.12186934340514723
        #5
        if((whole_tb == 0)&(fraction_tb == 12)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 12)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 354;
        //Exact Result = -0.10452846326765342
        #5
        if((whole_tb == 0)&(fraction_tb == 10)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 10)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 355;
        //Exact Result = -0.08715574274765832
        #5
        if((whole_tb == 0)&(fraction_tb == 8)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 8)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 356;
        //Exact Result = -0.06975647374412564
        #5
        if((whole_tb == 0)&(fraction_tb == 6)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 6)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 357;
        //Exact Result = -0.05233595624294437
        #5
        if((whole_tb == 0)&(fraction_tb == 5)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 5)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 358;
        //Exact Result = -0.034899496702500823
        #5
        if((whole_tb == 0)&(fraction_tb == 3)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 3)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 359;
        //Exact Result = -0.01745240643728356
        #5
        if((whole_tb == 0)&(fraction_tb == 1)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 1)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 360;
        //Exact Result = 0.0
        #5
        if((whole_tb == 0)&(fraction_tb == 0)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 0)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
    end

endmodule
