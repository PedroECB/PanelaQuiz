Program TESTE;

TYPE Jogadores=record
       Nome:string[20];           {Registro de dados dos jogadores}
       Time:string;
       Total:integer;
      end; 
			 

VAR     Dados:array[1..2]of jogadores;                                             
        
				cont:integer;
				Pont_Player1,Pont_Player2,cont_erradas1,cont_erradas2:integer;
				r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,MENU:integer;
				nivel1,nivel2,partida:string;
				
Procedure Jogo;
										 //ESCOPO PRINCIPAL DO JOGO
Begin
Begin              
repeat
textcolor(cont);
writeln('                                                              ');
writeln('                            @@@                                   ');
writeln('                          `@@@@@                                  ');
writeln('                          `@@@@@`                                 ');
writeln('                           `@@@ @@:                               ');
writeln('                              `@@@@@@@+                          ');                  {INTERFACE}
writeln('                              .@@@@@#@@@#                         ');
writeln('                             `@@@@@@:  @@#                        ');
writeln('                            #@@@.@@@@`  @@`                       ');
writeln('                          `@@@#  `@@@@`                           ');
writeln('                          #@@`    #@@@@`                          ');
writeln('                                 #@@,@@@;`@@@@;                   ');
writeln('                                :@@#  #@@@@@@+                    ');
writeln('                       @@@     `@@#    ;@@                        ');
writeln('                      #@@@@`   `@@#                               ');
writeln('                      #@@@@`   `@@#                               ');
writeln('                      `@@@`     #@#                               ');
writeln('                                #@@                               ');
writeln;
writeln;       
writeln('              @@@@  @@   @@  @ #@@@@ @     @@      @@@@ @@@@    ');  
writeln('              @  @  @ @  @@@ @ #@    @     @,@     @    @  @    ');  
writeln('              @@@@  @ @  @ @ @ #@@@  @     @ @     @@@  @       ');   
writeln('              @    @@@@@ @  @@ #@    @    @@#@@    @    @  @    ');   
writeln('              @    @  @@ @  @@ #@@@@ @@@@ @  @@    @    @@@@    ');   
writeln('                                                            ');
writeln;
textcolor(14);
writeln('               << PRESSIONE QUALQUER TECLA PARA CONTINUAR >>     ');
delay(150);
cont:=cont+1;
clrscr;
until(keypressed);
end;

								

									              //TELA DE LOADING
Begin

cont:=0;
repeat;
textcolor(14);									 
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln('                                 CARREGANDO...');
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln;
writeln('                                               ');

delay(100);
clrscr;

cont:=cont+1;

until(cont=15);

end;
readkey;
writeln(' ');


                            //MENU PRINCIPAL; OBTENDO DADOS DO JOGADOR 1
BEGIN

TEXTCOLOR(9);									 
writeln;
writeln;
writeln('              @@@@  @@   @@  @ #@@@@ @     @@      @@@@ @@@@    ');  
writeln('              @  @  @ @  @@@ @ #@    @     @,@     @    @  @    ');  
writeln('              @@@@  @ @  @ @ @ #@@@  @     @ @     @@@  @       ');   
writeln('              @    @@@@@ @  @@ #@    @    @@#@@    @    @  @    ');   
writeln('              @    @  @@ @  @@ #@@@@ @@@@ @  @@    @    @@@@    ');   
writeln('                                                            ');
TEXTCOLOR(8);
writeln('                      <<< INFORME OS SEUS DADOS >>>						 ');
writeln;
writeln;
textcolor(12);                                                                            {JOGADOR 1}
writeln('                           JOGADOR 1                       ');
writeln('');
TEXTCOLOR(14);
write('  INFORME O SEU APELIDO: ');
write('');read(Dados[1].nome);
writeln;
write('  TIME DE CORAÇÃO:  ');
readln(Dados[1].time);
writeln;
textcolor(8);
writeln('                  <<< PRESSIONE ENTER PARA CONTINUAR >>>  ');
writeln;
READKEY;
clrscr;
END;


                        //MENU PRINCIPAL; OBTENDO DADOS DO JOGADOR 2

BEGIN

