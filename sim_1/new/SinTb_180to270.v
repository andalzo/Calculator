`timescale 1ns / 1ps



module SinTb_180to270();

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
        number_first_tb = 180;
        //Exact Result = 0.0
        #5
        if((whole_tb == 0)&(fraction_tb == 0)&(sign_tb == 0)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 0)|(sign_tb != 0)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 181;
        //Exact Result = -0.017452406437283637
        #5
        if((whole_tb == 0)&(fraction_tb == 1)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 1)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 182;
        //Exact Result = -0.0348994967025009
        #5
        if((whole_tb == 0)&(fraction_tb == 3)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 3)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 183;
        //Exact Result = -0.052335956242943564
        #5
        if((whole_tb == 0)&(fraction_tb == 5)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 5)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 184;
        //Exact Result = -0.06975647374412527
        #5
        if((whole_tb == 0)&(fraction_tb == 6)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 6)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 185;
        //Exact Result = -0.08715574274765794
        #5
        if((whole_tb == 0)&(fraction_tb == 8)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 8)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 186;
        //Exact Result = -0.1045284632676535
        #5
        if((whole_tb == 0)&(fraction_tb == 10)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 10)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 187;
        //Exact Result = -0.12186934340514731
        #5
        if((whole_tb == 0)&(fraction_tb == 12)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 12)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 188;
        //Exact Result = -0.13917310096006552
        #5
        if((whole_tb == 0)&(fraction_tb == 13)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 13)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 189;
        //Exact Result = -0.15643446504023073
        #5
        if((whole_tb == 0)&(fraction_tb == 15)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 15)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 190;
        //Exact Result = -0.17364817766693047
        #5
        if((whole_tb == 0)&(fraction_tb == 17)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 17)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 191;
        //Exact Result = -0.19080899537654472
        #5
        if((whole_tb == 0)&(fraction_tb == 19)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 19)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 192;
        //Exact Result = -0.2079116908177595
        #5
        if((whole_tb == 0)&(fraction_tb == 20)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 20)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 193;
        //Exact Result = -0.22495105434386498
        #5
        if((whole_tb == 0)&(fraction_tb == 22)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 22)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 194;
        //Exact Result = -0.2419218955996675
        #5
        if((whole_tb == 0)&(fraction_tb == 24)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 24)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 195;
        //Exact Result = -0.2588190451025208
        #5
        if((whole_tb == 0)&(fraction_tb == 25)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 25)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 196;
        //Exact Result = -0.275637355816999
        #5
        if((whole_tb == 0)&(fraction_tb == 27)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 27)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 197;
        //Exact Result = -0.29237170472273677
        #5
        if((whole_tb == 0)&(fraction_tb == 29)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 29)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 198;
        //Exact Result = -0.3090169943749473
        #5
        if((whole_tb == 0)&(fraction_tb == 30)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 30)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 199;
        //Exact Result = -0.32556815445715676
        #5
        if((whole_tb == 0)&(fraction_tb == 32)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 32)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 200;
        //Exact Result = -0.34202014332566866
        #5
        if((whole_tb == 0)&(fraction_tb == 34)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 34)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 201;
        //Exact Result = -0.35836794954530043
        #5
        if((whole_tb == 0)&(fraction_tb == 35)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 35)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 202;
        //Exact Result = -0.374606593415912
        #5
        if((whole_tb == 0)&(fraction_tb == 37)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 37)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 203;
        //Exact Result = -0.39073112848927355
        #5
        if((whole_tb == 0)&(fraction_tb == 39)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 39)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 204;
        //Exact Result = -0.4067366430758002
        #5
        if((whole_tb == 0)&(fraction_tb == 40)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 40)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 205;
        //Exact Result = -0.4226182617406993
        #5
        if((whole_tb == 0)&(fraction_tb == 42)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 42)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 206;
        //Exact Result = -0.43837114678907746
        #5
        if((whole_tb == 0)&(fraction_tb == 43)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 43)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 207;
        //Exact Result = -0.45399049973954664
        #5
        if((whole_tb == 0)&(fraction_tb == 45)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 45)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 208;
        //Exact Result = -0.46947156278589086
        #5
        if((whole_tb == 0)&(fraction_tb == 46)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 46)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 209;
        //Exact Result = -0.48480962024633695
        #5
        if((whole_tb == 0)&(fraction_tb == 48)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 48)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 210;
        //Exact Result = -0.5000000000000001
        #5
        if((whole_tb == 0)&(fraction_tb == 50)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 50)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 211;
        //Exact Result = -0.5150380749100542
        #5
        if((whole_tb == 0)&(fraction_tb == 51)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 51)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 212;
        //Exact Result = -0.5299192642332048
        #5
        if((whole_tb == 0)&(fraction_tb == 52)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 52)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 213;
        //Exact Result = -0.5446390350150271
        #5
        if((whole_tb == 0)&(fraction_tb == 54)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 54)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 214;
        //Exact Result = -0.5591929034707467
        #5
        if((whole_tb == 0)&(fraction_tb == 55)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 55)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 215;
        //Exact Result = -0.5735764363510462
        #5
        if((whole_tb == 0)&(fraction_tb == 57)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 57)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 216;
        //Exact Result = -0.587785252292473
        #5
        if((whole_tb == 0)&(fraction_tb == 58)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 58)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 217;
        //Exact Result = -0.6018150231520484
        #5
        if((whole_tb == 0)&(fraction_tb == 60)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 60)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 218;
        //Exact Result = -0.6156614753256582
        #5
        if((whole_tb == 0)&(fraction_tb == 61)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 61)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 219;
        //Exact Result = -0.6293203910498376
        #5
        if((whole_tb == 0)&(fraction_tb == 62)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 62)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 220;
        //Exact Result = -0.6427876096865393
        #5
        if((whole_tb == 0)&(fraction_tb == 64)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 64)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 221;
        //Exact Result = -0.656059028990507
        #5
        if((whole_tb == 0)&(fraction_tb == 65)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 65)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 222;
        //Exact Result = -0.6691306063588582
        #5
        if((whole_tb == 0)&(fraction_tb == 66)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 66)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 223;
        //Exact Result = -0.6819983600624984
        #5
        if((whole_tb == 0)&(fraction_tb == 68)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 68)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 224;
        //Exact Result = -0.6946583704589973
        #5
        if((whole_tb == 0)&(fraction_tb == 69)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 69)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 225;
        //Exact Result = -0.7071067811865475
        #5
        if((whole_tb == 0)&(fraction_tb == 70)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 70)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 226;
        //Exact Result = -0.7193398003386512
        #5
        if((whole_tb == 0)&(fraction_tb == 71)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 71)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 227;
        //Exact Result = -0.7313537016191705
        #5
        if((whole_tb == 0)&(fraction_tb == 73)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 73)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 228;
        //Exact Result = -0.7431448254773944
        #5
        if((whole_tb == 0)&(fraction_tb == 74)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 74)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 229;
        //Exact Result = -0.754709580222772
        #5
        if((whole_tb == 0)&(fraction_tb == 75)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 75)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 230;
        //Exact Result = -0.7660444431189779
        #5
        if((whole_tb == 0)&(fraction_tb == 76)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 76)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 231;
        //Exact Result = -0.7771459614569706
        #5
        if((whole_tb == 0)&(fraction_tb == 77)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 77)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 232;
        //Exact Result = -0.7880107536067221
        #5
        if((whole_tb == 0)&(fraction_tb == 78)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 78)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 233;
        //Exact Result = -0.7986355100472928
        #5
        if((whole_tb == 0)&(fraction_tb == 79)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 79)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 234;
        //Exact Result = -0.8090169943749473
        #5
        if((whole_tb == 0)&(fraction_tb == 80)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 80)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 235;
        //Exact Result = -0.8191520442889916
        #5
        if((whole_tb == 0)&(fraction_tb == 81)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 81)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 236;
        //Exact Result = -0.8290375725550418
        #5
        if((whole_tb == 0)&(fraction_tb == 82)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 82)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 237;
        //Exact Result = -0.8386705679454242
        #5
        if((whole_tb == 0)&(fraction_tb == 83)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 83)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 238;
        //Exact Result = -0.848048096156426
        #5
        if((whole_tb == 0)&(fraction_tb == 84)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 84)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 239;
        //Exact Result = -0.8571673007021121
        #5
        if((whole_tb == 0)&(fraction_tb == 85)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 85)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 240;
        //Exact Result = -0.8660254037844385
        #5
        if((whole_tb == 0)&(fraction_tb == 86)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 86)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 241;
        //Exact Result = -0.8746197071393959
        #5
        if((whole_tb == 0)&(fraction_tb == 87)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 87)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 242;
        //Exact Result = -0.882947592858927
        #5
        if((whole_tb == 0)&(fraction_tb == 88)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 88)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 243;
        //Exact Result = -0.8910065241883678
        #5
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 244;
        //Exact Result = -0.8987940462991668
        #5
        if((whole_tb == 0)&(fraction_tb == 89)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 89)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 245;
        //Exact Result = -0.9063077870366502
        #5
        if((whole_tb == 0)&(fraction_tb == 90)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 90)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 246;
        //Exact Result = -0.913545457642601
        #5
        if((whole_tb == 0)&(fraction_tb == 91)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 91)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 247;
        //Exact Result = -0.9205048534524403
        #5
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 248;
        //Exact Result = -0.9271838545667873
        #5
        if((whole_tb == 0)&(fraction_tb == 92)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 92)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 249;
        //Exact Result = -0.9335804264972016
        #5
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 250;
        //Exact Result = -0.9396926207859084
        #5
        if((whole_tb == 0)&(fraction_tb == 93)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 93)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 251;
        //Exact Result = -0.9455185755993168
        #5
        if((whole_tb == 0)&(fraction_tb == 94)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 94)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 252;
        //Exact Result = -0.9510565162951535
        #5
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 253;
        //Exact Result = -0.9563047559630353
        #5
        if((whole_tb == 0)&(fraction_tb == 95)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 95)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 254;
        //Exact Result = -0.961261695938319
        #5
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 255;
        //Exact Result = -0.9659258262890683
        #5
        if((whole_tb == 0)&(fraction_tb == 96)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 96)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 256;
        //Exact Result = -0.9702957262759965
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 257;
        //Exact Result = -0.9743700647852351
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 258;
        //Exact Result = -0.9781476007338056
        #5
        if((whole_tb == 0)&(fraction_tb == 97)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 97)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 259;
        //Exact Result = -0.981627183447664
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 260;
        //Exact Result = -0.984807753012208
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 261;
        //Exact Result = -0.9876883405951377
        #5
        if((whole_tb == 0)&(fraction_tb == 98)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 98)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 262;
        //Exact Result = -0.9902680687415703
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 263;
        //Exact Result = -0.9925461516413221
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 264;
        //Exact Result = -0.9945218953682734
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 265;
        //Exact Result = -0.9961946980917455
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 266;
        //Exact Result = -0.9975640502598242
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 267;
        //Exact Result = -0.9986295347545738
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 268;
        //Exact Result = -0.9993908270190958
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
        number_first_tb = 269;
        //Exact Result = -0.9998476951563913
        #5
        if((whole_tb == 0)&(fraction_tb == 99)&(sign_tb == 1)) begin
            right_ones = right_ones + 1;
        end
        if((whole_tb != 0)|(fraction_tb != 99)|(sign_tb != 1)) begin
            wrong_ones = wrong_ones + 1;
        end
        #5;
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
   end         

endmodule
