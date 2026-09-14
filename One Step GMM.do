encode perbankan_lar, gen(large_bank)
encode perbankan_med, gen(medium_bank)
encode perbankan_sml, gen(small_bank)
encode quarter_lar, gen(large_quarter)
encode quarter_med, gen(medium_quarter)
encode quarter_sml, gen(small_quarter)
#Model1
xtset large_bank large_quarter
xtabond2 lg_lar L.lg_lar car_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar, robust nomata iv(car_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar) gmm(L.lg_lar, collapse)
estimates store fdgmm
#Gunakan estimasi kedua dengan fixed effect dan simpan hasil estimasi
xtreg lg_lar L.lg_lar car_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar, fe
estimates store fem
#Gunakan estimasi ketiga dengan regression dan simpan hasil estimasi
regress lg_lar L.lg_lar car_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar 
estimates store pls
#Bandingkan ketiga hasil estimasi
estimates table fdgmm fem pls, star stats(N)
summarize lg_lar car_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar

xtset medium_bank medium_quarter
xtabond2 lg_med L.lg_med car_med size_med roa_med nplgross_med ckpn_med nim_med, robust nomata iv(car_med size_med roa_med nplgross_med ckpn_med nim_med) gmm(L.lg_med, collapse)
estimates store fdgmm
#Gunakan estimasi kedua dengan fixed effect dan simpan hasil estimasi
xtreg lg_med L.lg_med car_med size_med roa_med nplgross_med ckpn_med nim_med, fe
estimates store fem
#Gunakan estimasi ketiga dengan regression dan simpan hasil estimasi
regress lg_med L.lg_med car_med size_med roa_med nplgross_med ckpn_med nim_med 
estimates store pls
#Bandingkan ketiga hasil estimasi
estimates table fdgmm fem pls, star stats(N)
summarize lg_med car_med size_med roa_med nplgross_med ckpn_med nim_med 

xtset small_bank small_quarter
xtabond2 lg_sml L.lg_sml car_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml, robust nomata iv(car_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml) gmm(L.lg_sml, collapse)
estimates store fdgmm
#Gunakan estimasi kedua dengan fixed effect dan simpan hasil estimasi
xtreg lg_sml L.lg_sml car_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml, fe
estimates store fem
#Gunakan estimasi ketiga dengan regression dan simpan hasil estimasi
regress lg_sml L.lg_sml car_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml 
estimates store pls
#Bandingkan ketiga hasil estimasi
estimates table fdgmm fem pls, star stats(N)
summarize lg_sml car_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml 

#Model2
xtset large_bank large_quarter
xtabond2 lg_lar L.lg_lar liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar, robust nomata iv(liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar) gmm(L.lg_lar, collapse)
estimates store fdgmm
#Gunakan estimasi kedua dengan fixed effect dan simpan hasil estimasi
xtreg lg_lar L.lg_lar liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar, fe
estimates store fem
#Gunakan estimasi ketiga dengan regression dan simpan hasil estimasi
regress lg_lar L.lg_lar liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar 
estimates store pls
#Bandingkan ketiga hasil estimasi
estimates table fdgmm fem pls, star stats(N)
summarize lg_lar liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar

xtset medium_bank medium_quarter
xtabond2 lg_med L.lg_med liq_med size_med roa_med nplgross_med ckpn_med nim_med, robust nomata iv(liq_med size_med roa_med nplgross_med ckpn_med nim_med) gmm(L.lg_med, collapse)
estimates store fdgmm
#Gunakan estimasi kedua dengan fixed effect dan simpan hasil estimasi
xtreg lg_med L.lg_med liq_med size_med roa_med nplgross_med ckpn_med nim_med, fe
estimates store fem
#Gunakan estimasi ketiga dengan regression dan simpan hasil estimasi
regress lg_med L.lg_med liq_med size_med roa_med nplgross_med ckpn_med nim_med 
estimates store pls
#Bandingkan ketiga hasil estimasi
estimates table fdgmm fem pls, star stats(N)
summarize lg_med liq_med size_med roa_med nplgross_med ckpn_med nim_med 

xtset small_bank small_quarter
xtabond2 lg_sml L.lg_sml liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml, robust nomata iv(liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml) gmm(L.lg_sml, collapse)
estimates store fdgmm
#Gunakan estimasi kedua dengan fixed effect dan simpan hasil estimasi
xtreg lg_sml L.lg_sml liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml, fe
estimates store fem
#Gunakan estimasi ketiga dengan regression dan simpan hasil estimasi
regress lg_sml L.lg_sml liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml 
estimates store pls
#Bandingkan ketiga hasil estimasi
estimates table fdgmm fem pls, star stats(N)
summarize lg_sml liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml 


#Model3
xtset large_bank large_quarter
xtabond2 lg_lar L.lg_lar car_lar liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar, robust nomata iv(car_lar liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar) gmm(L.lg_lar, collapse)
estimates store fdgmm
#Gunakan estimasi kedua dengan fixed effect dan simpan hasil estimasi
xtreg lg_lar L.lg_lar car_lar liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar, fe
estimates store fem
#Gunakan estimasi ketiga dengan regression dan simpan hasil estimasi
regress lg_lar L.lg_lar car_lar liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar 
estimates store pls
#Bandingkan ketiga hasil estimasi
estimates table fdgmm fem pls, star stats(N)
summarize lg_lar car_lar liq_lar size_lar roa_lar nplgross_lar ckpn_lar nim_lar

xtset medium_bank medium_quarter
xtabond2 lg_med L.lg_med car_med liq_med size_med roa_med nplgross_med ckpn_med nim_med, robust nomata iv(car_med liq_med size_med roa_med nplgross_med ckpn_med nim_med) gmm(L.lg_med, collapse)
estimates store fdgmm
#Gunakan estimasi kedua dengan fixed effect dan simpan hasil estimasi
xtreg lg_med L.lg_med car_med liq_med size_med roa_med nplgross_med ckpn_med nim_med, fe
estimates store fem
#Gunakan estimasi ketiga dengan regression dan simpan hasil estimasi
regress lg_med L.lg_med car_med liq_med size_med roa_med nplgross_med ckpn_med nim_med 
estimates store pls
#Bandingkan ketiga hasil estimasi
estimates table fdgmm fem pls, star stats(N)
summarize lg_med car_med liq_med size_med roa_med nplgross_med ckpn_med nim_med 

xtset small_bank small_quarter
xtabond2 lg_sml L.lg_sml car_sml liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml, robust nomata iv(car_sml liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml) gmm(L.lg_sml, collapse)
estimates store fdgmm
#Gunakan estimasi kedua dengan fixed effect dan simpan hasil estimasi
xtreg lg_sml L.lg_sml car_sml liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml, fe
estimates store fem
#Gunakan estimasi ketiga dengan regression dan simpan hasil estimasi
regress lg_sml L.lg_sml car_sml liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml 
estimates store pls
#Bandingkan ketiga hasil estimasi
estimates table fdgmm fem pls, star stats(N)
summarize lg_sml car_sml liq_sml size_sml roa_sml nplgross_sml ckpn_sml nim_sml 