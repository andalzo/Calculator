`timescale 1ns / 1ps

module SinTb_0to90();

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
        number_first_tb = 0;
        //Exact Result = 0.0
        #5
        if((whole_tb == 0)&(fraction_tb == 0)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 0)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 1;
        //Exact Result = 0.01745240643728351
        #5
        if((whole_tb == 0)&(fraction_tb == 1)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 1)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 2;
        //Exact Result = 0.03489949670250097
        #5
        if((whole_tb == 0)&(fraction_tb == 3)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 3)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 3;
        //Exact Result = 0.052335956242943835
        #5
        if((whole_tb == 0)&(fraction_tb == 5)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 5)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 4;
        //Exact Result = 0.0697564737441253
        #5
        if((whole_tb == 0)&(fraction_tb == 6)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 6)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 5;
        //Exact Result = 0.08715574274765817
        #5
        if((whole_tb == 0)&(fraction_tb == 8)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 8)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 6;
        //Exact Result = 0.10452846326765347
        #5
        if((whole_tb == 0)&(fraction_tb == 10)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 10)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 7;
        //Exact Result = 0.12186934340514748
        #5
        if((whole_tb == 0)&(fraction_tb == 12)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 12)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 8;
        //Exact Result = 0.13917310096006544
        #5
        if((whole_tb == 0)&(fraction_tb == 13)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 13)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 9;
        //Exact Result = 0.15643446504023087
        #5
        if((whole_tb == 0)&(fraction_tb == 15)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 15)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 10;
        //Exact Result = 0.17364817766693033
        #5
        if((whole_tb == 0)&(fraction_tb == 17)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 17)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 11;
        //Exact Result = 0.1908089953765448
        #5
        if((whole_tb == 0)&(fraction_tb == 19)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 19)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 12;
        //Exact Result = 0.20791169081775934
        #5
        if((whole_tb == 0)&(fraction_tb == 20)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 20)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 13;
        //Exact Result = 0.224951054343865
        #5
        if((whole_tb == 0)&(fraction_tb == 22)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 22)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 14;
        //Exact Result = 0.24192189559966773
        #5
        if((whole_tb == 0)&(fraction_tb == 24)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 24)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 15;
        //Exact Result = 0.25881904510252074
        #5
        if((whole_tb == 0)&(fraction_tb == 25)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 25)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 16;
        //Exact Result = 0.27563735581699916
        #5
        if((whole_tb == 0)&(fraction_tb == 27)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 27)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 17;
        //Exact Result = 0.29237170472273677
        #5
        if((whole_tb == 0)&(fraction_tb == 29)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 29)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 18;
        //Exact Result = 0.3090169943749474
        #5
        if((whole_tb == 0)&(fraction_tb == 30)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 30)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 19;
        //Exact Result = 0.3255681544571567
        #5
        if((whole_tb == 0)&(fraction_tb == 32)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 32)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 20;
        //Exact Result = 0.3420201433256687
        #5
        if((whole_tb == 0)&(fraction_tb == 34)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 34)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 21;
        //Exact Result = 0.35836794954530027
        #5
        if((whole_tb == 0)&(fraction_tb == 35)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 35)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 22;
        //Exact Result = 0.374606593415912
        #5
        if((whole_tb == 0)&(fraction_tb == 37)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 37)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 23;
        //Exact Result = 0.39073112848927377
        #5
        if((whole_tb == 0)&(fraction_tb == 39)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 39)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 24;
        //Exact Result = 0.4067366430758002
        #5
        if((whole_tb == 0)&(fraction_tb == 40)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 40)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 25;
        //Exact Result = 0.42261826174069944
        #5
        if((whole_tb == 0)&(fraction_tb == 42)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 42)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 26;
        //Exact Result = 0.4383711467890774
        #5
        if((whole_tb == 0)&(fraction_tb == 43)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 43)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 27;
        //Exact Result = 0.45399049973954675
        #5
        if((whole_tb == 0)&(fraction_tb == 45)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 45)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 28;
        //Exact Result = 0.4694715627858908
        #5
        if((whole_tb == 0)&(fraction_tb == 46)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 46)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 29;
        //Exact Result = 0.48480962024633706
        #5
        if((whole_tb == 0)&(fraction_tb == 48)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 48)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 30;
        //Exact Result = 0.49999999999999994
        #5
        if((whole_tb == 0)&(fraction_tb == 50)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 50)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 31;
        //Exact Result = 0.5150380749100542
        #5
        if((whole_tb == 0)&(fraction_tb == 51)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 51)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 32;
        //Exact Result = 0.5299192642332049
        #5
        if((whole_tb == 0)&(fraction_tb == 52)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 52)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 33;
        //Exact Result = 0.5446390350150271
        #5
        if((whole_tb == 0)&(fraction_tb == 54)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 54)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 34;
        //Exact Result = 0.5591929034707469
        #5
        if((whole_tb == 0)&(fraction_tb == 55)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 55)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 35;
        //Exact Result = 0.573576436351046
        #5
        if((whole_tb == 0)&(fraction_tb == 57)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 57)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 36;
        //Exact Result = 0.5877852522924731
        #5
        if((whole_tb == 0)&(fraction_tb == 58)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 58)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 37;
        //Exact Result = 0.6018150231520483
        #5
        if((whole_tb == 0)&(fraction_tb == 60)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 60)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 38;
        //Exact Result = 0.6156614753256583
        #5
        if((whole_tb == 0)&(fraction_tb == 61)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 61)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 39;
        //Exact Result = 0.6293203910498374
        #5
        if((whole_tb == 0)&(fraction_tb == 62)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 62)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 40;
        //Exact Result = 0.6427876096865393
        #5
        if((whole_tb == 0)&(fraction_tb == 64)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 64)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 41;
        //Exact Result = 0.6560590289905073
        #5
        if((whole_tb == 0)&(fraction_tb == 65)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 65)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 42;
        //Exact Result = 0.6691306063588582
        #5
        if((whole_tb == 0)&(fraction_tb == 66)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 66)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 43;
        //Exact Result = 0.6819983600624985
        #5
        if((whole_tb == 0)&(fraction_tb == 68)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 68)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 44;
        //Exact Result = 0.6946583704589973
        #5
        if((whole_tb == 0)&(fraction_tb == 69)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 69)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 45;
        //Exact Result = 0.7071067811865476
        #5
        if((whole_tb == 0)&(fraction_tb == 70)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 70)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 46;
        //Exact Result = 0.7193398003386512
        #5
        if((whole_tb == 0)&(fraction_tb == 71)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 71)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 47;
        //Exact Result = 0.7313537016191705
        #5
        if((whole_tb == 0)&(fraction_tb == 73)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 73)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 48;
        //Exact Result = 0.7431448254773942
        #5
        if((whole_tb == 0)&(fraction_tb == 74)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 74)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 49;
        //Exact Result = 0.754709580222772
        #5
        if((whole_tb == 0)&(fraction_tb == 75)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 75)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 50;
        //Exact Result = 0.766044443118978
        #5
        if((whole_tb == 0)&(fraction_tb == 76)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 76)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 51;
        //Exact Result = 0.7771459614569709
        #5
        if((whole_tb == 0)&(fraction_tb == 77)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 77)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 52;
        //Exact Result = 0.788010753606722
        #5
        if((whole_tb == 0)&(fraction_tb == 78)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 78)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 53;
        //Exact Result = 0.7986355100472928
        #5
        if((whole_tb == 0)&(fraction_tb == 79)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 79)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 54;
        //Exact Result = 0.8090169943749475
        #5
        if((whole_tb == 0)&(fraction_tb == 80)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 80)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 55;
        //Exact Result = 0.8191520442889918
        #5
        if((whole_tb == 0)&(fraction_tb == 81)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 81)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 56;
        //Exact Result = 0.8290375725550417
        #5
        if((whole_tb == 0)&(fraction_tb == 82)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 82)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 57;
        //Exact Result = 0.838670567945424
        #5
        if((whole_tb == 0)&(fraction_tb == 83)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 83)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 58;
        //Exact Result = 0.8480480961564261
        #5
        if((whole_tb == 0)&(fraction_tb == 84)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 84)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 59;
        //Exact Result = 0.8571673007021123
        #5
        if((whole_tb == 0)&(fraction_tb == 85)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 85)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 60;
        //Exact Result = 0.8660254037844386
        #5
        if((whole_tb == 0)&(fraction_tb == 86)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 86)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 61;
        //Exact Result = 0.8746197071393957
        #5
        if((whole_tb == 0)&(fraction_tb == 87)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 87)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 62;
        //Exact Result = 0.8829475928589269
        #5
        if((whole_tb == 0)&(fraction_tb == 88)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 88)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 63;
        //Exact Result = 0.8910065241883678
        #5
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 64;
        //Exact Result = 0.898794046299167
        #5
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 65;
        //Exact Result = 0.9063077870366499
        #5
        if((whole_tb == 0)&(fraction_tb == 90)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 90)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 66;
        //Exact Result = 0.9135454576426009
        #5
        if((whole_tb == 0)&(fraction_tb == 91)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 91)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 67;
        //Exact Result = 0.9205048534524404
        #5
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 68;
        //Exact Result = 0.9271838545667874
        #5
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 69;
        //Exact Result = 0.9335804264972017
        #5
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 70;
        //Exact Result = 0.9396926207859083
        #5
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 71;
        //Exact Result = 0.9455185755993167
        #5
        if((whole_tb == 0)&(fraction_tb == 94)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 94)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 72;
        //Exact Result = 0.9510565162951535
        #5
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 73;
        //Exact Result = 0.9563047559630354
        #5
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 74;
        //Exact Result = 0.9612616959383189
        #5
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 75;
        //Exact Result = 0.9659258262890683
        #5
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 76;
        //Exact Result = 0.9702957262759965
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 77;
        //Exact Result = 0.9743700647852352
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 78;
        //Exact Result = 0.9781476007338056
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 79;
        //Exact Result = 0.981627183447664
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 80;
        //Exact Result = 0.984807753012208
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 81;
        //Exact Result = 0.9876883405951378
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 82;
        //Exact Result = 0.9902680687415704
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 83;
        //Exact Result = 0.992546151641322
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 84;
        //Exact Result = 0.9945218953682733
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 85;
        //Exact Result = 0.9961946980917455
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 86;
        //Exact Result = 0.9975640502598242
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 87;
        //Exact Result = 0.9986295347545738
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 88;
        //Exact Result = 0.9993908270190958
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 89;
        //Exact Result = 0.9998476951563913
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 90;
        //Exact Result = 1.0
        #5
        if((whole_tb == 1)&(fraction_tb == 0)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 1)|(fraction_tb != 0)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
    end

endmodule
