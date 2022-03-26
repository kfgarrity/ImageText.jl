# Convert images to julia console text.

Why would you want to do this? For fun!

To be clear, this represents an image as ASCII art using the `julia` programming language and repl. It doesn't do anything useful like extract text from an image.

```
using FileIO, Images, ImageText

img = load("imagefile.jpg");

img2 =imresize(img, (50,120));

ImageText.go(img2);
```


Options for go

```
go(img; blackwhite=false, reverse=false, background=missing, text=:color, rescale=false)
```

You can play around depending on your image. Try `:black` and `:white`
as background colors, set text to a constant color (default is `:color`,
which uses the image color). Use `reverse=true` to reverse
contrast. Setting background to `:color` will produce a pixelated
image using the background. Rescale will scale the intensity to use the full 0-1 range.
<br>
Also try changing the color scheme of your terminal. White text on black background often looks better.


<img src="./self_portrait_text2.PNG" alt="self"  >
<br>
<br>



```
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-:::::::::-::::::::::::::::::-:::::::::::---:::-:---
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::::::-
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::---
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::::::::::::::::::::::::::::-
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::-:-
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::-:-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::-==-=++**#+**+******++--=---:::-:---::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::==****+***#*****+****+*###%####**--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::-*##*******+=*###**#%%%%######%%##%%%%##=-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::-=+*#***##@####%%%%%%%%@%****%##%#%##%%%%@@@%%##*=-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::+*########++*############%%%%%@@%@@@@@@%%%%%%%@%%###*-::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::-=*#####%%%%%%%%%###%#%@%#%##%@%@@@@@@%@@@@@%%@%%%%%#%%%%#*==::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::=####%%%%%%%%%#%%%##*****#%%%%@@@%%@@@@@@%%%@@@%%%@%%%%%%%%#%#==::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::=*##%%%%%%%%%%%%#######%%%%%%%%%%%%%%%%%%%#%%%%%%%%%%%%%%%%#%%%%%#+:::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::-*#%%%%%%%%%%%%%%%%%#####%#####%#%#%%#***++=++++**#####%%%#%%@##%#%%##-:::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::*##%%@%%%%@%%%%%%%%%########***++++++++=====---=++++**######%%%%%%#%%%##+::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::=#%%%%%%%%%%%%%%######***+====++===-==----------------=+++=**+##%%@%#%#%%%##=::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::-:*%%#%@%%%%%%@%%%#*++++=========----:-:::--:------------==-====+++*#@@@##%%%%%%#-::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::=####%@@@@####+*===+==-=-=--------:::::::::::------=-------====+++*#@@##%#%%##%%+:::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::=####%@@@%**===---=--------------:-::::::::::::---------------====++*#%######%%###=::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::-####%%%@%*+=--------------------::::::::.:::::-----------------===+++*##%%##%%%%%##=:::::::::::::::::::::::::::::::::::::::
:::::::::::::::::=####%%%%%+===--------------------:::-:::.::::::-:---------------=====++*#%%#%%%#%%%%*+::::::::::::::::::::::::::::::::::::::
::::::::::::::::::###%%%%#*=====-----------------------:::::::::::-------------=--========+*%%%%%%#%%###-:::::::::::::::::::::::::::::::::::::
:::::::::::::::::=####%#%*======-----------------:--:::::::::::::::::------------===========*%@%%%%%%##=-:::::::::::::::::::::::::::::::::::::
::::::::::::::::-*###%%%#*======---------------:--:::::::-::::::::::::----------=-==========+#%@%%%%###*-:::::::::::::::::::::::::::::::::::::
::::::::::::::::=#%#%%#%#+======--=----------:::-::::::::.::.:::::::::::-----------=========+*%%%%%%%###=:::::::::::::::::::::::::::::::::::::
::::::::::::::::*#%%%%%#*+=====--------------------:::-::::::::::::----------------========++*#%%%@%%##+::::::::::::::::::::::::::::::::::::::
:::::::::::::::+*#%%%%%#*+=====-----------=====----------------------===========--==-=====+=+*#%%@@@%%*--:::::::::::::::::::::::::::::::::::::
::::::::::::::::=#%%%%%#*+==========+++**##**++++===------------====+***###*###**+++=+=====++*#%%%@%%%#-::::::::::::::::::::::::::::::::::::::
::::::::::::::::=*%%%%%#*+====++++++**#####%##***++====-------===++***#*#####****++****++=++++*%%%%%%%#-::::::::::::::::::::::::::::::::::::::
::::::::::::::::-+%%%%%#*====+++++======++********+++==-------==+*********++==-======+++*+==++*#%@@%@%#:::::::::::::::::::::::::::::::::::::::
::::::::::::::::-=%%%%%#+===++++=====-------=+******+=-----:--==+**###*+==-----======++++++=++*#%%%%%%=:::::::::::::::::::::::::::::::::::::::
:::::::::::::::::+##%%%#+=====++=====*=-----==+*###*++=---:---=+**####*+=======*+=+++++++++==+*#%%%%%=-:::::::::::::::::::::::::::::::::::::::
::::::::::::::::--##%%%#=====+++++*++==+***##******#*+=-------=++*++****#%#%#**++++*++++++++==+#%%%%%-::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::+%##%+======+++#**###%%@@%%+++*##=+===------=++==*+**++%#@@%%####*#*+++++=+++#%%%@#-::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::+%#%%===--===+******++*#*+==++=======------===+=+===+=+++#%#*********+==+==++#%%%%-:::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::+##%+==--------==+++=+=+++===--======-------=======-===++++++++++==========++*#%%%::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::+*##===------=---=-----------=====--=-------======-====-------=====-----===+++%%%++=::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::*##=+---------------------------------------=====-------------------==-====++#%#***::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::*%*===---------------------------==---------==+===-------------------=-====++*%%##+::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::+**====-------------:--------=----=---:::---===-====----:-------------====+++*###+=::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::+#+====------------------====-----==--:-:---=======+===-------------=====++++*##*==-:::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::=#+====------------=====+++=+++*====--=-----=++++*+++++===---------======++++*#%+--::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::-+#*+====-=-------=====+++===+******++++++++***####+-=+*+====----========+++++*##+=:::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::--**++=====-=========+++====++**#####*******#%%#%##*+=-=+++============+++++*+*##*-:::::::::::::::::::::::::::::::::::::::::
::::::::::::::::-:-=#*++++==========++*+====+++*****##########%%%###+*+=+===+*+=======+++++++++*#%%+--::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::-+##+++++++====+++**==++++++*+*****#*##%#%#######**+*++==+++**++=+++++++++++***#*-::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::--*#*+++++++===++**+++=++*++*+++++***#*#%#%###******+++*++=++++*+++++++++++*+*###=--:::::::::::::::::::::::::::::::::::::::::
::::::::::::::::---+##+*+++++++++++*++++******=+++***+**+*******+##***+*****+**+*+++++++++*****#%#---:::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::-+##+++*++++++++*****#######*****++++++++*****+****########*#**++==++++******###=--:::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::==*#++++**+*++++**#**%%%%###*++++===++**+==+++++++**##%%%%%###*++==++********#%%*-::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::-+#**+******++=*******+++++===---------:::---====+++++++*##***++++++*****#*###=--::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::--=*#*++**#******+*#*+===============--=-======++++=++====+#**#***+***#*#####%*=::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::-##******###%##*##**+=====--=-==========================+*+#*#*#*######%###%+:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::-**#****#########***++===+====+=++=++==++===++=======++*##*########%%%##%%+-:::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::+%##*####%%%#%####**++===++++==++++=*++*+++++++==+=++**##%#####%%%##%%%%*-::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::--*#####%%#%%#%###*#*++=+==++++***+****++++++++++++***##*%#%%%%%%%%#%%%%+:--:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::-#%%##%%%%%%%%%%%#***++===++++++*+*+++*+++===++***+##%#%%@%%@%%%##%%%+--:::::::------::::::::::::::::::::::::::::::::::
:::::::::::::::::::-::::-%%%%%%%%%%@%%####***+++++++==++++++===+++=+****####%%%%%%@%%@%%%%%*=----------------:::::::::::::::::::::::::::::::::
::::::::::::::------:::::-#%@@%%%%@@%%%#**##**++++++====++*++++++++*+**##%%%%%%%@%%%%@@@@%+------------:------::::::::::::::::::::::::::::::::
:::::::::::--:-----------=+#%@%#%%%%@%%%%####+**=***+++++*+++++++++*++*#%%@%%%%%%%%@@@@@#=----------------------::::::::::::::::::::::::::::::
::::::::-:----------------=*%%%%%%%@@*@@%#%***+*+**++*****************#%%@%%%%#%#%%%@@@#-----------::----------:::::::::::::::::::::::::::::::
::::::::::-------::-----#@@@*#%%%@@@@%%%@%##%##*#******************###%%%@%@#%%%@@@@@%##@@@@@@@@@@=:::--------::-:::::::::::::::::::::::::::::
::::::-::::::::--:+@@@@@@@@@**%%%@@@@@@#@@%%%#########*####**##**###%#%%%@@@%%%@@@@%####@@@@@@@@%%@%--:------:::::::::::::::::::::::::::::::::
:::::::::::::-::+%%@@@@@@@@@***##%%@@@@@@%@@%%%#%%*#%#%############%%@@%%@@@%@%@@@%#####@@@@@@@@%%%%%@*::---::::::::::::::::::::::::::::::::::
::::::::::::-%%%%%@@@@@@@@@@****###%@@@@@@@@@%@%%@%%%%%%%%@%%%%%%@%#%@@%@@@@@@@@%######%@@@@@@@@@%@@%%%%%*::::--::::::::::::::::::::::::::::::
:::::::::+%%%%%%%%@@@@@@@@@@#***####*##%@@%@@@@@@@%%@@@@%@@@@@@@@@@@@@@@@@@@%%#########@@@@@@@@@@@@@%%@@%%@%@%%%%*+*####=-::::::::::::::::::::
:--:::%%%%%%@%%%%%%@@@@@@@@@@*****##****###@@@@@@@@@%@@@@@@@@@@@@@@@@@@@%%%############@@@@@@@@@@%@@@@@%%%%%%@%%%%%%%%%%%%%%%*-:::::::::::::::
*=*%%%%%%%%%%%%@%%%@@@@@@@@@@#*****##*#***####%%@@@@@@@@@@@@@@@@@@@%%%%###############@@@@@@@@@%%@@@@@@%@%%%%%%%%%%%%%%%%%%%%%%%%+::::::::::::
%%%%%%%%%%%@@%%%%%%%%@@@@@@@@@#****************#######%%%%%%%%%%%%###############**##%@@@@@@@@%@%@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%#%%%#:--::::::-
%%%%@@@%%%%@%%%%%%%%@@@@@@@@@@%#*****************######*###################*********%@@@@@@@@%@@@@@@@@%@@%%%%%@@@%%%%%%%%%%%%@@@@%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%@@@@@@@@@@##*************************#####****########********@@@@@@@@@@%%@@@@@%%@@%@@@%%%%%%@@@@%@%%%%%%%%%%%@%%%@@@%#%%
%@%%%%%%%%%@%@%%%%%%%%@@@@@@@@@@##**********#****##****************#####******+***@@@@@@@@@%@@@%@@@%%@%%%@@@%%%%%%%@@%%%%%%%%%%@@@@@@%%%%%%%%%
@@%%%%%%%%%@@%%%%%%%%%%@@@@@@@@@@##**++*+*****##*******************##******++++*%@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%%@%@%%%%%%%@@@@%%%%%%@@@@%%%
%%@%%%%%%%%%%%%%%@%%%%%%%@@@@@@@@@%***+++++****************************+++++++%@@@@@@@@%@@@@@@%@@@%%%%%%%%%%%%%%%@@%%%%%%%%@@@@%@%%%%%@@%%%%%%
%%%%%@@@@%%%%%%%%%%%%%%%%%@@@@@@@@@%****++++++*********************++++++++*@@@@@@@@@%%@@@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%@@%%%%%%%%%%%%%%%%%
%%%%%%%@%@@%%%%%%%%%@@%%%%@@@@@@@@@@@**+++++++++****************++++++==+@@@@@@@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%@@%%%%%%%%@@%@%%%%%@%%%%%%%%%%
%%%%%%%%@@@@@%%%%%%%%%%%%%@@@@@@@@@@@@@*+++++++++*************+++++++*@@@@@@@@@@@@@@%@@@@@@@@%%%%%%%%%%%%%%%%%%@@%%%%%%%%@@%%%%%%@%%%%%%%%%%%%
%%%%%%%%%%@@@@@%%%%%%%%%%%%@@@@@@@@@@@@@@*+++++++++++**++++++++++*@@@@@@@@@@@@@@@%%@@@@@@@@%%%%%%%%%%%%%%%%%%%%@@%%%%%%%%@%%%%%%@@%%%%%%%%%%%%
%%%%%%@%%%%@@@@@%%%%%%%%%%@@@@@@@@@@@@@@@@@@#+=+++++**+++++++#@@@@@@@@@@@@@@@@@%%%%%@@@@%%%%%%@%%%%%%%%%%%%%%%@@%%%@%%%%@%%%%%%%@%%%%%@%%%%%%%
%%%%%%%%%%%%@%@@@@%%%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@%@@@@@@%%%%@%%%%%%%%%%%%%%%%%@@%%@@%%%@%%%%%%%@%%%%@%%%%%%%%%
%%%%%%%@%%%%%%@@@@@@%%%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%@@@@@%%%@%%%%%%%%%%%%%%%%%%%@@@%%%%%%%%%%%%%@@%%%%@%%%%%%%%%%
%%%%%%%%%%%%%%%@@@@@@%%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@%@@@@@@%%@%%%%%%%%%%%%%%%%%%%%%%@@%%%%%%%%%%%%%@@%%@@%%%%%%%%%%%
%%%@%%%%%%%%%%@@@@@@@@%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@%%@@@@%%@@%%%@%%%%%%%%%%%%%%%%%%%%%%%%@@@%%%%%%%%%%%%@%%@@%%@@@%%%%%%%%
%%%%%%%%%%%%%%%%%%%@@@@%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%@@@@@@@@@@@@@@%%%@%%@%%%%%%%%%%%%%%%%%%%%%%@%%%@%@%%%%%%%%%%%%@%%@%%@@%%@%%%%%%%
%%%%%%%%%%%%%@%%@@%@@@@@%%%%@@@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%%@%%%%%%%%%%%%%%%%%%%%%%%%%%@%%%%%%%%%%%%%%%%@%@%@@@@%%%%%%%%%%%
%%%%%%%%%%%%%%%%%@@@@@@@%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@%%%@%%%%%%%%%%%%%@%%@@%%%%%%%%%%%%%

```
<br>
<img src="./julia_logo.png" alt="logo"  >


