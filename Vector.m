function Vector = UpdateVector( para_values, WeightVector )
WeightVector(1,2)   =   1;     %AB
WeightVector(1,3)   =   2;     %AC
WeightVector(1,4)   =   3;     %AD
WeightVector(1,5)   =   4;     %AE
WeightVector(2,1)   =   5;     %BA
WeightVector(2,5)   =   6;     %BE
WeightVector(2,6)   =   7;     %BF
WeightVector(3,1)   =   8;     %CA
WeightVector(3,5)   =   9;     %CE
WeightVector(3,7)   =   10;    %CG
WeightVector(4,1)   =   11;    %DA
WeightVector(4,7)   =   12;    %DG
WeightVector(4,8)   =   13;    %DH
WeightVector(4,9)   =   14;    %DI
WeightVector(5,1)   =   15;    %EA
WeightVector(5,2)   =   16;    %EB
WeightVector(5,3)   =   17;    %EC
WeightVector(5,6)   =   18;    %EF
WeightVector(5,7)   =   19;    %EG
WeightVector(5,10)  =   20;    %EJ
WeightVector(5,11)  =   21;    %EK
WeightVector(6,2)   =   22;    %FB
WeightVector(6,5)   =   23;    %FE
WeightVector(6,10)  =   24;    %FJ
WeightVector(6,12)  =   25;    %FL
WeightVector(7,3)   =   26;    %GC 
WeightVector(7,4)   =   27;    %GD
WeightVector(7,5)   =   28;    %GE
WeightVector(7,8)   =   29;    %GH
WeightVector(7,11)  =   30;    %GK
WeightVector(8,4)   =   31;    %HD
WeightVector(8,7)   =   32;    %HG
WeightVector(8,9)   =   33;    %HI
WeightVector(8,11)  =   34;    %HK
WeightVector(9,4)   =   35;    %ID
WeightVector(9,8)   =   36;    %IH
WeightVector(10,5)  =   37;    %JE
WeightVector(10,6)  =   38;    %JF
WeightVector(10,11) =   39;    %JK
WeightVector(10,12) =   40;    %JL
WeightVector(11,5)  =   41;    %KE
WeightVector(11,7)  =   42;    %KG 
WeightVector(11,8)  =   43;    %KH
WeightVector(11,10) =   44;    %KJ
WeightVector(11,12) =   45;    %KL
WeightVector(12,6)  =   46;    %LF
WeightVector(12,10) =   47;    %LJ
WeightVector(12,11) =   48;    %LK
Vector = WeightVector;
end