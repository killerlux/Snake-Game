#                      _..._                 .           __.....__
#                    .'     '.             .'|       .-''         '.
#                   .   .-.   .          .'  |      /     .-''"'-.  `.
#                   |  '   '  |    __   <    |     /     /________\   \
#               _   |  |   |  | .:--.'.  |   | ____|                  |
#             .' |  |  |   |  |/ |   \ | |   | \ .'\    .-------------'
#            .   | /|  |   |  |`" __ | | |   |/  .  \    '-.____...---.
#          .'.'| |//|  |   |  | .'.''| | |    /\  \  `.             .'
#        .'.'.-'  / |  |   |  |/ /   | |_|   |  \  \   `''-...... -'
#        .'   \_.'  |  |   |  |\ \._,\ '/'    \  \  \
#                   '--'   '--' `--'  `"'------'  '---'
#
#
#
#                                               .......
#                                     ..  ...';:ccc::,;,'.
#                                 ..'':cc;;;::::;;:::,'',,,.
#                              .:;c,'clkkxdlol::l;,.......',,
#                          ::;;cok0Ox00xdl:''..;'..........';;
#                          o0lcddxoloc'.,. .;,,'.............,'
#                           ,'.,cc'..  .;..;o,.       .......''.
#                             :  ;     lccxl'          .......'.
#                             .  .    oooo,.            ......',.
#                                    cdl;'.             .......,.
#                                 .;dl,..                ......,,
#                                 ;,.                   .......,;
#                                                        ......',
#                                                       .......,;
#                                                       ......';'
#                                                      .......,:.
#                                                     .......';,
#                                                   ........';:
#                                                 ........',;:.
#                                             ..'.......',;::.
#                                         ..';;,'......',:c:.
#                                       .;lcc:;'.....',:c:.
#                                     .coooc;,.....,;:c;.
#                                   .:ddol,....',;:;,.
#                                  'cddl:'...,;:'.
#                                 ,odoc;..',;;.                    ,.
#                                ,odo:,..';:.                     .;
#                               'ldo:,..';'                       .;.
#                              .cxxl,'.';,                        .;'
#                              ,odl;'.',c.                         ;,.
#                              :odc'..,;;                          .;,'
#                              coo:'.',:,                           ';,'
#                              lll:...';,                            ,,''
#                              :lo:'...,;         ...''''.....       .;,''
#                              ,ooc;'..','..';:ccccccccccc::;;;.      .;''.
#          .;clooc:;:;''.......,lll:,....,:::;;,,''.....''..',,;,'     ,;',
#       .:oolc:::c:;::cllclcl::;cllc:'....';;,''...........',,;,',,    .;''.
#      .:ooc;''''''''''''''''''',cccc:'......'',,,,,,,,,,;;;;;;'',:.   .;''.
#      ;:oxoc:,'''............''';::::;'''''........'''',,,'...',,:.   .;,',
#     .'';loolcc::::c:::::;;;;;,;::;;::;,;;,,,,,''''...........',;c.   ';,':
#     .'..',;;::,,,,;,'',,,;;;;;;,;,,','''...,,'''',,,''........';l.  .;,.';
#    .,,'.............,;::::,'''...................',,,;,.........'...''..;;
#   ;c;',,'........,:cc:;'........................''',,,'....','..',::...'c'
#  ':od;'.......':lc;,'................''''''''''''''....',,:;,'..',cl'.':o.
#  :;;cclc:,;;:::;''................................'',;;:c:;,'...';cc'';c,
#  ;'''',;;;;,,'............''...........',,,'',,,;:::c::;;'.....',cl;';:.
#  .'....................'............',;;::::;;:::;;;;,'.......';loc.'.
#   '.................''.............'',,,,,,,,,'''''.........',:ll.
#    .'........''''''.   ..................................',;;:;.
#      ...''''....          ..........................'',,;;:;.
#                                ....''''''''''''''',,;;:,'.
#                                    ......'',,'','''..
#


################################################################################
#                  Fonctions d'affichage et d'entr?e clavier                   #
################################################################################

# Ces fonctions s'occupent de l'affichage et des entr?es clavier.
# Il n'est pas obligatoire de comprendre ce qu'elles font.

.data

# Tampon d'affichage du jeu 256*256 de mani?re lin?aire.

frameBuffer: .word 0 : 1024  # Frame buffer

# Code couleur pour l'affichage
# Codage des couleurs 0xwwxxyyzz o?
#   ww = 00
#   00 <= xx <= ff est la couleur rouge en hexad?cimal
#   00 <= yy <= ff est la couleur verte en hexad?cimal
#   00 <= zz <= ff est la couleur bleue en hexad?cimal

colors: .word 0x00000000, 0x00ff0000, 0xff00ff00, 0x00396239, 0x00ff00ff, 0x00ffffff, 0x00141414
.eqv black 0
.eqv red   4
.eqv green 8
.eqv greenV2 12
.eqv rose  16
.eqv white 20  
.eqv fond 24

#couleurs pour l'effet Rainbow 
rainbow: .word 0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080, 
0x0000ff00, 0x00ff0000, 0x00ff8000, 0x00ffff00, 0x0080ff00, 0x0000ffff, 0x0000ff80, 0x000080ff, 0x000000ff, 0x008000ff, 0x00ff00ff, 0x00ff0080


 
# Derniere position connue de la queue du serpent. 

