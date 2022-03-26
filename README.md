# Convert images to julia console text.

Why would you want to do this? For fun!

```
using FileIO, Images, ImageText

img = load("imagefile.jpg");

img2 =imresize(img, (50,120));

ImageText.go(img2);
```


Options for go

```
go(img; blackwhite=false, reverse=false, background=:black, text=:color)
```

You can play around depending on your image. Try `:black` and `:white`
as background colors, set text to a constant color, and use
`reverse=true` to reverse contrast. Setting background to `:color` will produce a pixelated image.


<img align="right" src="./self_portrait_text2.PNG" alt="logo" width="200" >





```
---------------------------------------------------:--------:--:--::---------------::---------:----:---------------:-----:----------------------------------------------------------
-------------------------------::-----------:--:------:--:--:--:-:-:-:--:---:----::--:::::-::-::----:-----:------:----:--:----------------------------------------------------------
---:----------------------:::--:--------------:-:--:::::-::-::::::::---:-:--::-:-::::-----::-------------:::--:-:-------:--------------:--------------------------------------------
--------------------------:------:-:-:------:-::--:-::-:--:-::::::-:--:-----:-::::::::::--::-----:--:--------::-::--::-:::----------------------------------------------------------
------------:----:------------::-::::::----::-----::-::::::-::::::::::-::-:-::::::::::-:::::::::::::---:---:-::-:::::::-:---:------:------------------------------------------------
:----:---------:-----------::---:-:--::::::-::-:-:::::::::::::::::::::::::----:::::::-:::::::::::::::-::-::::-:::::::----::----------::-:::--:--------------------:-----------------
--:----:----:-:---:::::-::::::::::--::::::::::::::::::::-:-:::::::::::::::::---:::-:::::::::::::::::::::::::::::::::-:------:-::::----:-:-::---:------------------------------------
-----:--------::::--:-:-:::::::::::-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::::-:-:::::::-::::::::----::-::-:--::::::--::--------------:---------------------
---:-------::-::---::::::::::-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-:-::-:::::-::--:------:----:---------------------:-
-:::---::::::-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::::::::::::::::::::::::::::::-:::::::::::::::::::::-:::-::-::::::-:::::::::-----:--------------------
::::--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::::::::::::::--:::::::::::--::-:::--------:--------------
::::--::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::::::::--:--:::::---------------
-::--:-::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-:::::::::-::::::::::::::::::-:::::::::::---:::-:--------
:-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::::::------
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::---:::-:
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::::::::::::::::::::::::::::--::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::-:-:::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-:-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-:
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-==-=++**#+**+******++--=---:::-:---:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::==****+***#*****+****+*###%####**--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-*##*******+=*###**#%%%%######%%##%%%%##=-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-=+*#***##@####%%%%%%%%@%****%##%#%##%%%%@@@%%##*=-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::+*########++*############%%%%%@@%@@@@@@%%%%%%%@%%###*-:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::-=*#####%%%%%%%%%###%#%@%#%##%@%@@@@@@%@@@@@%%@%%%%%#%%%%#*==:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::=####%%%%%%%%%#%%%##*****#%%%%@@@%%@@@@@@%%%@@@%%%@%%%%%%%%#%#==:::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::=*##%%%%%%%%%%%%#######%%%%%%%%%%%%%%%%%%%#%%%%%%%%%%%%%%%%#%%%%%#+::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::-*#%%%%%%%%%%%%%%%%%#####%#####%#%#%%#***++=++++**#####%%%#%%@##%#%%##-::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::*##%%@%%%%@%%%%%%%%%########***++++++++=====---=++++**######%%%%%%#%%%##+:::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::=#%%%%%%%%%%%%%%######***+====++===-==----------------=+++=**+##%%@%#%#%%%##=:::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::-:*%%#%@%%%%%%@%%%#*++++=========----:-:::--:------------==-====+++*#@@@##%%%%%%#-:::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::=####%@@@@####+*===+==-=-=--------:::::::::::------=-------====+++*#@@##%#%%##%%+::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::=####%@@@%**===---=--------------:-::::::::::::---------------====++*#%######%%###=:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::-####%%%@%*+=--------------------::::::::.:::::-----------------===+++*##%%##%%%%%##=::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::=####%%%%%+===--------------------:::-:::.::::::-:---------------=====++*#%%#%%%#%%%%*+:::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::###%%%%#*=====-----------------------:::::::::::-------------=--========+*%%%%%%#%%###-::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::=####%#%*======-----------------:--:::::::::::::::::------------===========*%@%%%%%%##=-::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::-*###%%%#*======---------------:--:::::::-::::::::::::----------=-==========+#%@%%%%###*-::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::=#%#%%#%#+======--=----------:::-::::::::.::.:::::::::::-----------=========+*%%%%%%%###=::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::*#%%%%%#*+=====--------------------:::-::::::::::::----------------========++*#%%%@%%##+:::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::+*#%%%%%#*+=====-----------=====----------------------===========--==-=====+=+*#%%@@@%%*--::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::=#%%%%%#*+==========+++**##**++++===------------====+***###*###**+++=+=====++*#%%%@%%%#-:::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::=*%%%%%#*+====++++++**#####%##***++====-------===++***#*#####****++****++=++++*%%%%%%%#-:::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::-+%%%%%#*====+++++======++********+++==-------==+*********++==-======+++*+==++*#%@@%@%#::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::-=%%%%%#+===++++=====-------=+******+=-----:--==+**###*+==-----======++++++=++*#%%%%%%=::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::+##%%%#+=====++=====*=-----==+*###*++=---:---=+**####*+=======*+=+++++++++==+*#%%%%%=-::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::--##%%%#=====+++++*++==+***##******#*+=-------=++*++****#%#%#**++++*++++++++==+#%%%%%-:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::+%##%+======+++#**###%%@@%%+++*##=+===------=++==*+**++%#@@%%####*#*+++++=+++#%%%@#-:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::+%#%%===--===+******++*#*+==++=======------===+=+===+=+++#%#*********+==+==++#%%%%-::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::+##%+==--------==+++=+=+++===--======-------=======-===++++++++++==========++*#%%%:::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::+*##===------=---=-----------=====--=-------======-====-------=====-----===+++%%%++=:::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::*##=+---------------------------------------=====-------------------==-====++#%#***:::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::*%*===---------------------------==---------==+===-------------------=-====++*%%##+:::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::+**====-------------:--------=----=---:::---===-====----:-------------====+++*###+=:::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::+#+====------------------====-----==--:-:---=======+===-------------=====++++*##*==-::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::=#+====------------=====+++=+++*====--=-----=++++*+++++===---------======++++*#%+--:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::-+#*+====-=-------=====+++===+******++++++++***####+-=+*+====----========+++++*##+=::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::--**++=====-=========+++====++**#####*******#%%#%##*+=-=+++============+++++*+*##*-::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::-:-=#*++++==========++*+====+++*****##########%%%###+*+=+===+*+=======+++++++++*#%%+--:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::-+##+++++++====+++**==++++++*+*****#*##%#%#######**+*++==+++**++=+++++++++++***#*-:::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::--*#*+++++++===++**+++=++*++*+++++***#*#%#%###******+++*++=++++*+++++++++++*+*###=--::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::---+##+*+++++++++++*++++******=+++***+**+*******+##***+*****+**+*+++++++++*****#%#---::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::-+##+++*++++++++*****#######*****++++++++*****+****########*#**++==++++******###=--::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::==*#++++**+*++++**#**%%%%###*++++===++**+==+++++++**##%%%%%###*++==++********#%%*-:::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::-+#**+******++=*******+++++===---------:::---====+++++++*##***++++++*****#*###=--:::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::--=*#*++**#******+*#*+===============--=-======++++=++====+#**#***+***#*#####%*=:::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::-##******###%##*##**+=====--=-==========================+*+#*#*#*######%###%+::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::-**#****#########***++===+====+=++=++==++===++=======++*##*########%%%##%%+-::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::+%##*####%%%#%####**++===++++==++++=*++*+++++++==+=++**##%#####%%%##%%%%*-:::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::--*#####%%#%%#%###*#*++=+==++++***+****++++++++++++***##*%#%%%%%%%%#%%%%+:--::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::-#%%##%%%%%%%%%%%#***++===++++++*+*+++*+++===++***+##%#%%@%%@%%%##%%%+--:::::::------:::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::-::::-%%%%%%%%%%@%%####***+++++++==++++++===+++=+****####%%%%%%@%%@%%%%%*=----------------::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::------:::::-#%@@%%%%@@%%%#**##**++++++====++*++++++++*+**##%%%%%%%@%%%%@@@@%+------------:------:::::::::::::::::::::::::::::::::::::
::::::::::::::-:::::::::::::::::::::::::::::--:-----------=+#%@%#%%%%@%%%%####+**=***+++++*+++++++++*++*#%%@%%%%%%%%@@@@@#=----------------------:::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::-:----------------=*%%%%%%%@@*@@%#%***+*+**++*****************#%%@%%%%#%#%%%@@@#-----------::----------::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::-------::-----#@@@*#%%%@@@@%%%@%##%##*#******************###%%%@%@#%%%@@@@@%##@@@@@@@@@@=:::--------::-::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::-::::::::--:+@@@@@@@@@**%%%@@@@@@#@@%%%#########*####**##**###%#%%%@@@%%%@@@@%####@@@@@@@@%%@%--:------::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::-::+%%@@@@@@@@@***##%%@@@@@@%@@%%%#%%*#%#%############%%@@%%@@@%@%@@@%#####@@@@@@@@%%%%%@*::---:::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::-%%%%%@@@@@@@@@@****###%@@@@@@@@@%@%%@%%%%%%%%@%%%%%%@%#%@@%@@@@@@@@%######%@@@@@@@@@%@@%%%%%*::::--:::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::+%%%%%%%%@@@@@@@@@@#***####*##%@@%@@@@@@@%%@@@@%@@@@@@@@@@@@@@@@@@@%%#########@@@@@@@@@@@@@%%@@%%@%@%%%%*+*####=-:::::::::::::::::::::::::
:::::::::::::::::::::::::::::--:::--:::%%%%%%@%%%%%%@@@@@@@@@@*****##****###@@@@@@@@@%@@@@@@@@@@@@@@@@@@@%%%############@@@@@@@@@@%@@@@@%%%%%%@%%%%%%%%%%%%%%%*-::::::::::::::::::::
-::::::::::::::::::::::::=#%%%%%%*=*%%%%%%%%%%%%@%%%@@@@@@@@@@#*****##*#***####%%@@@@@@@@@@@@@@@@@@@%%%%###############@@@@@@@@@%%@@@@@@%@%%%%%%%%%%%%%%%%%%%%%%%%+:::::::::::::::::
::::::::::=--::----:=#%%%%%%%%%%%%%%%%%%%%%%@@%%%%%%%%@@@@@@@@@#****************#######%%%%%%%%%%%%###############**##%@@@@@@@@%@%@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%#%%%#:--::::::-:::::
:--:=#%%%%%%%%%%#%%%%%%%%%%%%@%%%%%%%@@@%%%%@%%%%%%%%@@@@@@@@@@%#*****************######*###################*********%@@@@@@@@%@@@@@@@@%@@%%%%%@@@%%%%%%%%%%%%@@@@%%%%%%%%%%%%%%+:::
:#%%%%%%%%%%%%%%%%%%@@@@%%%%%@%@%%%%%%%%%%%%%%%%%%%%%%@@@@@@@@@@##*************************#####****########********@@@@@@@@@@%%@@@@@%%@@%@@@%%%%%%@@@@%@%%%%%%%%%%%@%%%@@@%#%%%####
%%%%%%%%%%%%%%%%%%%%%%@%@@@%%%@@@%@%%%%%%%%%@%@%%%%%%%%@@@@@@@@@@##**********#****##****************#####******+***@@@@@@@@@%@@@%@@@%%@%%%@@@%%%%%%%@@%%%%%%%%%%@@@@@@%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%@%%%@@@@%%%%%%%%%@@%%%%%%%%%%@@@@@@@@@@##**++*+*****##*******************##******++++*%@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%%@%@%%%%%%%@@@@%%%%%%@@@@%%%%%%@%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@%%%%%%%%%%%%%%@%%%%%%%@@@@@@@@@%***+++++****************************+++++++%@@@@@@@@%@@@@@@%@@@%%%%%%%%%%%%%%%@@%%%%%%%%@@@@%@%%%%%@@%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%@%%%%%%%%%@%%%%%%%%@@@@%%%%%%%%%%%%%%%%%@@@@@@@@@%****++++++*********************++++++++*@@@@@@@@@%%@@@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%@@%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%@%%%%%%%%@@%%%%%%%%%@%@@%%%%%%%%%@@%%%%@@@@@@@@@@@**+++++++++****************++++++==+@@@@@@@@@@@@@@@@@@@@@@%%%%%%%%%%%%%%%%%@@%%%%%%%%@@%@%%%%%@%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%@%%%%%%%%%@%%%%%%%%%%@@@@@%%%%%%%%%%%%%@@@@@@@@@@@@@*+++++++++*************+++++++*@@@@@@@@@@@@@@%@@@@@@@@%%%%%%%%%%%%%%%%%%@@%%%%%%%%@@%%%%%%@%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%@@%%%%%%%%%%%%%%%%%%%%%@@@@@%%%%%%%%%%%%@@@@@@@@@@@@@@*+++++++++++**++++++++++*@@@@@@@@@@@@@@@%%@@@@@@@@%%%%%%%%%%%%%%%%%%%%@@%%%%%%%%@%%%%%%@@%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%@%%%%%%%%%%%%%%@%%%%%%%%%@%%%%@@@@@%%%%%%%%%%@@@@@@@@@@@@@@@@@@#+=+++++**+++++++#@@@@@@@@@@@@@@@@@%%%%%@@@@%%%%%%@%%%%%%%%%%%%%%%@@%%%@%%%%@%%%%%%%@%%%%%@%%%%%%%%%%%%
%%%%%%%%%%%%%@%%%%%%@%@%%%%%%%%%%%%%%%%%%%%%%@%@@@@%%%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@%@@@@@@%%%%@%%%%%%%%%%%%%%%%%@@%%@@%%%@%%%%%%%@%%%%@%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%@%%%%%%%%%%%%%%@%%%%%%%%%@%%%%%%@@@@@@%%%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%@@@@@%%%@%%%%%%%%%%%%%%%%%%%@@@%%%%%%%%%%%%%@@%%%%@%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@@@@@@%%%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@%@@@@@@%%@%%%%%%%%%%%%%%%%%%%%%%@@%%%%%%%%%%%%%@@%%@@%%%%%%%%%%%%%%%%
%%%%%%%%%%%%@@%%@%%%%%%%%%%%%%%@%%%%@%%%%%%%%%%@@@@@@@@%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@%%@@@@%%@@%%%@%%%%%%%%%%%%%%%%%%%%%%%%@@@%%%%%%%%%%%%@%%@@%%@@@%%%%%%%%%%%%%
%%%%%%%%%%%%%@%@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@@@@%%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%@@@@@@@@@@@@@@%%%@%%@%%%%%%%%%%%%%%%%%%%%%%@%%%@%@%%%%%%%%%%%%@%%@%%@@%%@%%%%%%%%%%%%
%%%%%%%%%%%%@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%@%%@@%@@@@@%%%%@@@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%%@%%%%%%%%%%%%%%%%%%%%%%%%%%@%%%%%%%%%%%%%%%%@%@%@@@@%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%@%@@@@%%%%%@@%%%%%%%%%%%%%%%%%%%%%%%%@@@@@@@%%%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@%%%@%%%%%%%%%%%%%@%%@@%%%%%%%%%%%%%%%%%%

```


