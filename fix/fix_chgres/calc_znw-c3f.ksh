#!/bin/ksh

 ZNW=( 1.0 0.998 0.994 0.987 0.975 0.959 0.939 0.916 0.892 0.865 0.835 \
    0.802 0.766 0.727 0.685 0.64 0.592 0.542 0.497 0.4565 0.4205 \
    0.3877 0.3582 0.3317 0.3078 0.2863 0.267 0.2496 0.2329 0.2188 \
    0.2047 0.1906 0.1765 0.1624 0.1483 0.1342 0.1201 0.106 0.0919 \
    0.0778 0.0657 0.0568 0.0486 0.0409 0.0337 0.0271 0.0209 0.0151 \
    0.0097 0.0047 0.0 )

 C3F=( 1.0 0.9979913 0.9939218 0.9866352 0.9736692 0.9554842 0.931392 \
    0.9019542 0.8694375 0.8308995 0.7859737 0.7344341 0.6762514 \
    0.6116546 0.5412011 0.46585 0.3870412 0.3083097 0.2418167 \
    0.1866084 0.1420053 0.1056085 0.07675143 0.05426915 0.03701058 \
    0.02409501 0.014726 0.008170782 0.00363729 0.001199355 7.568815e-05 \
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 )
nz=${#C3F[@]}
nz2=${#ZNW[@]}
for i in {0..$((nz-1))}; do
   #echo $i $nz ${nz2}
   COL1[$i]=$(( ${ZNW[$i]}- ${C3F[$i]} ))
   echo ${COL1[$i]}	${C3F[$i]}  #${ZNW[$i]} ${C3F[$i]} ${COL1[$i]}
done

# Note COL2 is C3F