lastSnakePiece: .word 0, 0

.text
j main

############################# printColorAtPosition #############################
# Param?tres: $a0 La valeur de la couleur
#             $a1 La position en X
#             $a2 La position en Y
# Retour: Aucun
# Effet de bord: Modifie l'affichage du jeu
################################################################################

printColorAtPosition:
lw $t0 tailleGrille
mul $t0 $a1 $t0
add $t0 $t0 $a2
sll $t0 $t0 2
sw $a0 frameBuffer($t0)
jr $ra

################################ resetAffichage ################################
# Param?tres: Aucun
# Retour: Aucun
# Effet de bord: R?initialise tout l'affichage avec la couleur noir
################################################################################

resetAffichage:
lw $t1 tailleGrille
mul $t1 $t1 $t1
sll $t1 $t1 2
la $t0 frameBuffer
addu $t1 $t0 $t1
lw $t3 colors + fond

RALoop2: bge $t0 $t1 endRALoop2
  sw $t3 0($t0)
  add $t0 $t0 4
  j RALoop2
endRALoop2:
jr $ra

################################## printSnake ##################################
# Param?tres: Aucun
# Retour: Aucun
# Effet de bord: Change la couleur de l'affichage aux emplacement ou se
#                trouve le serpent et sauvegarde la derni?re position connue de
#                la queue du serpent.
################################################################################

printSnake:
subu $sp $sp 12
sw $ra 0($sp)
sw $s0 4($sp)
sw $s1 8($sp)

lw $s0 tailleSnake
sll $s0 $s0 2
li $s1 0

lw $a0 rainbow
lw $a1 snakePosX($s1)
lw $a2 snakePosY($s1)
jal printColorAtPosition
li $s1 4

#on prend la premiere couleur de rainbow 
PSLoop:
bge $s1 $s0 endPSLoop
  lw $a0 rainbow($s1) 	#on prends la #s1-ieme couleur de rainbow	
  lw $a1 snakePosX($s1)
  lw $a2 snakePosY($s1)
  jal printColorAtPosition         
  addu $s1 $s1 4                 #on increment s1 par 1 pour accéder à la couleur suivante
  j PSLoop 
endPSLoop:

subu $s0 $s0 4
lw $t0 snakePosX($s0)
lw $t1 snakePosY($s0)
sw $t0 lastSnakePiece
sw $t1 lastSnakePiece + 4

lw $ra 0($sp)
lw $s0 4($sp)
lw $s1 8($sp)
addu $sp $sp 12
jr $ra

################################ printObstacles ################################
# Param?tres: Aucun
# Retour: Aucun
# Effet de bord: Change la couleur de l'affichage aux emplacement des obstacles.
################################################################################

printObstacles:
subu $sp $sp 12
sw $ra 0($sp)
sw $s0 4($sp)
sw $s1 8($sp)

lw $s0 numObstacles
sll $s0 $s0 2
li $s1 0

POLoop:
bge $s1 $s0 endPOLoop
  lw $a0 colors + red
  lw $a1 obstaclesPosX($s1)
  lw $a2 obstaclesPosY($s1)
  jal printColorAtPosition
  addu $s1 $s1 4
  j POLoop
endPOLoop:

lw $ra 0($sp)
lw $s0 4($sp)
lw $s1 8($sp)
addu $sp $sp 12
jr $ra

################################## printCandy ##################################
# Param?tres: Aucun
# Retour: Aucun
# Effet de bord: Change la couleur de l'affichage ? l'emplacement du bonbon.
################################################################################

printCandy:
subu $sp $sp 4
sw $ra ($sp)

lw $a0 colors + rose
lw $a1 candy
lw $a2 candy + 4
jal printColorAtPosition

lw $ra ($sp)
addu $sp $sp 4
jr $ra

eraseLastSnakePiece:
subu $sp $sp 4
sw $ra ($sp)

lw $a0 colors + fond
lw $a1 lastSnakePiece
lw $a2 lastSnakePiece + 4
jal printColorAtPosition

lw $ra ($sp)
addu $sp $sp 4
jr $ra

################################## printGame ###################################
# Param?tres: Aucun
# Retour: Aucun
# Effet de bord: Effectue l'affichage de la totalit? des ?l?ments du jeu.
################################################################################

printGame:
subu $sp $sp 4
sw $ra 0($sp)

jal eraseLastSnakePiece
jal printSnake
jal printObstacles
jal printCandy

lw $ra 0($sp)
addu $sp $sp 4
jr $ra

############################## getRandomExcluding ##############################
# Param?tres: $a0 Un entier x | 0 <= x < tailleGrille
# Retour: $v0 Un entier y | 0 <= y < tailleGrille, y != x
################################################################################

getRandomExcluding:
move $t0 $a0
lw $a1 tailleGrille
li $v0 42
syscall
beq $t0 $a0 getRandomExcluding
move $v0 $a0
jr $ra

