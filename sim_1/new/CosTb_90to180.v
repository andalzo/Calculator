`timescale 1ns / 1ps

module CosTb_90to180();

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
        number_first_tb = 90;
        //Exact Result = 0.0
        #5
        if((whole_tb == 0)&(fraction_tb == 0)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 0)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 91;
        //Exact Result = -0.017452406437283477
        #5
        if((whole_tb == 0)&(fraction_tb == 1)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 1)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 92;
        //Exact Result = -0.034899496702500955
        #5
        if((whole_tb == 0)&(fraction_tb == 3)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 3)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 93;
        //Exact Result = -0.05233595624294384
        #5
        if((whole_tb == 0)&(fraction_tb == 5)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 5)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 94;
        //Exact Result = -0.06975647374412533
        #5
        if((whole_tb == 0)&(fraction_tb == 6)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 6)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 95;
        //Exact Result = -0.08715574274765824
        #5
        if((whole_tb == 0)&(fraction_tb == 8)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 8)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 96;
        //Exact Result = -0.10452846326765355
        #5
        if((whole_tb == 0)&(fraction_tb == 10)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 10)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 97;
        //Exact Result = -0.12186934340514737
        #5
        if((whole_tb == 0)&(fraction_tb == 12)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 12)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 98;
        //Exact Result = -0.13917310096006535
        #5
        if((whole_tb == 0)&(fraction_tb == 13)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 13)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 99;
        //Exact Result = -0.1564344650402308
        #5
        if((whole_tb == 0)&(fraction_tb == 15)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 15)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 100;
        //Exact Result = -0.1736481776669303
        #5
        if((whole_tb == 0)&(fraction_tb == 17)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 17)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 101;
        //Exact Result = -0.1908089953765448
        #5
        if((whole_tb == 0)&(fraction_tb == 19)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 19)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 102;
        //Exact Result = -0.20791169081775934
        #5
        if((whole_tb == 0)&(fraction_tb == 20)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 20)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 103;
        //Exact Result = -0.22495105434386503
        #5
        if((whole_tb == 0)&(fraction_tb == 22)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 22)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 104;
        //Exact Result = -0.24192189559966779
        #5
        if((whole_tb == 0)&(fraction_tb == 24)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 24)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 105;
        //Exact Result = -0.25881904510252085
        #5
        if((whole_tb == 0)&(fraction_tb == 25)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 25)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 106;
        //Exact Result = -0.27563735581699905
        #5
        if((whole_tb == 0)&(fraction_tb == 27)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 27)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 107;
        //Exact Result = -0.29237170472273666
        #5
        if((whole_tb == 0)&(fraction_tb == 29)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 29)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 108;
        //Exact Result = -0.30901699437494734
        #5
        if((whole_tb == 0)&(fraction_tb == 30)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 30)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 109;
        //Exact Result = -0.32556815445715664
        #5
        if((whole_tb == 0)&(fraction_tb == 32)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 32)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 110;
        //Exact Result = -0.3420201433256687
        #5
        if((whole_tb == 0)&(fraction_tb == 34)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 34)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 111;
        //Exact Result = -0.35836794954530027
        #5
        if((whole_tb == 0)&(fraction_tb == 35)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 35)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 112;
        //Exact Result = -0.37460659341591207
        #5
        if((whole_tb == 0)&(fraction_tb == 37)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 37)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 113;
        //Exact Result = -0.3907311284892738
        #5
        if((whole_tb == 0)&(fraction_tb == 39)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 39)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 114;
        //Exact Result = -0.40673664307580026
        #5
        if((whole_tb == 0)&(fraction_tb == 40)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 40)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 115;
        //Exact Result = -0.42261826174069933
        #5
        if((whole_tb == 0)&(fraction_tb == 42)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 42)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 116;
        //Exact Result = -0.4383711467890775
        #5
        if((whole_tb == 0)&(fraction_tb == 43)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 43)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 117;
        //Exact Result = -0.45399049973954675
        #5
        if((whole_tb == 0)&(fraction_tb == 45)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 45)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 118;
        //Exact Result = -0.4694715627858909
        #5
        if((whole_tb == 0)&(fraction_tb == 46)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 46)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 119;
        //Exact Result = -0.484809620246337
        #5
        if((whole_tb == 0)&(fraction_tb == 48)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 48)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 120;
        //Exact Result = -0.4999999999999998
        #5
        if((whole_tb == 0)&(fraction_tb == 50)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 50)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 121;
        //Exact Result = -0.5150380749100543
        #5
        if((whole_tb == 0)&(fraction_tb == 51)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 51)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 122;
        //Exact Result = -0.5299192642332048
        #5
        if((whole_tb == 0)&(fraction_tb == 52)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 52)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 123;
        //Exact Result = -0.5446390350150271
        #5
        if((whole_tb == 0)&(fraction_tb == 54)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 54)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 124;
        //Exact Result = -0.5591929034707467
        #5
        if((whole_tb == 0)&(fraction_tb == 55)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 55)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 125;
        //Exact Result = -0.5735764363510462
        #5
        if((whole_tb == 0)&(fraction_tb == 57)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 57)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 126;
        //Exact Result = -0.587785252292473
        #5
        if((whole_tb == 0)&(fraction_tb == 58)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 58)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 127;
        //Exact Result = -0.6018150231520484
        #5
        if((whole_tb == 0)&(fraction_tb == 60)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 60)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 128;
        //Exact Result = -0.6156614753256583
        #5
        if((whole_tb == 0)&(fraction_tb == 61)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 61)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 129;
        //Exact Result = -0.6293203910498373
        #5
        if((whole_tb == 0)&(fraction_tb == 62)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 62)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 130;
        //Exact Result = -0.6427876096865394
        #5
        if((whole_tb == 0)&(fraction_tb == 64)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 64)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 131;
        //Exact Result = -0.6560590289905072
        #5
        if((whole_tb == 0)&(fraction_tb == 65)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 65)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 132;
        //Exact Result = -0.6691306063588582
        #5
        if((whole_tb == 0)&(fraction_tb == 66)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 66)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 133;
        //Exact Result = -0.6819983600624984
        #5
        if((whole_tb == 0)&(fraction_tb == 68)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 68)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 134;
        //Exact Result = -0.6946583704589974
        #5
        if((whole_tb == 0)&(fraction_tb == 69)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 69)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 135;
        //Exact Result = -0.7071067811865475
        #5
        if((whole_tb == 0)&(fraction_tb == 70)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 70)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 136;
        //Exact Result = -0.7193398003386513
        #5
        if((whole_tb == 0)&(fraction_tb == 71)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 71)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 137;
        //Exact Result = -0.7313537016191705
        #5
        if((whole_tb == 0)&(fraction_tb == 73)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 73)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 138;
        //Exact Result = -0.7431448254773941
        #5
        if((whole_tb == 0)&(fraction_tb == 74)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 74)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 139;
        //Exact Result = -0.754709580222772
        #5
        if((whole_tb == 0)&(fraction_tb == 75)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 75)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 140;
        //Exact Result = -0.7660444431189779
        #5
        if((whole_tb == 0)&(fraction_tb == 76)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 76)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 141;
        //Exact Result = -0.7771459614569709
        #5
        if((whole_tb == 0)&(fraction_tb == 77)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 77)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 142;
        //Exact Result = -0.7880107536067219
        #5
        if((whole_tb == 0)&(fraction_tb == 78)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 78)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 143;
        //Exact Result = -0.7986355100472929
        #5
        if((whole_tb == 0)&(fraction_tb == 79)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 79)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 144;
        //Exact Result = -0.8090169943749473
        #5
        if((whole_tb == 0)&(fraction_tb == 80)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 80)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 145;
        //Exact Result = -0.8191520442889919
        #5
        if((whole_tb == 0)&(fraction_tb == 81)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 81)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 146;
        //Exact Result = -0.8290375725550416
        #5
        if((whole_tb == 0)&(fraction_tb == 82)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 82)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 147;
        //Exact Result = -0.8386705679454239
        #5
        if((whole_tb == 0)&(fraction_tb == 83)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 83)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 148;
        //Exact Result = -0.848048096156426
        #5
        if((whole_tb == 0)&(fraction_tb == 84)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 84)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 149;
        //Exact Result = -0.8571673007021122
        #5
        if((whole_tb == 0)&(fraction_tb == 85)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 85)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 150;
        //Exact Result = -0.8660254037844387
        #5
        if((whole_tb == 0)&(fraction_tb == 86)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 86)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 151;
        //Exact Result = -0.8746197071393957
        #5
        if((whole_tb == 0)&(fraction_tb == 87)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 87)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 152;
        //Exact Result = -0.882947592858927
        #5
        if((whole_tb == 0)&(fraction_tb == 88)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 88)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 153;
        //Exact Result = -0.8910065241883678
        #5
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 154;
        //Exact Result = -0.898794046299167
        #5
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 155;
        //Exact Result = -0.9063077870366499
        #5
        if((whole_tb == 0)&(fraction_tb == 90)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 90)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 156;
        //Exact Result = -0.9135454576426008
        #5
        if((whole_tb == 0)&(fraction_tb == 91)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 91)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 157;
        //Exact Result = -0.9205048534524404
        #5
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 158;
        //Exact Result = -0.9271838545667873
        #5
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 159;
        //Exact Result = -0.9335804264972017
        #5
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 160;
        //Exact Result = -0.9396926207859083
        #5
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 161;
        //Exact Result = -0.9455185755993168
        #5
        if((whole_tb == 0)&(fraction_tb == 94)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 94)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 162;
        //Exact Result = -0.9510565162951535
        #5
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 163;
        //Exact Result = -0.9563047559630355
        #5
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 164;
        //Exact Result = -0.9612616959383189
        #5
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 165;
        //Exact Result = -0.9659258262890682
        #5
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 166;
        //Exact Result = -0.9702957262759965
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 167;
        //Exact Result = -0.9743700647852351
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 168;
        //Exact Result = -0.9781476007338057
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 169;
        //Exact Result = -0.981627183447664
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 170;
        //Exact Result = -0.984807753012208
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 171;
        //Exact Result = -0.9876883405951377
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 172;
        //Exact Result = -0.9902680687415704
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 173;
        //Exact Result = -0.992546151641322
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 174;
        //Exact Result = -0.9945218953682733
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 175;
        //Exact Result = -0.9961946980917455
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 176;
        //Exact Result = -0.9975640502598242
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 177;
        //Exact Result = -0.9986295347545738
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 178;
        //Exact Result = -0.9993908270190958
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 179;
        //Exact Result = -0.9998476951563913
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 180;
        //Exact Result = -1.0
        #5
        if((whole_tb == 1)&(fraction_tb == 0)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 1)|(fraction_tb != 0)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
   
   end
            

endmodule
