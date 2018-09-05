cat MAPinfo_total_CA.dat |  awk '!/^#/ {printf("0/%1d/%3s/_%s_   0/%1d/%3s/_%s_  gaussian  0.4 %7.3f 1.0 -1 0 0 -1 0 0 \n",$4-1,$6,$8,$5-1,$7,$9,$3*10)}' >>GOCA_LJ1210_W0.4.xml