########################### newRandomObjectPosition ############################
# Description: Renvoie une position al?atoire sur un emplacement non utilis?
#              qui ne se trouve pas devant le serpent.
# Param?tres: Aucun
# Retour: $v0 Position X du nouvel objet
#         $v1 Position Y du nouvel objet
################################################################################

newRandomObjectPosition:
subu $sp $sp 4
sw $ra ($sp)

lw $t0 snakeDir
and $t0 0x1
bgtz $t0 horizontalMoving
li $v0 42
lw $a1 tailleGrille
syscall
move $t8 $a0
lw $a0 snakePosY
jal getRandomExcluding
move $t9 $v0
j endROPdir

horizontalMoving:
lw $a0 snakePosX
jal getRandomExcluding
move $t8 $v0
lw $a1 tailleGrille
li $v0 42
syscall
move $t9 $a0
endROPdir:

lw $t0 tailleSnake
sll $t0 $t0 2
la $t0 snakePosX($t0)
la $t1 snakePosX
la $t2 snakePosY
li $t4 0

ROPtestPos:
bge $t1 $t0 endROPtestPos
lw $t3 ($t1)
bne $t3 $t8 ROPtestPos2
lw $t3 ($t2)
beq $t3 $t9 replayROP
ROPtestPos2:
addu $t1 $t1 4
addu $t2 $t2 4
j ROPtestPos
endROPtestPos:

bnez $t4 endROP

lw $t0 numObstacles
sll $t0 $t0 2
la $t0 obstaclesPosX($t0)
la $t1 obstaclesPosX
la $t2 obstaclesPosY
li $t4 1
j ROPtestPos

endROP:
move $v0 $t8
move $v1 $t9
lw $ra ($sp)
addu $sp $sp 4
jr $ra

replayROP:
lw $ra ($sp)
addu $sp $sp 4
j newRandomObjectPosition

################################# getInputVal ##################################
# Param?tres: Aucun
# Retour: $v0 La valeur 0 (haut), 1 (droite), 2 (bas), 3 (gauche), 4 erreur
################################################################################

getInputVal:
lw $t0 0xffff0004
li $t1 115
beq $t0 $t1 GIhaut
li $t1 122
beq $t0 $t1 GIbas
li $t2 119
beq $t0 $t2 GIbas           #value qwerty
li $t1 113
beq $t0 $t1 GIgauche
li $t2 97
beq $t0 $t2 GIgauche        #value qwerty
li $t1 100
beq $t0 $t1 GIdroite
li $v0 4
j GIend

GIhaut:
li $v0 0
j GIend

GIdroite:
li $v0 1
j GIend

GIbas:
li $v0 2
j GIend

GIgauche:
li $v0 3

GIend:
jr $ra

################################ sleepMillisec #################################
# Param?tres: $a0 Le temps en milli-secondes qu'il faut passer dans cette
#             fonction (approximatif)
# Retour: Aucun
################################################################################

sleepMillisec:
move $t0 $a0
li $v0 30
syscall
addu $t0 $t0 $a0

SMloop:
bgt $a0 $t0 endSMloop
li $v0 30
syscall
j SMloop

endSMloop:
jr $ra

##################################### main #####################################
# Description: Boucle principal du jeu
# Param?tres: Aucun
# Retour: Aucun
################################################################################

main:

# Initialisation du jeu
jal resetAffichage
jal newRandomObjectPosition
sw $v0 candy
sw $v1 candy + 4

# Boucle de jeu

mainloop:

jal getInputVal
move $a0 $v0
jal majDirection
jal updateGameStatus
jal conditionFinJeu
bnez $v0 gameOver
jal printGame
li $a0 500	# c'?tait a 500
jal sleepMillisec
j mainloop

gameOver:
jal affichageFinJeu
li $v0 10
syscall

################################################################################
#                                Partie Projet                                 #
################################################################################

# ? vous de jouer !

.data

tailleGrille:  .word 16        # Nombre de case du jeu dans une dimension.

# La t?te du serpent se trouve ? (snakePosX[0], snakePosY[0]) et la queue ?
# (snakePosX[tailleSnake - 1], snakePosY[tailleSnake - 1])
tailleSnake:   .word 1         # Taille actuelle du serpent.
snakePosX:     .word 0 : 1024  # Coordonn?es X du serpent ordonn? de la t?te ? la queue.
snakePosY:     .word 0 : 1024  # Coordonn?es Y du serpent ordonn? de la t.

# Les directions sont repr?sent?s sous forme d'entier allant de 0 ? 3:
snakeDir:      .word 1         # Direction du serpent: 0 (haut), 1 (droite)
                               #                       2 (bas), 3 (gauche)
numObstacles:  .word 0         # Nombre actuel d'obstacle pr?sent dans le jeu.
obstaclesPosX: .word 0 : 1024  # Coordonn?es X des obstacles
obstaclesPosY: .word 0 : 1024  # Coordonn?es Y des obstacles
candy:         .word 0, 0      # Position du bonbon (X,Y)
scoreJeu:      .word 0         # Score obtenu par le joueur

message:		.asciiz "Votre score est: "

#affichageAnimation

