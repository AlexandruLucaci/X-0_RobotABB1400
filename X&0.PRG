MODULE Module1
    PERS wobjdata WorkObjPaleta:=[FALSE,TRUE,"",[[1081.873,-444.063,820],[0.382683432,0,0,0.923879533]],[[0,0,0],[1,0,0,0]]];
    PERS tooldata Efector:=[TRUE,[[0,0.033033672,184.3],[1,0,0,0]],[1.5,[0,0,90],[1,0,0,0],0.01,0.01,0.01]];
    
!ACESTE 3 TARGETURI SUNT FOLOSITE PENTRU RIDICARE SI PUNERE INAPOI PIX, DUPA CARE DUCEREA IN POZITIA DE BAZA
    CONST robtarget HOME:=[[108.569813324,1217.949031514,265.765686616],[0.462674944,-0.330386857,0.799675709,0.193119603],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PIX_OF:=[[209.999,689.991,364],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PIX:=[[209.999,689.991,164],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
!ACESTE TARGETURI SUNT CONCEPUTE PENTRU DESENUL SIMBOLURILOR, X RESPECTIV 0.
    CONST robtarget P1x1_of_as:=[[391.715900817,27.168331213,253.123245844],[0.000850404,-0.382681762,-0.923877552,-0.002053053],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1x1:=[[391.715900107,27.657216023,143.124332251],[0.000850404,-0.382681762,-0.923877552,-0.002053053],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1x2:=[[290.599471584,128.77232825,143.573734091],[0.000850404,-0.382681762,-0.923877552,-0.002053053],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1x2_of:=[[290.599471778,128.638996047,173.573437799],[0.000850404,-0.382681762,-0.923877552,-0.002053053],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1x3_of:=[[286.715900208,27.524048676,173.124036534],[0.000850403,-0.382681762,-0.923877552,-0.002053053],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1x3:=[[286.71590007,27.657380887,143.124332828],[0.000850403,-0.382681762,-0.923877552,-0.002053053],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1x4:=[[387.832010966,128.772810744,143.573734884],[0.000850403,-0.382681762,-0.923877552,-0.002053053],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1x4_of_as:=[[387.832011472,128.283925955,253.572648476],[0.000850403,-0.382681762,-0.923877552,-0.002053053],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1o1_of:=[[339.215900353,27.523801393,173.124035985],[-0.000000002,-0.000000785,0.999997531,0.002222209],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1o1:=[[339.215900128,27.657133604,143.124332278],[-0.000000002,-0.000000785,0.999997531,0.002222209],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1o2:=[[286.715817704,80.156532666,143.357663674],[-0.000000002,-0.000000785,0.999997531,0.002222209],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1o3:=[[339.215735279,132.656096579,143.590995016],[-0.000000002,-0.000000785,0.999997531,0.002222209],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1o4:=[[391.715817704,80.156697517,143.35766362],[-0.000000002,-0.000000785,0.999997531,0.002222209],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

!FOLOSIM UN WORKOBJECT INITIAL PENTRU A PUTEA FACE SCHIMBAREA IN FUNCTIA ALEGERE
    PERS wobjdata Workobject_:=[FALSE,TRUE,"",[[164.402,-611.294,799.453],[0.923877,-0.00205305,0.000850401,-0.382683]],[[0,0,0],[1,0,0,0]]];

!ACESTE WORKOBJECT-URI SUNT OFFSETATE DE LA POZITIA DE BAZA CU MASURATORILE AFERENTE FIECAREI CASUTE
!MENTIUNE:PUTEA REDUCE ACESTE LINII FOLOSIND UN VECTOR CARE SA REZULTE DIN OFFSETAREA UNUI WORKOBJECT INITIAL, DOAR CA NU S-A DORIT ACEST LUCRU DE LA INCEPUT
!         SI AM DORIT SA PASTRAM TOT CE LUCRASEM PANA IN ACEL MOMENT SI SA ADAPTAM DE ACOLO IN CONTINUAREA PROIECTULUI
    PERS wobjdata Workobject_1:=[FALSE,TRUE,"",[[164.402230552,-785.241769448,799.999998551],[0.923876951,-0.002053054,0.000850401,-0.382683213]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata Workobject_2:=[FALSE,TRUE,"",[[251.376,-698.269,799.453],[0.923877,-0.00205305,0.000850401,-0.382683]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata Workobject_3:=[FALSE,TRUE,"",[[338.349,-611.295,798.907],[0.923877,-0.00205305,0.000850401,-0.382683]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata Workobject_4:=[FALSE,TRUE,"",[[77.4282,-698.268,800],[0.923877,-0.00205305,0.000850401,-0.382683]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata Workobject_7:=[FALSE,TRUE,"",[[-9.54576,-611.293,800],[0.923877,-0.00205305,0.000850401,-0.382683]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata Workobject_5:=[FALSE,TRUE,"",[[164.402,-611.294,799.453],[0.923877,-0.00205305,0.000850401,-0.382683]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata Workobject_8:=[FALSE,TRUE,"",[[77.4277,-524.32,799.453],[0.923877,-0.00205305,0.000850401,-0.382683]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata Workobject_6:=[FALSE,TRUE,"",[[251.375,-524.321,798.907],[0.923877,-0.00205305,0.000850401,-0.382683]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata Workobject_9:=[FALSE,TRUE,"",[[164.401,-437.347,798.907],[0.923877,-0.00205305,0.000850401,-0.382683]],[[0,0,0],[1,0,0,0]]];
    
!VARIABILE FOLOSITE PENTRU PRELUCRAREA PARAMETRILOR SI CONDITIILOR
    VAR num patrat:=0;
    VAR num aleg:=0;
    VAR num vect{9}:=[0,0,0,0,0,0,0,0,0];
    VAR num sem:=0;!PLECAREA CU 0 PENTRU A PRESUPUNE DIN PRIMA REMIZA, CAND CASTIGA CINEVA SE SCHIMBA IN 1
    VAR num i:=1;
    
!PROCEDURA DE A RIDICA PIXUL SI DE A-L PREGATI DE DESENAT
    PROC Path_upPix()
        SetDO DO10_9,1;
        MoveJ HOME,v100,fine,Efector\WObj:=Workobject_1;
        MoveJ PIX_OF,v100,fine,Efector\WObj:=Workobject_1;
        MoveJ PIX,v100,fine,Efector\WObj:=Workobject_1;
        SetDO DO10_9,0;
        WaitTime 1;
        MoveJ PIX_OF,v100,fine,Efector\WObj:=Workobject_1;
    ENDPROC
    
!DUPA ANUNTAREA CASTIGATORULUI/REMIZEI SE IA PIXUL SE PUNE LA LOC SI SE DUCE ROBOTUL IN HOME
     PROC Path_downPix()
        MoveJ PIX_OF,v100,fine,Efector\WObj:=Workobject_1;
        MoveJ PIX,v100,fine,Efector\WObj:=Workobject_1;
        SetDO DO10_9,1;
        WaitTime 1;
        MoveJ PIX_OF,v100,fine,Efector\WObj:=Workobject_1;
        MoveJ HOME,v100,fine,Efector\WObj:=Workobject_1;
    ENDPROC
    
!PROCEDURA PENTRU A DESENA X, CU RIDICAREA PIXULUI INTRE CELE 2 DIAGONALE
    PROC Path_X()
        MoveJ P1x1_of_as,v100,fine,Efector\WObj:=Workobject_;
        MoveJ P1x1,v100,fine,Efector\WObj:=Workobject_;
        MoveJ P1x2,v100,fine,Efector\WObj:=Workobject_;
        MoveJ P1x2_of,v100,fine,Efector\WObj:=Workobject_;
        MoveJ P1x3_of,v100,fine,Efector\WObj:=Workobject_;
        MoveJ P1x3,v100,fine,Efector\WObj:=Workobject_;
        MoveJ P1x4,v100,fine,Efector\WObj:=Workobject_;
        MoveJ P1x4_of_as,v100,fine,Efector\WObj:=Workobject_;
    ENDPROC
    
 !PROCEDURA PENTRU A DESENA 0
    PROC Path_O() 
        MoveJ P1o1_of,v100,fine,Efector\WObj:=Workobject_;
        MoveJ P1o1,v100,fine,Efector\WObj:=Workobject_;
        MoveC P1o2,P1o3,v100,fine,Efector\WObj:=Workobject_;
        MoveC P1o4,P1o1,v100,fine,Efector\WObj:=Workobject_;
        MoveJ P1o1_of,v100,fine,Efector\WObj:=Workobject_;
    ENDPROC
 
!PROCEDURA PENTRU A ALEGE CASUTA DE DESENAT + SIMBOLU, CU VERIFICARILE AFERENTE
PROC alegere(num patrat,num aleg)

!VERIFICARE CA NR CASUTA SA FIE INTRE 1 SI 9
!VERIFICARE CA NR ALEGERE SA FIE 0, FIE 1
!VERIFICARE DACA NU S A PUS DEJA UN SIMBOL, FIE X FIE 0 
!MENTIUNE:VERIFICARE PENTRU ALTE CARACTERE NU ESTE NECESARA DEOARECE NE INDICA PROGRAMUL CA A PRIMIT CA PARAMETRU NUM SI O VALOARE NUMERICA TREBUIE SA PRIMEASCA

IF  patrat<1 OR patrat>9 OR (aleg<>0 AND aleg<>1) OR abs(vect{patrat})=1  THEN
        TPWrite"alegere invalida";
        i:=i-1; !ACEASTA LINIE NE AJUTA SA RAMANEM LA ACEEIASI ITERATIE, CHIAR DACA S-A PUS INVALID
        
!ACEST ELSE IF LUCREAZA PE POST DE SWITCH, MODIFICAND COORDONATELE PENTRU SIMBOLURI IN FUNCTIE DE ALEGERE
ELSE  IF(vect{patrat}=0)THEN
       IF(patrat=1)THEN
           Workobject_:=Workobject_1;
       ENDIF
        IF(patrat=2)THEN
            Workobject_:=Workobject_2;
       ENDIF
       IF(patrat=3)THEN
           Workobject_:=Workobject_3;
       ENDIF
        IF(patrat=4)THEN
        Workobject_:=Workobject_4;
       ENDIF
        IF(patrat=5)THEN
       Workobject_:=Workobject_5;
       ENDIF
        IF(patrat=6)THEN
        Workobject_:=Workobject_6;
       ENDIF
        IF(patrat=7)THEN
         Workobject_:=Workobject_7;
       ENDIF
        IF(patrat=8)THEN
         Workobject_:=Workobject_8;
       ENDIF
        IF(patrat=9)THEN
         Workobject_:=Workobject_9;
       ENDIF
       
!AICI IN FUNCTIE DE ALEGEREA SIMBOLULUI SE EXECUTA PATH-UL(AVAND OFFSETUL SCHIMBAT PE BAZA SCHIMBARII ANTERIOARE A WORKOBJECTULUI) SI SE NOTEAZA OCUPAREA CASUTEI
!TOTODATA SE INTAMPLA ACEST IF DOAR DACA SUNT VALIZI PARAMETRII
        IF(aleg=1)THEN
           vect{patrat}:=1;
           Path_X;
           ELSEIF (aleg=0) THEN
           Path_O;
           vect{patrat}:=-1;
           ENDIF
ENDIF
ENDIF
       
        
    ENDPROC
    
!ACEASTA PROCEDURA VERIFICA PENTRU FIECARE SIMBOL PE DIAGONALE, LINII SI COLOANE DACA A CASTIGAT
    PROC win()
        VAR num i:=1;
        IF (vect{i}+vect{i+4}+vect{i+8}=3 OR vect{i+2}+vect{i+4}+vect{i+6}=3) THEN
         TPWrite"X este castigator";
         sem:=1;
        ENDIF
        
         IF (vect{i}+vect{i+4}+vect{i+8}=-3 OR vect{i+2}+vect{i+4}+vect{i+6}=-3) THEN
         TPWrite"0 este castigator";
         sem:=1;
        ENDIF
        
        FOR i FROM 1 TO 9 STEP 3 DO
        IF (vect{i}+vect{i+1}+vect{i+2}=3)THEN
        TPWrite"X este castigator";
        sem:=1;
        ENDIF
        ENDFOR
        
        FOR i FROM 1 TO 9 STEP 3 DO
        IF (vect{i}+vect{i+1}+vect{i+2}=-3)THEN
        TPWrite"0 este castigator";
        sem:=1;
        ENDIF
        ENDFOR
        
        FOR i FROM 1 TO 3 STEP 1 DO
        IF (vect{i}+vect{i+3}+vect{i+6}=3)THEN
        TPWrite"X este castigator";
        sem:=1;
        ENDIF
        ENDFOR
        
        FOR i FROM 1 TO 3 STEP 1 DO
        IF (vect{i}+vect{i+3}+vect{i+6}=-3)THEN
        TPWrite"O este castigator";
        sem:=1;
        ENDIF
        ENDFOR
    ENDPROC
    
    
    
    PROC main()
        Path_upPix;
!AICI NU AM MAI CREAT UN PATH DE LEGATURA, DEOARECE AJUNGE INTR-O POZITIE DE OFFSET PENTRU A INCEPE DESENAREA SI NU INTERSECTEAZA ALTE ELEMENTE
        
        WHILE sem=0 AND i<=9 DO
            i:=i+1;
            TPReadNum patrat,"Intoduceti nr. patrat:";
            TPReadNum aleg,"1 pentru x | 0 pentru O:";
            alegere patrat,aleg;
            win;
        ENDWHILE
        
!IN ACEST IF, DACA SEMAFORUL NU S-A MODIFICAT IN TIMPUL BUCLEI WHILE SI S-AU TIPARIT CELE 9 CASUTE NE ARATA REZULTATUL CA FIIND REMIZA
        IF (sem=0)THEN
            TPWrite"Este Remiza";
        ENDIF
        
!NICI AICI NU AM MAI CREAT UN PATH DE LEGATURA, DEOARECE RAMANE INTR-O POZITIE DE OFFSET SI NU INTERSECTEAZA NIMIC IN DRUMUL SPRE HOME
       Path_downPix;
    ENDPROC

ENDMODULE