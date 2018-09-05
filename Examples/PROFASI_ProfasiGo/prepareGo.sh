#!/bin/sh
# 

# the contact map file
MAPinfofile=MAPinfo_total_CA.dat
width=1.0
epsilonGo=0.4
mapfile=GOCA_LJ1210_W${epsilonGo}.xml

#=============================================
# convert the contact map into the format of Phaistos+Go
#=============================================
cat <<EOF >$mapfile
<distance_restraints>

<formatted_data>

<format name="restraint" type="\$3">
  <atom1>\$1</atom1>
  <atom2>\$2</atom2>
  <parameters>
    <go_weight_1>\$4</go_weight_1>
    <go_nd_1>\$5</go_nd_1>
    <go_width_1>\$6</go_width_1>
    <go_weight_2>\$7</go_weight_2>
    <go_nd_2>\$8</go_nd_2>
    <go_width_2>\$9</go_width_2>
    <go_weight_3>\$10</go_weight_3>
    <go_nd_3>\$11</go_nd_3>
    <go_width_3>\$12</go_width_3>
  </parameters>
</format>

<data>
EOF

cat <<EOF >genmapfile.sh
cat $MAPinfofile |  awk '!/^#/ {printf("0/%1d/%3s/_%s_   0/%1d/%3s/_%s_  gaussian  $epsilonGo %7.3f $width -1 0 0 -1 0 0 \\n",\$4-1,\$6,\$8,\$5-1,\$7,\$9,\$3*10)}' >>$mapfile
EOF
sh genmapfile.sh


cat <<EOF >>$mapfile
</data>

</formatted_data>

</distance_restraints>
EOF