RetroMonsterX:        .word 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 9, 9
RetroMonsterY:        .word 5, 10, 6, 7, 8, 9, 7, 7, 6, 7, 8, 9, 10, 4, 5, 7, 8, 10, 11, 4, 5, 6, 7, 8, 9, 10, 11, 5, 6, 9, 10 , 6, 9,12 , 4, 11

#AffichageChiffres
 
Xtemp:		.word 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
Ytemp:		.word 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

Numero0X:	.word 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 4
Numero0Y:	.word 0, 1, 2, 0, 2, 0, 2, 0, 2, 0, 1, 2

Numero1X:	.word 0, 1, 2, 3, 4
Numero1Y:	.word 2, 2, 2, 2, 2

Numero2X:	.word 0, 0, 0, 1, 2, 2, 2, 3, 4, 4, 4
Numero2Y:	.word 0, 1, 2, 2, 0, 1, 2, 0, 0, 1, 2

Numero3X:	.word 0, 0, 0, 1, 2, 2, 2, 3, 4, 4, 4
Numero3Y:	.word 0, 1, 2, 2, 0, 1, 2, 2, 0, 1, 2

Numero4X:	.word 0, 0, 1, 1, 2, 2, 2, 3, 4
Numero4Y:	.word 0, 2, 0, 2, 0, 1, 2, 2, 2

Numero5X:	.word 0, 0, 0, 1, 2, 2, 2, 3, 4, 4, 4
Numero5Y:	.word 0, 1, 2, 0, 0, 1, 2, 2, 0, 1, 2

Numero6X:	.word 0, 0, 0, 1, 2, 2, 2, 3, 3, 4, 4, 4
Numero6Y:	.word 0, 1, 2, 0, 0, 1, 2, 0, 2, 0, 1 ,2

Numero7X:	.word 0, 0, 0, 1, 2, 2, 3, 4
Numero7Y:	.word 0, 1, 2, 2, 1, 2, 2, 2

Numero8X:	.word 0, 0, 0, 1, 1, 2, 2, 2, 3, 3, 4, 4, 4
Numero8Y:	.word 0, 1, 2, 0, 2, 0, 1, 2, 0, 2, 0, 1, 2

Numero9X:	.word 0, 0, 0, 1, 1, 2, 2, 2, 3, 4, 4, 4
Numero9Y:	.word 0, 1, 2, 0, 2, 0, 1, 2, 2, 0, 1, 2



.text

################################# majDirection #################################
# Param?tres: $a0 La nouvelle position demand?e par l'utilisateur. La valeur
#                 ?tant le retour de la fonction getInputVal.
# Retour: Aucun
# Effet de bord: La direction du serpent ? ?t? mise ? jour.
# Post-condition: La valeur du serpent reste intacte si une commande ill?gale
#                 est demand?e, i.e. le serpent ne peut pas faire de demi-tour
#                 en un unique tour de jeu. Cela s'apparente ? du cannibalisme
#                 et ? ?t? proscrit par la loi dans les soci?t?s reptiliennes.
################################################################################


majDirection:
# En haut, ... en bas, ... ? gauche, ... ? droite, ... ces soir?es l? ...


move $t0 $a0				
beq $t0 4 finMajDirection
					
la $t1 snakeDir			
lw $t2 0($t1)		

beq $t2 0 versHaut
beq $t2 1 versDroite
beq $t2 2 versBas
beq $t2 3 versGauche

versHaut:
beq $t0 2 finMajDirection
j autreDirection

versDroite:
beq $t0 3 finMajDirection
j autreDirection

versBas:
beq $t0 0 finMajDirection
j autreDirection

versGauche:
beq $t0 1 finMajDirection
j autreDirection

autreDirection:
sw $t0 0($t1)

finMajDirection:
jr $ra

############################### updateGameStatus ###############################
# Param?tres: Aucun
# Retour: Aucun
# Effet de bord: L'?tat du jeu est mis ? jour d'un pas de temps. Il faut donc :
#                  - Faire bouger le serpent
#                  - Tester si le serpent ? manger le bonbon
#                    - Si oui d?placer le bonbon et ajouter un nouvel obstacle
################################################################################

updateGameStatus:



subu $sp $sp 20	
sw $ra 0($sp)
sw $s3 4($sp)
sw $s2 8($sp)	
sw $s1 12($sp)	
sw $s0 16($sp)

siCandy:
la $t0 snakePosX
lw $t1 0($t0)      
la $t0 snakePosY
lw $t2 0($t0)
la $t0 candy
lw $t3 0($t0)
lw $t4 4($t0)	

bne $t1 $t3 decalage		# si il y a pas de bonbon on se decale
bne $t2 $t4 decalage		# si il n'y a pas de bonbon on se decale

#Cas1: le serpent mange un bonbon

#on augmente la taille 
AugmTaille:			
la $t1 tailleSnake
lw $t2 0($t1)
addi $t2 $t2 1			# taille++
sw $t2 0($t1)


# on genere une nouvelle position de bonbon 
NouvPositionCandy:
jal newRandomObjectPosition	
move $t1 $v0
move $t2 $v1
la $t3 candy
sw $t1 0($t3)
sw $t2 4($t3)

# on genere une nouvelle position d'Obstacle
 
NouvObstacle:
la $s3 scoreJeu			
lw $s4 0($s3)	
sll $t1 $s4 2			#left shift scoreJeu*4 


