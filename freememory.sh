                  ####################################################################################################
                  #                                        freememory.sh                                             #
                  # Written BY ABBAHABIBI HAFID , NETWORK & SysAdmin at ABA CALL CENTER                              #
                  # If any bug, report us in the link below                                                          #
                  # Free to use/edit/distribute the code below by                                                    #
                  # Special Thanks to My Teacher : ABDELATI OROUSS <3                                                #
                  #                                                                                                  #
                  ####################################################################################################
#!/bin/bash
memfree=` cat /proc/meminfo |sed -n '2p'|awk '{print $2}' `
value="1485000"
if [ "$memfree" -le "$value" ]
then
echo "1" > /proc/sys/vm/drop_caches
currenttime=` date `
echo " This command has been executed at " $currenttime when free memory equal to : "$memfree" " " >> /root/logfreememory
fi

