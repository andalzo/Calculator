`timescale 1ns / 1ps

module Sin(
    input [8:0]number_first, //coming number, as degree
    output reg sign, // the sign of output, 0 for pozitive; 1 for negative
    output reg whole, //the whole part of sin function, can be 1 or 0
    output reg [6:0]fraction //the fraction part of sin function
    );
    
    reg [8:0]number;
    
    always @(*) begin
        /* 
            Firstly, determine the interval and make appropriate transactions.
        */
        if(number_first >= 0 && number_first <= 90) begin
            //sin(x) = sin(x) 0<=x<=90
            number = number_first;
            sign = 0;
        end
        if(number_first > 90 && number_first <= 180) begin
            //sin(x) = sin(180-x) 90<x<=180
            number = 180 - number_first;
            sign = 0;
        end
        if(number_first > 180 && number_first <= 270) begin
            //sin(x) = -sin(x-180) 180<x<=270
            number = number_first - 180;
            sign = 1;
        end
        if(number_first > 270 && number_first <= 360) begin
            //sin(x) = -sin(360-x) 270<x<=360
            number = 360 - number_first;
            if(number_first != 360) begin
                sign = 1;
            end
            if(number_first == 360) begin
                sign = 0;
            end
        end
        whole = 0;
        if(number==0) begin
            //Exact Result = 0.0
            fraction = 0;
        end
        if(number==1) begin
            //Exact Result = 0.01745240643728351
            fraction = 1;
        end
        if(number==2) begin
            //Exact Result = 0.03489949670250097
            fraction = 3;
        end
        if(number==3) begin
            //Exact Result = 0.052335956242943835
            fraction = 5;
        end
        if(number==4) begin
            //Exact Result = 0.0697564737441253
            fraction = 6;
        end
        if(number==5) begin
            //Exact Result = 0.08715574274765817
            fraction = 8;
        end
        if(number==6) begin
            //Exact Result = 0.10452846326765347
            fraction = 10;
        end
        if(number==7) begin
            //Exact Result = 0.12186934340514748
            fraction = 12;
        end
        if(number==8) begin
            //Exact Result = 0.13917310096006544
            fraction = 13;
        end
        if(number==9) begin
            //Exact Result = 0.15643446504023087
            fraction = 15;
        end
        if(number==10) begin
            //Exact Result = 0.17364817766693033
            fraction = 17;
        end
        if(number==11) begin
            //Exact Result = 0.1908089953765448
            fraction = 19;
        end
        if(number==12) begin
            //Exact Result = 0.20791169081775934
            fraction = 20;
        end
        if(number==13) begin
            //Exact Result = 0.224951054343865
            fraction = 22;
        end
        if(number==14) begin
            //Exact Result = 0.24192189559966773
            fraction = 24;
        end
        if(number==15) begin
            //Exact Result = 0.25881904510252074
            fraction = 25;
        end
        if(number==16) begin
            //Exact Result = 0.27563735581699916
            fraction = 27;
        end
        if(number==17) begin
            //Exact Result = 0.29237170472273677
            fraction = 29;
        end
        if(number==18) begin
            //Exact Result = 0.3090169943749474
            fraction = 30;
        end
        if(number==19) begin
            //Exact Result = 0.3255681544571567
            fraction = 32;
        end
        if(number==20) begin
            //Exact Result = 0.3420201433256687
            fraction = 34;
        end
        if(number==21) begin
            //Exact Result = 0.35836794954530027
            fraction = 35;
        end
        if(number==22) begin
            //Exact Result = 0.374606593415912
            fraction = 37;
        end
        if(number==23) begin
            //Exact Result = 0.39073112848927377
            fraction = 39;
        end
        if(number==24) begin
            //Exact Result = 0.4067366430758002
            fraction = 40;
        end
        if(number==25) begin
            //Exact Result = 0.42261826174069944
            fraction = 42;
        end
        if(number==26) begin
            //Exact Result = 0.4383711467890774
            fraction = 43;
        end
        if(number==27) begin
            //Exact Result = 0.45399049973954675
            fraction = 45;
        end
        if(number==28) begin
            //Exact Result = 0.4694715627858908
            fraction = 46;
        end
        if(number==29) begin
            //Exact Result = 0.48480962024633706
            fraction = 48;
        end
        if(number==30) begin
            //Exact Result = 0.49999999999999994
            fraction = 50;
        end
        if(number==31) begin
            //Exact Result = 0.5150380749100542
            fraction = 51;
        end
        if(number==32) begin
            //Exact Result = 0.5299192642332049
            fraction = 52;
        end
        if(number==33) begin
            //Exact Result = 0.5446390350150271
            fraction = 54;
        end
        if(number==34) begin
            //Exact Result = 0.5591929034707469
            fraction = 55;
        end
        if(number==35) begin
            //Exact Result = 0.573576436351046
            fraction = 57;
        end
        if(number==36) begin
            //Exact Result = 0.5877852522924731
            fraction = 58;
        end
        if(number==37) begin
            //Exact Result = 0.6018150231520483
            fraction = 60;
        end
        if(number==38) begin
            //Exact Result = 0.6156614753256583
            fraction = 61;
        end
        if(number==39) begin
            //Exact Result = 0.6293203910498374
            fraction = 62;
        end
        if(number==40) begin
            //Exact Result = 0.6427876096865393
            fraction = 64;
        end
        if(number==41) begin
            //Exact Result = 0.6560590289905073
            fraction = 65;
        end
        if(number==42) begin
            //Exact Result = 0.6691306063588582
            fraction = 66;
        end
        if(number==43) begin
            //Exact Result = 0.6819983600624985
            fraction = 68;
        end
        if(number==44) begin
            //Exact Result = 0.6946583704589973
            fraction = 69;
        end
        if(number==45) begin
            //Exact Result = 0.7071067811865476
            fraction = 70;
        end
        if(number==46) begin
            //Exact Result = 0.7193398003386512
            fraction = 71;
        end
        if(number==47) begin
            //Exact Result = 0.7313537016191705
            fraction = 73;
        end
        if(number==48) begin
            //Exact Result = 0.7431448254773942
            fraction = 74;
        end
        if(number==49) begin
            //Exact Result = 0.754709580222772
            fraction = 75;
        end
        if(number==50) begin
            //Exact Result = 0.766044443118978
            fraction = 76;
        end
        if(number==51) begin
            //Exact Result = 0.7771459614569709
            fraction = 77;
        end
        if(number==52) begin
            //Exact Result = 0.788010753606722
            fraction = 78;
        end
        if(number==53) begin
            //Exact Result = 0.7986355100472928
            fraction = 79;
        end
        if(number==54) begin
            //Exact Result = 0.8090169943749475
            fraction = 80;
        end
        if(number==55) begin
            //Exact Result = 0.8191520442889918
            fraction = 81;
        end
        if(number==56) begin
            //Exact Result = 0.8290375725550417
            fraction = 82;
        end
        if(number==57) begin
            //Exact Result = 0.838670567945424
            fraction = 83;
        end
        if(number==58) begin
            //Exact Result = 0.8480480961564261
            fraction = 84;
        end
        if(number==59) begin
            //Exact Result = 0.8571673007021123
            fraction = 85;
        end
        if(number==60) begin
            //Exact Result = 0.8660254037844386
            fraction = 86;
        end
        if(number==61) begin
            //Exact Result = 0.8746197071393957
            fraction = 87;
        end
        if(number==62) begin
            //Exact Result = 0.8829475928589269
            fraction = 88;
        end
        if(number==63) begin
            //Exact Result = 0.8910065241883678
            fraction = 89;
        end
        if(number==64) begin
            //Exact Result = 0.898794046299167
            fraction = 89;
        end
        if(number==65) begin
            //Exact Result = 0.9063077870366499
            fraction = 90;
        end
        if(number==66) begin
            //Exact Result = 0.9135454576426009
            fraction = 91;
        end
        if(number==67) begin
            //Exact Result = 0.9205048534524404
            fraction = 92;
        end
        if(number==68) begin
            //Exact Result = 0.9271838545667874
            fraction = 92;
        end
        if(number==69) begin
            //Exact Result = 0.9335804264972017
            fraction = 93;
        end
        if(number==70) begin
            //Exact Result = 0.9396926207859083
            fraction = 93;
        end
        if(number==71) begin
            //Exact Result = 0.9455185755993167
            fraction = 94;
        end
        if(number==72) begin
            //Exact Result = 0.9510565162951535
            fraction = 95;
        end
        if(number==73) begin
            //Exact Result = 0.9563047559630354
            fraction = 95;
        end
        if(number==74) begin
            //Exact Result = 0.9612616959383189
            fraction = 96;
        end
        if(number==75) begin
            //Exact Result = 0.9659258262890683
            fraction = 96;
        end
        if(number==76) begin
            //Exact Result = 0.9702957262759965
            fraction = 97;
        end
        if(number==77) begin
            //Exact Result = 0.9743700647852352
            fraction = 97;
        end
        if(number==78) begin
            //Exact Result = 0.9781476007338056
            fraction = 97;
        end
        if(number==79) begin
            //Exact Result = 0.981627183447664
            fraction = 98;
        end
        if(number==80) begin
            //Exact Result = 0.984807753012208
            fraction = 98;
        end
        if(number==81) begin
            //Exact Result = 0.9876883405951378
            fraction = 98;
        end
        if(number==82) begin
            //Exact Result = 0.9902680687415704
            fraction = 99;
        end
        if(number==83) begin
            //Exact Result = 0.992546151641322
            fraction = 99;
        end
        if(number==84) begin
            //Exact Result = 0.9945218953682733
            fraction = 99;
        end
        if(number==85) begin
            //Exact Result = 0.9961946980917455
            fraction = 99;
        end
        if(number==86) begin
            //Exact Result = 0.9975640502598242
            fraction = 99;
        end
        if(number==87) begin
            //Exact Result = 0.9986295347545738
            fraction = 99;
        end
        if(number==88) begin
            //Exact Result = 0.9993908270190958
            fraction = 99;
        end
        if(number==89) begin
            //Exact Result = 0.9998476951563913
            fraction = 99;
        end
        if(number==90) begin
            //Exact Result = 1.0
            whole = 1;
            fraction = 0;
        end
    end
    

    
endmodule