la $s0 obstaclesPosX	       #stocker la position d'obstacle	
la $s1 obstaclesPosY

add $s0 $s0 $t1                 #adresse(x)+t1
add $s1 $s1 $t1                 #adresse(y)+t1


jal newRandomObjectPosition         #generer les positionsAleatoires 


move $t1 $v0             #stocker les resultats de fonction newRandomoBjectPosition
move $t2 $v1			


sw $t1 0($s0)           #remplacer par la nouvelle position d'obstacle
sw $t2 0($s1)


# on incremente le score par 1 

AugmScore:
addi $s4 $s4 1			#scoreJeu+1
sw $s4 0($s3)                   

# on incremente le nombre d'obstacles par 1 

AugmObstacle:
la $t3 numObstacles           
lw $t4 0($t3)
addi $t4 $t4 1			#numObstacles+1
sw $t4 0($t3)



#Cas2: le serpent n'as pas encore manger le bonbon
#le serpent continue a se decalager

decalage:

decalageCorps:
la $t0 tailleSnake
lw $s4 0($t0)			# taille dans $s4

la $s0 snakeDir			# adresse de la  direction dans $s0
lw $s1 0($s0)			# valeur de la direction dans $s1

la $s2 snakePosX			#t2 adresse de tableau de posiitons X
la $s3 snakePosY	


beq $s4 1 decalageTete

subu $t7 $s2 4    		
move $t0 $s4			 
sll $t0 $t0 2                   
add $s2 $s2 $t0 
add $s3 $s3 $t0

#chaque fois on avance augmente on suprime une case a la queue 
#position x-1 = position x
#position y-1 = position y
loop: 
beq $s2 $t7 decalageTete

lw $t4 0($s2)
sw $t4 4($s2)
subi $s2 $s2 4

lw $t5 0($s3)
sw $t5 4($s3)
subi $s3 $s3 4
b loop


decalageTete:

la $s0 snakeDir			# adresse de la  direction dans $s0
lw $s1 0($s0)			# valeur de la direction dans $s1
beq $s1 0 decalageTeteHaut
beq $s1 1 decalageTeteDroite
beq $s1 2 decalageTeteBas
beq $s1 3 decalageTeteGauche

#deplaceTeteHaut: chaque fois que le serpent se déplace vers le haut, la valeur de x est incrémentée par 1

decalageTeteHaut:		# x++
la $t0 snakePosX		
lw $t1 0($t0)			
addi $t1 $t1 1
sw $t1 0($t0)

j findecalage

#deplaceTeteDroite: chaque fois que le serpent se déplace vers la droite, la valeur de y est incrémentée par 1

decalageTeteDroite:		# y++
la $t0 snakePosY		
lw $t1 0($t0)			
addi $t1 $t1 1
sw $t1 0($t0)

j findecalage

#deplaceTeteBas: chaque fois que le serpent se déplace vers le bas, la valeur de x est diminuée par 1

decalageTeteBas:		# x-- 
la $t0 snakePosX		
lw $t1 0($t0)			
subu $t1 $t1 1
sw $t1 0($t0)

j findecalage

#deplaceTeteGauche: chaque fois que le serpent se déplace vers la gauche, la valeur de y est diminuée par 1 

decalageTeteGauche:		# y--
la $t0 snakePosY		
lw $t1 0($t0)			
subu $t1 $t1 1			
sw $t1 0($t0)

j findecalage

 
findecalage:
lw $ra 0($sp)
lw $s3 4($sp)
lw $s2 8($sp)
lw $s1 12($sp)
lw $s0 16($sp)
addu $sp $sp 20
jr $ra



############################### conditionFinJeu ################################
# Param?tres: Aucun
# Retour: $v0 La valeur 0 si le jeu doit continuer ou toute autre valeur sinon.
################################################################################

conditionFinJeu:

subu $sp $sp 36
sw $s0 0($sp)
sw $s1 4($sp)
sw $s2 8($sp)
sw $s3 12($sp)
sw $s4 16($sp)
sw $s5 20($sp)
sw $s6 24($sp)
sw $s7 28($sp)
sw $a0 32($sp)


la $s2 numObstacles
lw $t2 0($s2)
sll $t2 $t2 2			
add $t3 $t2 $s0	

la $s0 obstaclesPosX		
la $s1 obstaclesPosY	

la $s3 snakePosX
lw $s4 0($s3)
la $s5 snakePosY
lw $s6 0($s5)
li $s7 5	#le serpent peut pas se manger si la taille est inferieur a 5	

la $s2 numObstacles
lw $t2 0($s2)
sll $t2 $t2 2			
add $t3 $t2 $s0	

VerifierObstacleX: 
beqz $s7 bord         		#si egal a 0 , go bord (pcq coord x du mur =0)
beq $s0 $t3 decrObstacle    	 # si obstaclePosX == snakePosX[numObstacles -1]


lw $t6 0($s0)    
beq $s4 $t6 VerifierObstacleY	#si  obstaclePosX==SnakePosX, verifier Y



#si serpent ne rencontre pas l'obstacle, avance les positions x et y des obstacles et re-verifier
ObstacleLoop:                           
addi $s0 $s0 4
addi $s1 $s1 4
j VerifierObstacleX