TEXTCOLOR(9);									 
writeln;
writeln;
writeln('              @@@@  @@   @@  @ #@@@@ @     @@      @@@@ @@@@    ');  
writeln('              @  @  @ @  @@@ @ #@    @     @,@     @    @  @    ');  
writeln('              @@@@  @ @  @ @ @ #@@@  @     @ @     @@@  @       ');   
writeln('              @    @@@@@ @  @@ #@    @    @@#@@    @    @  @    ');   
writeln('              @    @  @@ @  @@ #@@@@ @@@@ @  @@    @    @@@@    ');   
writeln('                                                            ');
TEXTCOLOR(8);
writeln('                      <<< INFORME OS SEUS DADOS >>>						 ');
writeln;
writeln;
textcolor(12);                                                                           {JOGADOR 2}
writeln('                           JOGADOR 2                       ');
writeln;
TEXTCOLOR(14);
write('  INFORME O SEU APELIDO: ');
read(Dados[2].nome);
writeln;
write('  TIME DE CORAÇÃO:  ');
readln(Dados[2].time);
writeln;
Textcolor(8);
writeln('                  <<< PRESSIONE ENTER PARA CONTINUAR >>>  ');
writeln;
READKEY;
clrscr;
END;

                        
                        //TELA DE INSTRUÇÕES
                       
Begin

repeat
textcolor(cont);
writeln('	');
writeln('                           <<<< INSTRUÇÕES >>>>     ');
writeln('');
textcolor(9);
writeln('');
writeln(' 1 - Panela é um jogo multiplayer de perguntas e respostas ');
writeln('     relacionadas ao futebol brasileiro e mundial. ');
writeln('');
writeln(' 2 - O jogo é constituído de 16 perguntas, cada pergunta vale ');
writeln('     1 Gol e independe do nível de dificuldade da pergunta indicada. ');;
writeln('     As perguntas possuem até 4 opções de resposta numeradas de 1 a 4.');
writeln('     Se o jogador responder uma alternativa fora das opções fornecidas ');
writeln('     terá sua alternativa anulada e perderá a vez ');
writeln('');
writeln(' 3 - As perguntas deverão ser respondidas alternadamente por cada ');
writeln('     jogador digitando o valor correspondente à alternativa desejada');
writeln('     e pressionando a tecla ENTER. O jogador deverá seguir rigidamente');
writeln('     os padrões de comando do jogo indicados na tela no decorrer do jogo ');		
writeln('     na cor << CINZA >>. ');
writeln('');
writeln(' 4 - No final da partida irá ganhar o jogador que obtiver o maior  ');
writeln('     número de gols. ');
writeln('');
writeln('');
TEXTCOLOR(8);
writeln('                   <<< PRESSIONE ENTER PARA CONTINUAR >>>    ');  
delay(150);
cont:=cont+1;
clrscr;
until(keypressed);

end;

							             	 //TELA DE INÍCIO


 
textbackground(2);
textcolor(7); 
writeln;                                                         
writeln('          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             ');
writeln('          #@                         @.                        :@             ');
writeln('          #@                         @.                        :@             ');
writeln('          #@                         @.                        :@             ');
writeln('          #@@@@@@@@@@@              ,@,               @@@@@@@@@@@             ');    
writeln('          #@        :@            #@@@@@              @:       :@             ');
writeln('          #@        :@           @@  @.#@#            @:       :@             ');
writeln('          #@        :@          +@`  @.  @.           @:       :@             ');
writeln('          #@        :@          @@   @.  @@           @:       :@             ');
writeln('          #@        :@          @.   @.  +@           @:       :@             ');
writeln('          #@        :@          @.   @.  +@           @:       :@             ');
writeln('          #@        :@          @+   @.  @@           @:       :@             ');
writeln('          #@        :@          @@   @. .@,           @:       :@             ');
writeln('          #@        :@           @@: @`+@@            @:       :@             ');
writeln('          #@        :@            @@@@@@#             @:       :@             ');
writeln('          #@@@@@@@@@@@              ;@:               @@@@@@@@@@@             ');
writeln('          #@                         @.                        :@             ');
writeln('          #@                         @.                        :@             ');
writeln('          #@                         @.                        :@             ');
writeln('          #@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             ');
writeln(''); 
textbackground(black);
writeln;
textcolor(14);
WRITELN('              ----------------       ----------------   ');
writeln('                     ',Dados[1].time:5,'      X      ',Dados[2].time:5);
writeln('              ----------------       ----------------   ');
writeln;
TEXTCOLOR(8); 
writeln('                << PRESSIONE ENTER PARA INICIAR A PARTIDA >>         ');
writeln;

