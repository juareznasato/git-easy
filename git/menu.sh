#!/bin/bash
#
######################################################################
#       SCRIPT FUNCTION: MENU                                        # 
#------------------------------------------------------------------- #
#                                                                    #
#       AUTHOR:  JUAREZ NASATO                                       #
#       EMAIL:   JUAREZNASATO@GMAIL.COM                              #
#       CREATED: 02/01/2021                                          #
#       VERSION: 0.0.1                                               #
#                                                                    #
######################################################################
#
# --> COMMAND <--
# $ sh menu.sh
#
echo ""
echo "### G I T ###"
echo ""
echo " v = version control"
echo " b = branch"
echo " t = tag"
echo " x = exit"
echo ""
echo -n " Type the option: "
read OPTION

if [ "$OPTION" = "v" ]
then
   echo ""
   echo "VERSION CONTROL"
   echo " u  = undo"
   echo " c  = commit"
   echo " r  = rollback"
   echo " l  = pull"
   echo " p  = push"
   echo " h = commit + push"
   echo " x = exit"
   echo ""
   echo -n " Type the option: "
   read VERSION_CONTROL
   if [ "$VERSION_CONTROL" = "u" ]
   then
      echo ""
      ./git/git-undo.sh
   fi
   if [ "$VERSION_CONTROL" = "c" ]
   then
      echo ""
      ./git/git-commit.sh
   fi
   if [ "$VERSION_CONTROL" = "r" ]
   then
      echo ""
      ./git/git-rollback.sh
   fi
   if [ "$VERSION_CONTROL" = "l" ]
   then
      echo ""
      ./git/git-pull.sh
   fi
   if [ "$VERSION_CONTROL" = "p" ]
   then
      echo ""
      ./git/git-push.sh
   fi
   if [ "$VERSION_CONTROL" = "h" ]
   then
      echo ""
      echo "COMMIT + PUSH"
      ./git/git-commit.sh
      ./git/git-push.sh
   fi
   if [ "$OPTION" = "x" ]
   then
      echo "Exiting..."
   fi
fi

if [ "$OPTION" = "b" ]
then
   echo ""
   echo "BRANCH"
   echo " n = new-branch"
   echo " d = delete-branch"
   echo " s = switch-branch"
   echo " m = merge"
   echo " x = exit"
   echo ""
   echo -n " Type the option: "
   read BRANCH
   if [ "$BRANCH" = "n" ]
   then
      echo ""
      ./git/git-newbranch.sh
   fi
   if [ "$BRANCH" = "d" ]
   then
      echo ""
      ./git/git-deletebranch.sh
   fi
   if [ "$BRANCH" = "s" ]
   then
      echo ""
      ./git/git-switchbranch.sh
   fi
   if [ "$BRANCH" = "m" ]
   then
      echo ""
      ./git/git-merge.sh
   fi
   if [ "$OPTION" = "x" ]
   then
      echo "Exiting..."
   fi
fi

if [ "$OPTION" = "t" ]
then
   echo ""
   echo "TAG"
   echo " n = new-tag"
   echo " d = delete-tag"
   echo " x = exit"
   echo ""
   echo -n " Type the option: "
   read TAG
   if [ "$TAG" = "n" ]
   then
      echo ""
      ./git/git-newtag.sh
   fi
   if [ "$TAG" = "d" ]
   then
      echo ""
      ./git/git-deletetag.sh
   fi
   if [ "$OPTION" = "x" ]
   then
      echo "Exiting..."
   fi
fi

if [ "$OPTION" = "x" ]
then
   echo "Exiting..."
fi