VerifierObstacleY:            
lw $t7 0($s1)             
beq $s6 $t7 GameOver           #si obstaclesPosY = snakePosY, alors Game Over
j ObstacleLoop                           

decrObstacle:
subi $s7 $s7 1           #s7--
j MangeLuiMeme


GameOver:
li $v0 1
j Vider

MangeLuiMeme:

addi $s0 $s3 4
addi $s1 $s5 4
la $s2 tailleSnake
lw $t2 0($s2)
sll $t2 $t2 2
add $t3 $s3 $t2 
j VerifierObstacleX

bord:
la $s0 snakePosX
lw $s1 0($s0)
la $s2 snakePosY
lw $s3 0($s2)

la $s4 tailleGrille
lw $s5 0($s4)

bltz $s1 GameOver
bge $s1 $s5 GameOver
bltz $s3 GameOver
bge $s3 $s5 GameOver


GameOn:
li $v0 0

Vider:
lw $s0 0($sp)
lw $s1 4($sp)
lw $s2 8($sp)
lw $s3 12($sp)
lw $s4 16($sp)
lw $s5 20($sp)
lw $s6 24($sp)
lw $s7 28($sp)
lw $a0 32($sp)
addi $sp $sp 36
jr $ra
 
############################### affichageFinJeu ################################
# Param?tres: Aucun
# Retour: Aucun
# Effet de bord: Affiche le score du joueur dans le terminal suivi d'un petit
#                mot gentil (Exemple : ?Quelle pitoyable prestation !?).
# Bonus: Afficher le score en surimpression du jeu.
################################################################################
 
affichageFinJeu:

subu $sp $sp 20
sw $ra 0($sp)
sw $s0 4($sp)
sw $s1 8($sp)
sw $s2 12($sp)
sw $s3 16($sp)

#On affiche le score dans la console
la $t0 scoreJeu

la $a0 message
li $v0 4
syscall

lw $a0 0($t0)
li $v0 1
syscall

jal resetAffichage # On reset toutes les cases de la grille � la couleur noire



la $s0 scoreJeu # On donne � l'adresse $s0 le score 
lw $t0 0($s0) # on donne � $t0 la valeur du score
li $t1 100

div $t0 $t1  # on divise la valeur du score par 100 pour exploiter chacun des nombres dans le chiffre du score total 
mflo $s0 	# On passe la valeur de la centaine � $s0




j IfCentaine				
IfCentaineFin:
# nous avons les coord X dans s1
# nous avons les coord Y dans s2

li $t6 10
j FinDecalagePositionCentaineX
FinBoucleDecalagePositionCentaineX:

li $t6 3
j DecalagePositionCentaineY
finDecalageY1:



jal AfficherUnite

  


la $s0 scoreJeu
lw $t0 0($s0)
li $t1 100

div $t0 $t1
mfhi $s0 	# s0 a le reste de la division par 100 du score
li $t1 10
div $s0 $t1
mflo $s0


j IfDizaine				 
FinIfDizaine:
# nous avons les coord X s1
# nous avons les coord Y dans s2
li $t6 10
j DecalagePositionDizaineX
FinBoucleDecalagePositionDizaineX:

li $t6 7
j DecalagePositionDizaineY
FinBoucleDecalagePositionDizaineY:



jal AfficherDizaine





la $s0 scoreJeu
lw $t0 0($s0)
li $t1 100

div $t0 $t1
mfhi $s0 	# s0 a le reste
li $t1 10
div $s0 $t1
mfhi $s0

j IfUnite				 
FinIfUnite:
# nous avons les coord X dans s1
# nous avons les coord Y dans s2

li $t6 10
j DecalagePositionUniteX
FinBoucleDecalagePositionUniteX:

li $t6 11
j DecalagePositionUniteY
FinBoucleDecalagePositionUniteY:



jal AfficherCentaine


j RetroMonsterAffichage

 

FinDecalagePositionCentaineX:
# nous avons l'adresse du chiffre dans s1 et le chiffre � affichre dans s0

move $t3 $s3

la $t5 Xtemp

BoucleDecalagePositionCentaineX:
beqz $t3 FinBoucleDecalagePositionCentaineX
lw $t4 0($s1)

add $t4 $t4 $t6
sw $t4 0($t5)

addi $s1 $s1 4
addi $t5 $t5 4
subu $t3 $t3 1
j BoucleDecalagePositionCentaineX


# nous decalons la  chiffre dans l'axe Y
DecalagePositionCentaineY:
move $t3 $s3

la $t5 Ytemp

BoucleDecalagePositionCentaineY:
beqz $t3 finDecalageY1
lw $t4 0($s2)
add $t4 $t6 $t4
sw $t4 0($t5)

addi $s2 $s2 4
addi $t5 $t5 4
subu $t3 $t3 1
j BoucleDecalagePositionCentaineY



# Nous renvoyons l'adresse du chiffre (tableau x et y)
# Le chiffre que l'on cherche est dans s0
# Nous renvoyons le resultat dans s1 et s2
IfCentaine: 
beqz $s0 CentaineZero  # Nous comparons la valeur de la centaine � z�ro stock�e dans $s0 , 99,9% elle sera �gale � z�ro car le score de 100 est rarement d�pass

