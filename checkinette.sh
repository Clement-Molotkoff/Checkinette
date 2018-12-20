#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "$(tput setaf 4)==============================================================================================="

echo " ######  ##     ## ########  ######  ##    ## #### ##    ## ######## ######## ######## ######## "
echo "##    ## ##     ## ##       ##    ## ##   ##   ##  ###   ## ##          ##       ##    ##       "
echo "##       ##     ## ##       ##       ##  ##    ##  ####  ## ##          ##       ##    ##      "
echo "##       ######### ######   ##       #####     ##  ## ## ## ######      ##       ##    ######   "
echo "##       ##     ## ##       ##       ##  ##    ##  ##  #### ##          ##       ##    ##       "
echo "##    ## ##     ## ##       ##    ## ##   ##   ##  ##   ### ##          ##       ##    ##      "
echo " ######  ##     ## ########  ######  ##    ## #### ##    ## ########    ##       ##    ######## "

echo "$(tput setaf 4)===============================================================================================$(tput sgr 0)"

echo  ''
test_printf=$(grep -rnw "printf" ./*.c)
test_scanf=$(grep -rnw "scanf" ./*.c)
test_stdio=$(grep -rnw "stdio.h" ./*.c)
test_comment=$(grep -rnw "//" ./*.c)
test_main=$(grep -rnw "main" ./*.c)

if [ "$test_printf" = '' ]
then
    echo "$(tput setaf 2)There is no printf here$(tput sgr 0)"
else
    echo "$(tput setaf 1)$test_printf"
fi


if [ "$test_scanf" = '' ]
then
    echo "$(tput setaf 2)There is no scanf here$(tput sgr 0)"
else
    echo "$(tput setaf 1)$test_scanf"
fi


if [ "$test_stdio" = '' ]
then
    echo "$(tput setaf 2)There is no lib stdio.h here$(tput sgr 0)"
else
    echo "$(tput setaf 1)$test_stdio"
fi


if [ "$test_comment" = '' ]
then
    echo "$(tput setaf 2)There is no commentary here$(tput sgr 0)"
else
    echo "$(tput setaf 1)$test_comment"
fi

if [ "$test_main" = '' ]
then
    echo "$(tput setaf 2)There is no main function here$(tput sgr 0)"
else
    echo "$(tput setaf 1)$test_main"
fi

echo "$(tput setaf 4)===============================================================================================$(tput sgr 0)"

#   Program develop by Clement Molotkoff
#   2018
#   Check forbiden function.
#   