READKEY;
READKEY;

clrscr;


										//INICIO DAS PERGUNTAS

                          //1º pergunta


Pont_player1:=0;      //Zera a pontuação do jogo
Pont_player2:=0;									

                     {Cada jogador possui um padrão de coloração diferente, sendo
										  o jogador 1 a cor azul e o jogador 2 a cor amarela}

writeln('');
Textcolor(7);                 
TEXTBACKGROUND(9);
writeln(' JOGADA: ',Dados[1].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(9);
writeln(' A - Quem venceu a Copa do Mundo de 1994?  ');
writeln;
writeln(' 1 - India ');
writeln(' 2 - Alemanha ');
writeln(' 3 - Inglaterra ');
writeln(' 4 - Brasil ');
writeln;
readln(r1);             //Leitura da resposta

case r1 of 

1:Begin
 cont_erradas1:=cont_erradas1+1;      //Contador de respostas erradas
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln(' Resposta correta: Brasil ');    //Mostra a opção correta da alternativa
  end; 

2:Begin
  cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('      Resposta correta: Brasil ');
  end; 

3:Begin
 cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln(' Resposta correta: Brasil ');
  end; 
4:Begin
   Pont_player1:=Pont_player1+1;          //Contador de respostas corretas
   Textcolor(10);
   writeln('              RESPOSTA CORRETA ');
   writeln(' ');                                 {As demais perguntas funcionam no mesmo
	                                                padrão, alterando somente as funcionalidades
																									individuais de cada uma}
   
  end;
	
	Else writeln('     RESPOSTA ANULADA '); 
  
END;
Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');	
readkey;
  clrscr;		  

          
					
					       //Segunda pergunta
					       
writeln('');
Textcolor(7);
TEXTBACKGROUND(14);
writeln(' JOGADA: ',Dados[2].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(14);
writeln(' B - Em qual estádio foi a abertura da Copa do Mundo de 2014?  ');
writeln;
writeln(' 1 - Morumbi ');
writeln(' 2 - Arena Corinthians ');
writeln(' 3 - Beira Rio ');
writeln(' 4 - Pacaembu  ');
writeln;
readln(r2);

case r2 of 

1:Begin
cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('      Resposta correta: Arena Corinthians ');
   
  end; 

2:Begin
   Pont_player2:=Pont_player2+1;
   Textcolor(10);
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  end; 

3:Begin
 cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('     Resposta correta: Arena Corinthians ');
  end; 
4:Begin
 cont_erradas2:=cont_erradas2+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('     Resposta correta: Arena Corinthians ');
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
 
end;
 Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;
	
				  					       

							 // 3º pergunta
							 
writeln('');
Textcolor(7);
TEXTBACKGROUND(9);
writeln(' JOGADA: ',Dados[1].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(9);
writeln(' C - Quando a seleção brasileira foi campeã mundial ');
writeln('     pela primeira vez?  ');
writeln;
writeln(' 1 - 1958 ');
writeln(' 2 - 1962 ');
writeln(' 3 - 1970  ');
writeln(' 4 - 1994  ');
writeln;
readln(r3);

case r3 of 

1:Begin
   Pont_player1:=Pont_player1+1;
   Textcolor(10);
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  end; 

2:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   Writeln('      Respota correta: 1958 ');
   writeln('');
  end; 

3:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('      Resposta correta: 1958 ');
  end; 
4:Begin
   cont_erradas1:=cont_erradas1+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('       Resposta correta: 1958 ');
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
 end; 
	
	Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;
 
	
	
	                    // 4º pergunta 
											
																	 
writeln('');
Textcolor(7);
TEXTBACKGROUND(14);
writeln(' JOGADA: ',Dados[2].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(14);
writeln(' D - Quantas vezes a seleção brasileira foi campeã mundial?  ');
writeln;
writeln(' 1 - 2 vezes ');
writeln(' 2 - 4 vezes ');
writeln(' 3 - 5 vezes  ');
writeln(' 4 - 7 vezes  ');
writeln;
readln(r4);

case r4 of 

1:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: 5 vezes ');
   writeln('');
  end; 

2:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   Writeln('      Respota correta: 5 vezes ');
   writeln('');
  end; 

3:Begin
   Pont_player2:=Pont_player2+1;
   Textcolor(10);
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  end; 

4:Begin
   cont_erradas2:=cont_erradas2+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('       Resposta correta: 5 vezes ');
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;							 


														// 5° Pergunta
														
writeln('');
Textcolor(7);
TEXTBACKGROUND(9);
writeln(' JOGADA: ',Dados[1].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(9);
writeln(' E - Qual foi o primeiro jogador a ganhar o prêmio de melhor ');
writeln('     jogador do mundo FIFA? ');  
writeln;
writeln(' 1 - Lothar Matthäus ');
writeln(' 2 - Romário ');
writeln(' 3 - Diego Maradona  ');
writeln(' 4 - Baggio ');
writeln;
readln(r5);

case r5 of 

1:Begin
   
   Textcolor(10);
   Pont_player1:=Pont_player1+1;
   writeln('              RESPOSTA CORRETA  ');
   Textcolor(11);
   writeln('');
  end; 

2:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   Writeln('      Respota correta: Lothar Matthäus ');
   writeln('');
  end; 

3:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('       Resposta correta: Lothar Matthäus  ');
   writeln('');
  end; 

4:Begin
  cont_erradas1:=cont_erradas1+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('       Resposta correta: Lothar Matthäus ');
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;	
	
	
	                       //6º Pergunta	
												 
												 
writeln('');
Textcolor(7);
TEXTBACKGROUND(14);
writeln(' JOGADA: ',Dados[2].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(14);
writeln(' F - Em qual ano ocorreu a transferência de Ronaldinho do Grêmio ');
writeln('     para o PSG (Paris Saint German)?  ');
writeln;
writeln(' 1 - 1998 ');
writeln(' 2 - 2000 ');
writeln(' 3 - 2001  ');
writeln(' 4 - 2002  ');
writeln;
readln(r6);

case r6 of 

1:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: 2001 ');
   writeln('');
  end; 

2:Begin
  cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   Writeln('      Respota correta: 2001 ');
   writeln('');
  end; 

3:Begin
   Pont_player2:=Pont_player2+1;
   Textcolor(10);
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  end; 

4:Begin
  cont_erradas2:=cont_erradas2+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('       Resposta correta: 2001 ');
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;												 					 														
			 
			 
			                    // 7 Pergunta
			         
writeln('');
Textcolor(7);
TEXTBACKGROUND(9);
writeln(' JOGADA: ',Dados[1].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(9);
writeln(' G - Único goleiro artilheiro a ser eleito 3 vezes melhor ');
writeln('     goleiro do mundo pela Fifa ');
writeln;
writeln(' 1 - Gianluigi Buffon ');
writeln(' 2 - José Luis Chilavert ');
writeln(' 3 - René Higuita  ');
writeln(' 4 - Rogério Ceni  ');
writeln;
readln(r7);

case r7 of 

1:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: José Luis Chilavert ');
   writeln('');
  end; 

2:Begin
   Textcolor(10);
   Pont_player1:=Pont_player1+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  end; 

3:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   WRITELN('   Resposta correta: José Luis Chilavert'); 
   writeln('');
  end; 

4:Begin
  cont_erradas1:=cont_erradas1+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('       Resposta correta: José Luis Chilavert ');
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;	
				         
             // 8 Pergunta
						 
						 
writeln('');
Textcolor(7);
TEXTBACKGROUND(14);
writeln(' JOGADA: ',Dados[2].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(14);
writeln(' H - Em qual clube profissional Ronaldinho Gaúcho marcou mais gols? ');
writeln;
writeln(' 1 - Atlético Mineiro/Mg ');
writeln(' 2 - Flamengo/Rj ');
writeln(' 3 - Barcelona/ESP ');
writeln(' 4 - Milan/ITA  ');
writeln;
readln(r8);

case r8 of 

1:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Barcelona ');
   writeln('');
  end; 

2:Begin
  cont_erradas2:=cont_erradas2+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Barcelona ');
   writeln('');
  end; 

3:Begin
   Textcolor(10);
   Pont_player2:=Pont_player2+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
   
  end; 

4:Begin
   cont_erradas2:=cont_erradas2+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA ');
   Textcolor(11);
   writeln('');
   writeln('       Resposta correta: Barcelona ');
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;	
	
	
	            // 9 Pergunta
							
writeln('');
Textcolor(7);
TEXTBACKGROUND(9);
writeln(' JOGADA: ',Dados[1].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(9);
writeln(' I - Goleiro artilheiro que criou e executou a defesa do escorpião ');
writeln('     realizada em 1995.');
writeln;
writeln(' 1 - Hamza Boudlal ');
writeln(' 2 - Lev Yashin ');
writeln(' 3 - Viáfara  ');
writeln(' 4 - René Higuita ');
writeln;
readln(r9);

case r9 of 

1:Begin

   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: René Higuita ');
   writeln('');
  end; 

2:Begin
  cont_erradas1:=cont_erradas1+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: René Higuita ');
   writeln('');
  end; 

3:Begin
 cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: René Higuita ');
   writeln('');
   
  end; 

4:Begin
   Textcolor(10);
   Pont_player1:=Pont_player1+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;		
	
	
                      //10° Pergunta
	              
	              
writeln('');
Textcolor(7);
TEXTBACKGROUND(14);
writeln(' JOGADA: ',Dados[2].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(14);
writeln(' J - Zico jogou por qual clube italiano ?');
writeln;
writeln(' 1 - Napoli  ');
writeln(' 2 - Udinese ');
writeln(' 3 - Lazio   ');
writeln(' 4 - Juventus  ');
writeln;
readln(r10);

case r10 of 

1:Begin
    cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Zico jogou pela Udinese entre 1983 e 1985 ');
	 writeln('            e se tornou um dos maiores ídolos da história desse clube. ');
   writeln('');
  end; 

2:Begin
     Textcolor(10);
   Pont_player2:=Pont_player2+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  end; 

3:Begin
  cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Zico jogou pela Udinese entre 1983 e 1985 ');
	 writeln('            e se tornou um dos maiores ídolos da história desse clube. ');
   writeln('');
   
  end; 

4:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('');
   writeln('   Resposta correta: Zico jogou pela Udinese entre 1983 e 1985 ');
	 writeln('   e se tornou um dos maiores ídolos da história desse clube. ');
   writeln('');
  
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;	
	
	
	
		         //11º Pergunta
						 
writeln('');
Textcolor(7);
TEXTBACKGROUND(9);
writeln(' JOGADA: ',Dados[1].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(9);
writeln(' K - Qual desses clubes Luis Fabiano "O fabuloso" nunca defendeu? ');
writeln;
writeln(' 1 - Porto (Portugual) ');
writeln(' 2 - Rennes (França) ');
writeln(' 3 - Milan (Itália)  ');
writeln(' 4 - Ponte Preta (Brasil) ');
writeln;
readln(r11);

case r11 of 

1:Begin
    cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Milan  ');
   writeln('');
  end; 

2:Begin
   cont_erradas1:=cont_erradas1+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Milan ');
   writeln('');
  end; 

3:Begin
   Textcolor(10);
   Pont_player1:=Pont_player1+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
   
  end; 

4:Begin
   cont_erradas1:=cont_erradas1+1;
  Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Milan ');
   writeln('');
	 end;
	 
	 Else writeln('     RESPOSTA ANULADA '); 
   end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;	
	
	
							           //12º Pergunta
									  
								
																			 							 
writeln('');
Textcolor(7);
TEXTBACKGROUND(14);
writeln(' JOGADA: ',Dados[2].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(14);
writeln(' L - Em que ano Rivaldo foi eleito o melhor jogador  ');
writeln('     do mundo pela FIFA?');
writeln;
writeln(' 1 - No ano de 1998  ');
writeln(' 2 - No ano de 1999 ');
writeln(' 3 - No ano de 2000 ');
writeln(' 4 - No ano de 2001  ');
writeln;
readln(r12);

case r12 of 

1:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln;
   writeln('        Resposta correta:  No ano de 1999, neste ano Rivaldo ');
	 writeln('        foi eleito o melhor  jogador do mundo pela FIFA ');
	 writeln('         quando atuava pelo Barcelona. ');
   writeln('');
  end; 

2:Begin
     Textcolor(10);
   Pont_player2:=Pont_player2+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  end; 

3:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln;
   writeln('        Resposta correta:  No ano de 1999, neste ano Rivaldo ');
	 writeln('        foi eleito o melhor  jogador do mundo pela FIFA ');
	 writeln('         quando atuava pelo Barcelona. ');
   writeln('');
   
  end; 

4:Begin
  cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('');
     writeln('        Resposta correta:  No ano de 1999, neste ano Rivaldo ');
	 writeln('        foi eleito o melhor  jogador do mundo pela FIFA ');
	 writeln('         quando atuava pelo Barcelona. ');
   writeln('');
  
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;	
	
	                  
										 
										   // 13º Pergunta	
											
						 
writeln('');
Textcolor(7);
TEXTBACKGROUND(9);
writeln(' JOGADA: ',Dados[1].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(9);
writeln(' M - Marta, melhor jogadora do mundo 5 vezes consecutiva jogou ');
writeln('     em apenas três países. Brasil e Estados Unidos são dois deles. ');
writeln('     Qual é o terceiro pais que Marta jogou?  ');
writeln;
writeln(' 1 - Suiça  ');
writeln(' 2 - Alemanha ');
writeln(' 3 - Japão  ');
writeln(' 4 - Suécia  ');
writeln;
readln(r13);

case r13 of 

1:Begin
    cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Suécia, Marta jogou na ');
	 writeln('        Suécia defendendo o time dos Umea IK.');
   writeln('');
  end; 

2:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Suécia, Marta jogou na ');
	 writeln('        Suécia defendendo o time dos Umea IK.');
   writeln('');
  end; 

3:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Suécia, Marta jogou na ');
	 writeln('        Suécia defendendo o time dos Umea IK.');
   writeln('');
   
  end; 

4:Begin
   Textcolor(10);
   Pont_player1:=Pont_player1+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
	 end;
	 
	 Else writeln('     RESPOSTA ANULADA '); 
   end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;	
	
	                 
									 
									 //14º Pergunta
									 
writeln('');
Textcolor(7);
TEXTBACKGROUND(14);
writeln(' JOGADA: ',Dados[2].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(14);
writeln(' N - Quanta vezes Zico foi artilheiro do campeonato brasileiro ?  ');
writeln;
writeln(' 1 - Nenhuma vez   ');
writeln(' 2 - 1 Vez ');
writeln(' 3 - 2 Vezes ');
writeln(' 4 - 5 Vezes  ');
writeln;
readln(r14);

case r14 of 

1:Begin
    cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln;
   writeln('       Resposta correta: Zico foi artilheiro do ');
	 writeln('        campeonato brasileiro 2 Vezes ');
   writeln('');
  end; 

2:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln;
   writeln('       Resposta correta: Zico foi artilheiro do ');
	 writeln('        campeonato brasileiro 2 Vezes ');
   writeln('');
  end; 

3:Begin
     Textcolor(10);
   Pont_player2:=Pont_player2+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
   
  end; 

4:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln;
   writeln('       Resposta correta: Zico foi artilheiro do ');
	 writeln('        campeonato brasileiro 2 Vezes ');
   writeln('');
  
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;	
  
  
										 						  
									       // 15ºPergunta
									       
writeln('');
Textcolor(7);
TEXTBACKGROUND(9);
writeln(' JOGADA: ',Dados[1].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(9);
writeln(' O - Qual é o nome inteiro do Ronaldo Fenômeno? ');
writeln;
writeln(' 1 - Ronaldo Nazario de lima ');
writeln(' 2 - Ronaldo Luiz Nazario de Lima ');
writeln(' 3 - Ronaldo Nazario Felipe  ');
writeln(' 4 - Ronaldo Nazario Souza ');
writeln;
readln(r15);

case r15 of 

1:Begin
    cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Ronaldo Luiz Nazario de Lima ');
   writeln('');
  end; 

2:Begin
   Textcolor(10);
   Pont_player1:=Pont_player1+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  end; 

3:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Ronaldo Luiz Nazario de Lima ');
   writeln('');
   
  end; 

4:Begin
   cont_erradas1:=cont_erradas1+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln('        Resposta correta: Ronaldo Luiz Nazario de Lima ');
   writeln('');
	 end;
	 
	 Else writeln('     RESPOSTA ANULADA '); 
   end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;	
	
	
										    
												//16ºPergunta 
												  

writeln('');
Textcolor(7);
TEXTBACKGROUND(14);
writeln(' JOGADA: ',Dados[2].nome,'         PLACAR: ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'          ');
writeln;
TEXTBACKGROUND(BLACK);
Textcolor(14);
writeln(' P - Qual foi o primeiro jogador africano a ganhar o prêmio ');
writeln('     de melhor jogador do mundo FIFA? ');
writeln;
writeln(' 1 - George Weah   ');
writeln(' 2 - Samuel Eto´o  ');
writeln(' 3 - Didier Drogba  ');
writeln(' 4 - Yaya Touré  ');
writeln;
readln(r16);

case r16 of 

1:Begin
    Textcolor(10);
   Pont_player2:=Pont_player2+1;
   writeln('              RESPOSTA CORRETA ');
   Textcolor(11);
   writeln('');
  end; 

2:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln;
   writeln('       Resposta coreta:George Weah ');
   writeln('');
  end; 

3:Begin
   cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln;
   writeln('       Resposta coreta:George Weah ');
   writeln('');
  end; 

4:Begin
  cont_erradas2:=cont_erradas2+1;
   Textcolor(12);
   writeln('              RESPOSTA ERRADA  ');
   Textcolor(11);
   writeln;
   writeln('       Resposta coreta:George Weah ');
   writeln('');
  
  end;
  
  Else writeln('     RESPOSTA ANULADA '); 
  end;
	
		Textcolor(8);
 writeln('');
 writeln('                << PRESSIONE ENTER PARA CONTINUAR >>  ');
 readkey;
  clrscr;
  
                  //Condições de Pontuação

Begin									 

case Pont_player1 of 

 0:nivel1:=' Perna de pau';
 1..3:nivel1:=' Jogador de Várzea';
 4..6:nivel1:=' Bom de bola ';
 7..9:nivel1:=' Craque Artilheiro';

end;

Case Pont_player2 of 

 0:nivel2:=' Perna de pau';
 1..3:nivel2:=' Jogador de Várzea';
 4..6:nivel2:=' Bom de bola ';
 7..9:nivel2:=' Craque Artilheiro';
end; 

if (Pont_player1=Pont_player2) then partida:=' EMPATE ';         {Condições de pontuação}
if (Pont_player1>Pont_player2) then partida:=' JOGADOR 1 ';
if (Pont_player2>Pont_player1) then partida:=' JOGADOR 2 ';  
									 
end;


                    //Conclusão do jogo        {Tela de estatísticas}
                    
Begin
writeln;
textcolor(9);
writeln('                               @@         @@           ');
writeln('                               @@   @@    @@           ');
writeln('                                @@ @@@@: @@            ');    
writeln('                                @@ :@@  @@             ');
writeln('                                 @@@@@@@@#             ');
writeln('                                  @@@@@@@              ');
writeln('                                   @@@@@               ');
writeln('                                   @@@@@               ');
writeln('                                   @@@@@               ');
writeln('                                   @@@@@               ');
writeln('                                   @@ @@               ');
writeln('                                   @@ @@               ');
writeln('                                   @@ @@               ');
writeln('                                   @@ @@               ');
writeln;
textcolor(8);
writeln('                             << FIM DE JOGO >>          ');
writeln;
textcolor(12);
writeln('         DOMÍNIO: ',partida);     {Indica o jogador com maior número de pontos}
Writeln;
writeln;
textcolor(14);
textbackground(9);
writeln('                          ',Dados[1].time,'  ',Pont_player1,' x ',Pont_player2,'  ',Dados[2].time,'                                   ');
writeln;
textcolor(9);
textbackground(black);
writeln(' RESPOSTAS CORRETAS: ', Dados[1].nome,' = ',Pont_player1,'  /  ',Dados[2].nome,' = ',Pont_player2,' ');
writeln(' RESPOSTAS ERRADAS:   ',Dados[1].nome,' = ',cont_erradas1,'  /  ',Dados[2].nome,' = ',cont_erradas2,' ');
writeln(' NÍVEIS DOS JOGADORES ',Dados[1].nome,' =',nivel1 ,' / ',Dados[2].nome,' =',nivel2,' ');
writeln;
textcolor(8);
writeln('                     << PRESSIONE ENTER PARA FINALIZAR >>         '); 
READKEY; 
CLRSCR;
end;
																	 
end;{End do procedure jogo}	


Procedure instructions;         //TELA DE INSTRUÇÕES
Begin
textcolor(8);
writeln('	');
writeln('                           <<<< INSTRUÇÕES >>>>     ');
writeln('');
textcolor(9);
writeln('');
writeln(' 1 - Panela é um jogo multiplayer de perguntas e respostas ');
writeln('     relacionadas ao futebol brasileiro e mundial. ');
writeln('');
writeln(' 2 - O jogo é constituído de 16 perguntas, cada pergunta vale ');
writeln('     1 Gol e independe do nível de dificuldade da pergunta indicada. ');;
writeln('     As perguntas possuem até 4 opções de resposta numeradas de 1 a 4.');
writeln('     Se o jogador responder uma alternativa fora das opções fornecidas ');
writeln('     terá sua alternativa anulada e perderá a vez ');
writeln('');
writeln(' 3 - As perguntas deverão ser respondidas alternadamente por cada ');
writeln('     jogador digitando o valor correspondente à alternativa desejada');
writeln('     e pressionando a tecla ENTER. O jogador deverá seguir rigidamente');
writeln('     os padrões de comando do jogo indicados na tela no decorrer do jogo ');		
writeln('     na cor << CINZA >>. ');
writeln('');
writeln(' 4 - No final da partida irá ganhar o jogador que obtiver o maior  ');
writeln('     número de gols. ');
writeln('');
TEXTCOLOR(8);
writeln('                     << PRESSIONE ENTER PARA VOLTAR  >>');
READKEY;
clrscr;


end;

Procedure credits;
Begin                        //TELA DE CRÉDITOS
writeln;
textcolor(9);
writeln('               @@@@  @@   @@  @ #@@@@ @     @@      @@@@ @@@@    ');  
writeln('               @  @  @ @  @@@ @ #@    @     @,@     @    @  @    ');  
writeln('               @@@@  @ @  @ @ @ #@@@  @     @ @     @@@  @       ');   
writeln('               @    @@@@@ @  @@ #@    @    @@#@@    @    @  @    ');   
writeln('               @    @  @@ @  @@ #@@@@ @@@@ @  @@    @    @@@@    ');   
writeln('                                                                ');
writeln;
textcolor(9);
writeln('                         DESENVOLVIDO POR:                       ');
textcolor(14);
writeln('	             Pedro Henrique Carvalho                   ');
writeln;
writeln('                           VERSÃO 1.0.2                ');
WRITELN;
textcolor(9);
writeln('                           Abril de 2017                         ');
writeln;
textcolor(9);
writeln('                       CONTEÚDO RETIRADO DE:                        ');
textcolor(14);
writeln('                    RachaCuca.com//Terra.com.br                   ');
writeln;
textcolor(9);
writeln('                    CÓDIGO FONTE DISPONÍVEL EM:                  ');
textcolor(14);
writeln('                           GitHub.com/                             ');
writeln;
textcolor(9);
writeln('                         MAIS INFORMAÇÕES:                    ');
textcolor(14);
writeln('                       pedrosophbc@gmail.com                      ');
writeln;
TEXTCOLOR(8);
writeln('                  << PRESSIONE ENTER PARA VOLTAR >>              ');
delay(200);
readkey;
CLRSCR;
end;			


													//Escopo principal do jogo

Begin
while menu<>4 do
Begin
textcolor(9);
writeln;       
writeln('            @@@@  @@   @@  @ #@@@@ @     @@      @@@@ @@@@    ');  
writeln('            @  @  @ @  @@@ @ #@    @     @,@     @    @  @    ');  
writeln('            @@@@  @ @  @ @ @ #@@@  @     @ @     @@@  @       ');
TEXTCOLOR(14);   
writeln('            @    @@@@@ @  @@ #@    @    @@#@@    @    @  @    ');   
writeln('            @    @  @@ @  @@ #@@@@ @@@@ @  @@    @    @@@@    ');   
writeln('                                                            ');
writeln;
									//MENU PRINCIPAL
textcolor(14);
TEXTBACKGROUND(9);
writeln('                  =====================================                        ');
writeln('                                                                               ');
writeln('                       1 - JOGAR                                               ');
writeln('                       2 - INSTRUÇÕES                                          ');
writeln('                       3 - CRÉDITOS                                            ');
writeln('                       4 - SAIR                                                ');
writeln('                                                                               ');
writeln('                  =====================================                        ');
writeln;
TEXTBACKGROUND(BLACK);
TEXTCOLOR(8);  
writeln('                 << INFORME O NÚMERO DA OPÇÃO DESEJADA >>      '); 
readln(Menu);
clrscr;

if (menu= 1) then jogo;
if (menu=2) then instructions;       {Condições de leitura do menu}
if (menu=3) then credits;
end;


  
End.