li $t0 1
beq $s0 $t0 CentaineUn

li $t0 2
beq $s0 $t0 CentaineDeux

li $t0 3
beq $s0 $t0 CentaineTrois

li $t0 4
beq $s0 $t0 CentaineQuatre

li $t0 5
beq $s0 $t0 CentaineCinq

li $t0 6
beq $s0 $t0 CentaineSix

li $t0 7
beq $s0 $t0 CentaineSept

li $t0 8
beq $s0 $t0 CentaineHuit

li $t0 9
beq $s0 $t0 CentaineNeuf

CentaineNeuf:
la $s1 Numero9X
la $s2 Numero9Y
li $s3 12

j IfCentaineFin

CentaineHuit:
la $s1 Numero8X
la $s2 Numero8Y
li $s3 13

j IfCentaineFin

CentaineSept:
la $s1 Numero7X
la $s2 Numero7Y
li $s3 9

j IfCentaineFin

CentaineSix:
la $s1 Numero6X
la $s2 Numero6Y
li $s3 12

j IfCentaineFin

CentaineCinq:
la $s1 Numero5X
la $s2 Numero5Y
li $s3 11

j IfCentaineFin

CentaineQuatre:
la $s1 Numero4X
la $s2 Numero4Y
li $s3 9

j IfCentaineFin

CentaineTrois:
la $s1 Numero3X
la $s2 Numero3Y
li $s3 11

j IfCentaineFin

CentaineDeux:
la $s1 Numero2X
la $s2 Numero2Y
li $s3 12

j IfCentaineFin

CentaineUn:
la $s1 Numero1X
la $s2 Numero1Y
li $s3 5

j IfCentaineFin

CentaineZero:
la $s1 Numero0X
la $s2 Numero0Y
li $s3 12

j IfCentaineFin

AfficherUnite:
subi $sp $sp 4
sw $ra 0($sp)


move $t3 $s3
la $t5 Xtemp
la $t6 Ytemp

BoucleAffichageCouleurCentaine: 

beqz $t3 FinBoucleAffichageCouleurCentaine

  lw $a1 0($t5)
  lw $a2 0($t6)
  lw $a0 colors + green
  jal printColorAtPosition
 
  subu $t3 $t3 1
  addi $t5 $t5 4
  addi $t6 $t6 4
  j BoucleAffichageCouleurCentaine

FinBoucleAffichageCouleurCentaine:
lw $ra 0($sp)
addi $sp $sp 4
jr $ra






# POUR LA DIZAINE 


DecalagePositionDizaineX:


move $t3 $s3

la $t5 Xtemp

BoucleDecalagePositionDizaineX:
beqz $t3 FinBoucleDecalagePositionDizaineX
lw $t4 0($s1)

add $t4 $t4 $t6
sw $t4 0($t5)

addi $s1 $s1 4
addi $t5 $t5 4
subu $t3 $t3 1
j BoucleDecalagePositionDizaineX


# nous decalons le chiffre dans l'axe des Y
DecalagePositionDizaineY:
move $t3 $s3

la $t5 Ytemp

BoucleDecalagePositionDizaineY:
beqz $t3 FinBoucleDecalagePositionDizaineY
lw $t4 0($s2)
add $t4 $t6 $t4
sw $t4 0($t5)

addi $s2 $s2 4
addi $t5 $t5 4
subu $t3 $t3 1
j BoucleDecalagePositionDizaineY





# Nous renvoyons l'adresse du chiffre (tableau x et y)
# Le chiffre que l'on cherche est dans s0
# Nous renvoyons le resultat dans s1 et s2
IfDizaine:
beqz $s0 DizaineZero

li $t0 1
beq $s0 $t0 DizaineUn

li $t0 2
beq $s0 $t0 DizaineDeux

li $t0 3
beq $s0 $t0 DizaineTrois

li $t0 4
beq $s0 $t0 DizaineQuatre

li $t0 5
beq $s0 $t0 DizaineCinq

li $t0 6
beq $s0 $t0 DizaineSix

li $t0 7
beq $s0 $t0 DizaineSept

li $t0 8
beq $s0 $t0 DizaineHuit

li $t0 8
beq $s0 $t0 DizaineNeuf

DizaineNeuf:
la $s1 Numero9X
la $s2 Numero9Y
li $s3 12

j FinIfDizaine

DizaineHuit:
la $s1 Numero8X
la $s2 Numero8Y
li $s3 13

j FinIfDizaine

DizaineSept:
la $s1 Numero7X
la $s2 Numero7Y
li $s3 9

j FinIfDizaine

DizaineSix:
la $s1 Numero6X
la $s2 Numero6Y
li $s3 12

j FinIfDizaine

DizaineCinq:
la $s1 Numero5X
la $s2 Numero5Y
li $s3 11

j FinIfDizaine

DizaineQuatre:
la $s1 Numero4X
la $s2 Numero4Y
li $s3 9

j FinIfDizaine

DizaineTrois:
la $s1 Numero3X
la $s2 Numero3Y
li $s3 11

j FinIfDizaine

DizaineDeux:
la $s1 Numero2X
la $s2 Numero2Y
li $s3 12

j FinIfDizaine

DizaineUn:
la $s1 Numero1X
la $s2 Numero1Y
li $s3 5

j FinIfDizaine

DizaineZero:
la $s1 Numero0X
la $s2 Numero0Y
li $s3 12

j FinIfDizaine

AfficherDizaine:
subi $sp $sp 4
sw $ra 0($sp)


move $t3 $s3
la $t5 Xtemp
la $t6 Ytemp

BoucleAffichageCouleurDizaine: 

beqz $t3 FinBoucleAffichageCouleurDizaine

  lw $a1 0($t5)
  lw $a2 0($t6)
  lw $a0 colors + green
  jal printColorAtPosition
 
  subu $t3 $t3 1
  addi $t5 $t5 4
  addi $t6 $t6 4
  j BoucleAffichageCouleurDizaine

FinBoucleAffichageCouleurDizaine:
lw $ra 0($sp)
addi $sp $sp 4
jr $ra


# POUR L'UNITE



DecalagePositionUniteX:

move $t3 $s3

la $t5 Xtemp

BoucleDecalagePositionUniteX:
beqz $t3 FinBoucleDecalagePositionUniteX
lw $t4 0($s1)

add $t4 $t4 $t6
sw $t4 0($t5)

addi $s1 $s1 4
addi $t5 $t5 4
subu $t3 $t3 1
j BoucleDecalagePositionUniteX


# nous decalons le chiffre sur l'axe des y
DecalagePositionUniteY:
move $t3 $s3

la $t5 Ytemp

BoucleDecalagePositionUniteY:
beqz $t3 FinBoucleDecalagePositionUniteY
lw $t4 0($s2)
add $t4 $t6 $t4
sw $t4 0($t5)

addi $s2 $s2 4
addi $t5 $t5 4
subu $t3 $t3 1
j BoucleDecalagePositionUniteY



# Nous renvoyons l'adresse du chiffre (tableau x et y)
# Le chiffre que l'on cherche est dans s0
# Nous renvoyons le resultat dans s1 et s2
IfUnite:
beqz $s0 UniteZero

li $t0 1
beq $s0 $t0 UniteUn

li $t0 2
beq $s0 $t0 UniteDeux

li $t0 3
beq $s0 $t0 UniteTrois

li $t0 4
beq $s0 $t0 UniteQuatre

li $t0 5
beq $s0 $t0 UniteCinq

li $t0 6
beq $s0 $t0 UniteSix

li $t0 7
beq $s0 $t0 UniteSept

li $t0 8
beq $s0 $t0 UniteHuit

li $t0 9
beq $s0 $t0 UniteNeuf

UniteNeuf:
la $s1 Numero9X
la $s2 Numero9Y
li $s3 12

j FinIfUnite

UniteHuit:
la $s1 Numero8X
la $s2 Numero8Y
li $s3 13

j FinIfUnite

UniteSept:
la $s1 Numero7X
la $s2 Numero7Y
li $s3 9

j FinIfUnite

UniteSix:
la $s1 Numero6X
la $s2 Numero6Y
li $s3 12

j FinIfUnite

UniteCinq:
la $s1 Numero5X
la $s2 Numero5Y
li $s3 11

j FinIfUnite

UniteQuatre:
la $s1 Numero4X
la $s2 Numero4Y
li $s3 9

j FinIfUnite

UniteTrois:
la $s1 Numero3X
la $s2 Numero3Y
li $s3 11

j FinIfUnite

UniteDeux:
la $s1 Numero2X
la $s2 Numero2Y
li $s3 12

j FinIfUnite

UniteUn:
la $s1 Numero1X
la $s2 Numero1Y
li $s3 5

j FinIfUnite

UniteZero:
la $s1 Numero0X
la $s2 Numero0Y
li $s3 12

j FinIfUnite

AfficherCentaine:
subi $sp $sp 4
sw $ra 0($sp)


move $t3 $s3
la $t5 Xtemp
la $t6 Ytemp

BoucleAffichageCouleurUnite: 

beqz $t3 FinBoucleAffichageCouleurUnite

  lw $a1 0($t5)
  lw $a2 0($t6)
  lw $a0 colors + green
  jal printColorAtPosition
 
  subu $t3 $t3 1
  addi $t5 $t5 4
  addi $t6 $t6 4
  j BoucleAffichageCouleurUnite

FinBoucleAffichageCouleurUnite:
lw $ra 0($sp)
addi $sp $sp 4
jr $ra


RetroMonsterAffichage:


li $s0 31
la $s1 RetroMonsterX
la $s2 RetroMonsterY

BoucleRetroMonster:
beqz $s0 FinRetroMonster
lw $a1 0($s1)
lw $a2 0($s2)
lw $a0 colors + green
jal printColorAtPosition

addi $s1 $s1 4
addi $s2 $s2 4
subi $s0 $s0 1
j BoucleRetroMonster

FinRetroMonster:


Ending:
lw $ra 0($sp)
lw $s0 4($sp)
lw $s1 8($sp)
lw $s2 12($sp)
lw $s3 16($sp)
addu $sp $sp 20
jr $ra
