library(RxODE)
CFZ_PBPK_v_3 <- RxODE({

P_3108 = (P_2550*(1-P_42)*P_2850)     # Neighborhoods|UpperJejunum_pls_PortalVein_pls|Mass transfer rate (mucosa to portal vein plasma)
P_3109 = (P_2550*P_42*P_2852)     # Neighborhoods|UpperJejunum_bc_PortalVein_bc|Mass transfer rate (mucosa to portal vein blood cells)
P_3110 = (P_2557*(1-P_42)*P_2860)     # Neighborhoods|LowerJejunum_pls_PortalVein_pls||Mass transfer rate (mucosa to portal vein plasma)
P_3111 = (P_2557*P_42*P_2862)     # Neighborhoods|LowerJejunum_bc_PortalVein_bc|Mass transfer rate (mucosa to portal vein blood cells)
P_3112 = (P_2564*(1-P_42)*P_2870)     # Neighborhoods|UpperIleum_pls_PortalVein_pls|Mass transfer rate (mucosa to portal vein plasma)
P_3113 = (P_2564*P_42*P_2872)     # Neighborhoods|UpperIleum_bc_PortalVein_bc|Mass transfer rate (mucosa to portal vein blood cells)
P_3116 = (P_2571*(1-P_42)*P_2880)     # Neighborhoods|LowerIleum_pls_PortalVein_pls|Mass transfer rate (mucosa to portal vein plasma)
P_3117 = (P_2571*P_42*P_2882)     # Neighborhoods|LowerIleum_bc_PortalVein_bc|Mass transfer rate (mucosa to portal vein blood cells)
P_3120 = (P_2615*(1-P_42)*P_2946)     # Neighborhoods|Rectum_pls_PortalVein_pls|Mass transfer rate (mucosa to portal vein plasma)
P_3121 = (P_2615*P_42*P_2948)     # Neighborhoods|Rectum_bc_PortalVein_bc|Mass transfer rate (mucosa to portal vein blood cells)
P_3144 = (P_2543*(1-P_42)*P_2840)     # Neighborhoods|Duodenum_pls_PortalVein_pls|Mass transfer rate (mucosa to portal vein plasma)
P_3145 = (P_2543*P_42*P_2842)     # Neighborhoods|Duodenum_bc_PortalVein_bc|Clofazimine|Mass transfer rate (mucosa to portal vein blood cells)
P_3146 = (P_2580*(1-P_42)*P_2896)     # |Neighborhoods|Caecum_pls_PortalVein_pls|Clofazimine|Mass transfer rate (mucosa to portal vein plasma)
P_3147 = (P_2580*P_42*P_2898)     # Neighborhoods|Caecum_bc_PortalVein_bc|Clofazimine|Mass transfer rate (mucosa to portal vein blood cells)
P_3148 = (P_2587*(1-P_42)*P_2906)     # |Neighborhoods|ColonAscendens_pls_PortalVein_pls|Clofazimine|Mass transfer rate (mucosa to portal vein plasma)
P_3149 = (P_2587*P_42*P_2908)     # Neighborhoods|ColonAscendens_bc_PortalVein_bc|Clofazimine|Mass transfer rate (mucosa to portal vein blood cells)
P_3150 = (P_2594*(1-P_42)*P_2916)     # |Neighborhoods|ColonTransversum_pls_PortalVein_pls|Clofazimine|Mass transfer rate (mucosa to portal vein plasma)
P_3151 = (P_2594*P_42*P_2918)     # Neighborhoods|ColonTransversum_bc_PortalVein_bc|Clofazimine|Mass transfer rate (mucosa to portal vein blood cells)
P_3152 = (P_2601*(1-P_42)*P_2926)     # |Neighborhoods|ColonDescendens_pls_PortalVein_pls|Clofazimine|Mass transfer rate (mucosa to portal vein plasma)
P_3153 = (P_2601*P_42*P_2928)     # Neighborhoods|ColonDescendens_bc_PortalVein_bc|Clofazimine|Mass transfer rate (mucosa to portal vein blood cells)
P_3154 = (P_2608*(1-P_42)*P_2936)     # |Neighborhoods|ColonSigmoid_pls_PortalVein_pls|Clofazimine|Mass transfer rate (mucosa to portal vein plasma)
P_3155 = (P_2608*P_42*P_2938)     # Neighborhoods|ColonSigmoid_bc_PortalVein_bc|Clofazimine|Mass transfer rate (mucosa to portal vein blood cells)

P_3187 = (ifelse(P_275,(P_1229*P_2488*(P_3043-(ifelse(!(P_276),(P_1817*P_2850),0)))),0))     # sim_1|Neighborhoods|Lumen_uje_UpperJejunum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3188 = (ifelse(P_275,(P_1229*P_2493*(P_3045-(ifelse(!(P_276),(P_1817*P_2860),0)))),0))     # sim_1|Neighborhoods|Lumen_lje_LowerJejunum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3189 = (ifelse(P_275,(P_1229*P_2498*(P_3047-(ifelse(!(P_276),(P_1817*P_2870),0)))),0))     # sim_1|Neighborhoods|Lumen_uil_UpperIleum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3190 = (P_2543*(1-P_42)*P_3066)     # sim_1|Neighborhoods|SmallIntestine_pls_Duodenum_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3191 = (P_2543*P_42*P_3068)     # sim_1|Neighborhoods|SmallIntestine_bc_Duodenum_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
P_3192 = (P_2550*(1-P_42)*P_3066)     # sim_1|Neighborhoods|SmallIntestine_pls_UpperJejunum_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3193 = (P_2550*P_42*P_3068)     # sim_1|Neighborhoods|SmallIntestine_bc_UpperJejunum_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
P_3194 = (P_2557*(1-P_42)*P_3066)     # sim_1|Neighborhoods|SmallIntestine_pls_LowerJejunum_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3195 = (P_2557*P_42*P_3068)     # sim_1|Neighborhoods|SmallIntestine_bc_LowerJejunum_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
P_3196 = (P_2564*(1-P_42)*P_3066)     # sim_1|Neighborhoods|SmallIntestine_pls_UpperIleum_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3197 = (P_2564*P_42*P_3068)     # sim_1|Neighborhoods|SmallIntestine_bc_UpperIleum_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
#P_3198 = (ifelse(P_275,(P_1229*P_2503*(P_3049-(ifelse(!(P_276),(P_1817*P_2880),0)))),0))     # sim_1|Neighborhoods|Lumen_lil_LowerIleum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3199 = (P_2571*(1-P_42)*P_3066)     # sim_1|Neighborhoods|SmallIntestine_pls_LowerIleum_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3200 = (P_2571*P_42*P_3068)     # sim_1|Neighborhoods|SmallIntestine_bc_LowerIleum_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
P_3201 = (P_2580*(1-P_42)*P_3081)     # sim_1|Neighborhoods|LargeIntestine_pls_Caecum_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3202 = (P_2580*P_42*P_3083)     # sim_1|Neighborhoods|LargeIntestine_bc_Caecum_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
P_3203 = (P_2587*(1-P_42)*P_3081)     # sim_1|Neighborhoods|LargeIntestine_pls_ColonAscendens_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3204 = (P_2587*P_42*P_3083)     # sim_1|Neighborhoods|LargeIntestine_bc_ColonAscendens_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
P_3205 = (P_2594*(1-P_42)*P_3081)     # sim_1|Neighborhoods|LargeIntestine_pls_ColonTransversum_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3206 = (P_2594*P_42*P_3083)     # sim_1|Neighborhoods|LargeIntestine_bc_ColonTransversum_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
P_3207 = (P_2601*(1-P_42)*P_3081)     # sim_1|Neighborhoods|LargeIntestine_pls_ColonDescendens_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3208 = (P_2601*P_42*P_3083)     # sim_1|Neighborhoods|LargeIntestine_bc_ColonDescendens_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
P_3209 = (P_2608*(1-P_42)*P_3081)     # sim_1|Neighborhoods|LargeIntestine_pls_ColonSigmoid_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3210 = (P_2608*P_42*P_3083)     # sim_1|Neighborhoods|LargeIntestine_bc_ColonSigmoid_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
P_3211 = (P_2615*(1-P_42)*P_3081)     # sim_1|Neighborhoods|LargeIntestine_pls_Rectum_pls|Clofazimine|Mass transfer rate (intestine to mucosa plasma)
P_3212 = (P_2615*P_42*P_3083)     # sim_1|Neighborhoods|LargeIntestine_bc_Rectum_bc|Clofazimine|Mass transfer rate (intestine to mucosa blood cells)
#P_3213 = (ifelse(P_275,(P_1229*P_2533*(P_3061-(ifelse(!(P_276),(P_1817*P_2946),0)))),0))     # sim_1|Neighborhoods|Lumen_rect_Rectum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3198 = (ifelse(P_275,(P_1229*P_2503*(P_3049-(ifelse(!(P_276),(P_1817*P_2880),0)))),0))     # sim_1|Neighborhoods|Lumen_lil_LowerIleum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3213 = (ifelse(P_275,(P_1229*P_2533*(P_3061-(ifelse(!(P_276),(P_1817*P_2946),0)))),0))     # sim_1|Neighborhoods|Lumen_rect_Rectum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3236 = (ifelse(P_275,(P_1229*P_2483*(P_3041-(ifelse(!(P_276),(P_1817*P_2840),0)))),0))     # sim_1|Neighborhoods|Lumen_duo_Duodenum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3237 = (ifelse(P_275,(P_1229*P_2508*(P_3051-(ifelse(!(P_276),(P_1817*P_2896),0)))),0))     # sim_1|Neighborhoods|Lumen_cae_Caecum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3238 = (ifelse(P_275,(P_1229*P_2513*(P_3053-(ifelse(!(P_276),(P_1817*P_2906),0)))),0))     # sim_1|Neighborhoods|Lumen_colasc_ColonAscendens_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3239 = (ifelse(P_275,(P_1229*P_2518*(P_3055-(ifelse(!(P_276),(P_1817*P_2916),0)))),0))     # sim_1|Neighborhoods|Lumen_coltrans_ColonTransversum_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3240 = (ifelse(P_275,(P_1229*P_2523*(P_3057-(ifelse(!(P_276),(P_1817*P_2926),0)))),0))     # sim_1|Neighborhoods|Lumen_coldesc_ColonDescendens_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
P_3241 = (ifelse(P_275,(P_1229*P_2528*(P_3059-(ifelse(!(P_276),(P_1817*P_2936),0)))),0))     # sim_1|Neighborhoods|Lumen_colsigm_ColonSigmoid_pls|Clofazimine|Drug absorption rate (lumen to mucosa)
#####################################
P_3387 = (ifelse(P_275,(P_1816*P_2488*((P_2673*P_3043)-(ifelse(!(P_277),(P_2672*P_1817*(P_2856/P_3311)),0)))),0))     # sim_1|Neighborhoods|Lumen_uje_UpperJejunum_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  #P_3388 = P_3343     # sim_1|Neighborhoods|Lumen_uje_UpperJejunum_cell|Clofazimine|Partition coefficient (intracellular/water)
  P_3389 = (ifelse(P_275,(P_1816*P_2493*((P_2675*P_3045)-(ifelse(!(P_277),(P_2674*P_1817*(P_2866/P_3312)),0)))),0))     # sim_1|Neighborhoods|Lumen_lje_LowerJejunum_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  #P_3390 = P_3344     # sim_1|Neighborhoods|Lumen_lje_LowerJejunum_cell|Clofazimine|Partition coefficient (intracellular/water)
  P_3391 = (ifelse(P_275,(P_1816*P_2498*((P_2680*P_3047)-(ifelse(!(P_277),(P_2679*P_1817*(P_2876/P_3313)),0)))),0))     # sim_1|Neighborhoods|Lumen_uil_UpperIleum_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  P_3392 = P_3345     # sim_1|Neighborhoods|Lumen_uil_UpperIleum_cell|Clofazimine|Partition coefficient (intracellular/water)
  P_3393 = (ifelse(P_275,(P_1816*P_2503*((P_2685*P_3049)-(ifelse(!(P_277),(P_2684*P_1817*(P_2886/P_3314)),0)))),0))     # sim_1|Neighborhoods|Lumen_lil_LowerIleum_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  #P_3394 = P_3346     # sim_1|Neighborhoods|Lumen_lil_LowerIleum_cell|Clofazimine|Partition coefficient (intracellular/water)
  P_3395 = (ifelse(P_275,(P_1816*P_2533*((P_2705*P_3061)-(ifelse(!(P_277),(P_2704*P_1817*(P_2952/P_3320)),0)))),0))     # sim_1|Neighborhoods|Lumen_rect_Rectum_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  #P_3396 = P_3352     # sim_1|Neighborhoods|Lumen_rect_Rectum_cell|Clofazimine|Partition coefficient (intracellular/water)
  P_3397 = (ifelse(P_275,(P_1816*P_2483*((P_2746*P_3041)-(ifelse(!(P_277),(P_2745*P_1817*(P_2846/P_3310)),0)))),0))     # sim_1|Neighborhoods|Lumen_duo_Duodenum_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  #P_3398 = P_3342     # sim_1|Neighborhoods|Lumen_duo_Duodenum_cell|Clofazimine|Partition coefficient (intracellular/water)
  P_3399 = (ifelse(P_275,(P_1816*P_2508*((P_2748*P_3051)-(ifelse(!(P_277),(P_2747*P_1817*(P_2902/P_3315)),0)))),0))     # sim_1|Neighborhoods|Lumen_cae_Caecum_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  #P_3400 = P_3347     # sim_1|Neighborhoods|Lumen_cae_Caecum_cell|Clofazimine|Partition coefficient (intracellular/water)
  P_3401 = (ifelse(P_275,(P_1816*P_2513*((P_2750*P_3053)-(ifelse(!(P_277),(P_2749*P_1817*(P_2912/P_3316)),0)))),0))     # sim_1|Neighborhoods|Lumen_colasc_ColonAscendens_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  #P_3402 = P_3348     # sim_1|Neighborhoods|Lumen_colasc_ColonAscendens_cell|Clofazimine|Partition coefficient (intracellular/water)
  P_3403 = (ifelse(P_275,(P_1816*P_2518*((P_2752*P_3055)-(ifelse(!(P_277),(P_2751*P_1817*(P_2922/P_3317)),0)))),0))     # sim_1|Neighborhoods|Lumen_coltrans_ColonTransversum_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  #P_3404 = P_3349     # sim_1|Neighborhoods|Lumen_coltrans_ColonTransversum_cell|Clofazimine|Partition coefficient (intracellular/water)
  P_3405 = (ifelse(P_275,(P_1816*P_2523*((P_2754*P_3057)-(ifelse(!(P_277),(P_2753*P_1817*(P_2932/P_3318)),0)))),0))     # sim_1|Neighborhoods|Lumen_coldesc_ColonDescendens_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
  #P_3406 = P_3350     # sim_1|Neighborhoods|Lumen_coldesc_ColonDescendens_cell|Clofazimine|Partition coefficient (intracellular/water)
P_3407 = (ifelse(P_275,(P_1816*P_2528*((P_2756*P_3059)-(ifelse(!(P_277),(P_2755*P_1817*(P_2942/P_3319)),0)))),0))     # sim_1|Neighborhoods|Lumen_colsigm_ColonSigmoid_cell|Clofazimine|Drug absorption rate (lumen to mucosa)
 
       # sim_1|Neighborhoods|UpperJejunum_pls_PortalVein_pls|Clofazimine|Mass transfer rate (mucosa to portal vein plasma)
P_2639 = (ifelse((P_2110 > 0),(DADT_Liver_Pericentral_Interstitial/P_2110),0))     # sim_1|Organism|Liver|Pericentral|Interstitial|Clofazimine|Concentration
P_2629 = (ifelse((P_2102 > 0),(DADT_Liver_Periportal_Interstitial/P_2102),0))     # sim_1|Organism|Liver|Periportal|Interstitial|Clofazimine|Concentration
P_2635 = (ifelse((P_2107 > 0),(DADT_Liver_Pericentral_Plasma/P_2107),0))     # sim_1|Organism|Liver|Pericentral|Plasma|Clofazimine|Concentration
P_2637 = (ifelse((P_2109 > 0),(DADT_Liver_Pericentral_BloodCells/P_2109),0))     # sim_1|Organism|Liver|Pericentral|BloodCells|Clofazimine|Concentration
P_2643 = (ifelse((P_2122 > 0),(DADT_Lung_Intracellular/P_2122),0))     # sim_1|Organism|Lung|Intracellular|Clofazimine|Concentration
P_2645 = (ifelse((P_2132 > 0),(DADT_Muscle_Intracellular/P_2132),0))     # sim_1|Organism|Muscle|Intracellular|Clofazimine|Concentration
P_2647 = (ifelse((P_2142 > 0),(DADT_Pancreas_Intracellular/P_2142),0))     # sim_1|Organism|Pancreas|Intracellular|Clofazimine|Concentration
P_2650 = (ifelse((P_2157 > 0),(DADT_Skin_Intracellular/P_2157),0))     # sim_1|Organism|Skin|Intracellular|Clofazimine|Concentration
P_2652 = (ifelse((P_2167 > 0),(DADT_Spleen_Intracellular/P_2167),0))     # sim_1|Organism|Spleen|Intracellular|Clofazimine|Concentration

P_2796 = (DADT_Lumen_Duodenum_Liquid/P_1940)     # sim_1|Organism|Lumen|Duodenum|Fraction of geometric volume filled with liquid
P_2793 = (ifelse((P_2474 < 0.9),1,(1/(1+(exp(((P_2474+(-1))*100)))))))     # sim_1|Organism|Lumen|Stomach|FillLevelFlag
P_3040 = (ifelse((P_2796 < 0.9),1,(1/(1+(exp(((P_2796+(-1))*100)))))))     # sim_1|Organism|Lumen|Duodenum|FillLevelFlag
P_3042 = (ifelse((P_2799 < 0.9),1,(1/(1+(exp(((P_2799+(-1))*100)))))))     # sim_1|Organism|Lumen|UpperJejunum|FillLevelFlag
P_3044 = (ifelse((P_2802 < 0.9),1,(1/(1+(exp(((P_2802+(-1))*100)))))))     # sim_1|Organism|Lumen|LowerJejunum|FillLevelFlag
P_3046 = (ifelse((P_2805 < 0.9),1,(1/(1+(exp(((P_2805+(-1))*100)))))))     # sim_1|Organism|Lumen|UpperIleum|FillLevelFlag 
P_3048 = (ifelse((P_2808 < 0.9),1,(1/(1+(exp(((P_2808+(-1))*100)))))))     # sim_1|Organism|Lumen|LowerIleum|FillLevelFlag
P_3050 = (ifelse((P_2811 < 0.9),1,(1/(1+(exp(((P_2811+(-1))*100)))))))     # sim_1|Organism|Lumen|Caecum|FillLevelFlag
P_3052 = (ifelse((P_2814 < 0.9),1,(1/(1+(exp(((P_2814+(-1))*100)))))))     # sim_1|Organism|Lumen|ColonAscendens|FillLevelFlag
P_3054 = (ifelse((P_2817 < 0.9),1,(1/(1+(exp(((P_2817+(-1))*100)))))))     # sim_1|Organism|Lumen|ColonTransversum|FillLevelFlag
P_3056 = (ifelse((P_2820 < 0.9),1,(1/(1+(exp(((P_2820+(-1))*100)))))))     # sim_1|Organism|Lumen|ColonDescendens|FillLevelFlag
P_3058 = (ifelse((P_2823 < 0.9),1,(1/(1+(exp(((P_2823+(-1))*100)))))))     # sim_1|Organism|Lumen|ColonSigmoid|FillLevelFlag
P_3060 = (ifelse((P_2826 < 0.9),1,(1/(1+(exp(((P_2826+(-1))*100)))))))     # sim_1|Organism|Lumen|Rectum|FillLevelFlag

P_2799 = (DADT_Lumen_UpperJejunum_Liquid/P_1951)     # sim_1|Organism|Lumen|UpperJejunum|Fraction of geometric volume filled with liquid
P_2802 = (DADT_Lumen_LowerJejunum_Liquid/P_1962)     # sim_1|Organism|Lumen|LowerJejunum|Fraction of geometric volume filled with liquid
P_2805 = (DADT_Lumen_UpperIleum_Liquid/P_1973)     # sim_1|Organism|Lumen|UpperIleum|Fraction of geometric volume filled with liquid
P_2808 = (DADT_Lumen_LowerIleum_Liquid/P_1984)     # sim_1|Organism|Lumen|LowerIleum|Fraction of geometric volume filled with liquid
P_2811 = (DADT_Lumen_Caecum_Liquid/P_1995)     # sim_1|Organism|Lumen|Caecum|Fraction of geometric volume filled with liquid
P_2814 = (DADT_Lumen_ColonAscendens_Liquid/P_2006)     # sim_1|Organism|Lumen|ColonAscendens|Fraction of geometric volume filled with liquid
P_2817 = (DADT_Lumen_ColonTransversum_Liquid/P_2017)     # sim_1|Organism|Lumen|ColonTransversum|Fraction of geometric volume filled with liquid
P_2820 = (DADT_Lumen_ColonDescendens_Liquid/P_2028)     # sim_1|Organism|Lumen|ColonDescendens|Fraction of geometric volume filled with liquid
P_2823 = (DADT_Lumen_ColonSigmoid_Liquid/P_2039)     # sim_1|Organism|Lumen|ColonSigmoid|Fraction of geometric volume filled with liquid
P_2826 = (DADT_Lumen_Rectum_Liquid/P_2050)     # sim_1|Organism|Lumen|Rectum|Fraction of geometric volume filled with liquid
P_2827 = (P_2049*DADT_Lumen_Rectum_Liquid)     # sim_1|Organism|Lumen|Rectum|Liquid transfer rate
P_2840 = (ifelse((P_2544 > 0),(DADT_SmallIntestine_Mucosa_Duodenum_Plasma/P_2544),0))     # sim_1|Organism|SmallIntestine|Mucosa|Duodenum|Plasma|Clofazimine|Concentration
P_2842 = (ifelse((P_2545 > 0),(DADT_SmallIntestine_Mucosa_Duodenum_BloodCells/P_2545),0))     # sim_1|Organism|SmallIntestine|Mucosa|Duodenum|BloodCells|Clofazimine|Concentration
P_2844 = (ifelse((P_2546 > 0),(DADT_SmallIntestine_Mucosa_Duodenum_Interstitial/P_2546),0))     # sim_1|Organism|SmallIntestine|Mucosa|Duodenum|Interstitial|Clofazimine|Concentration
P_2846 = (ifelse((P_2548 > 0),(DADT_SmallIntestine_Mucosa_Duodenum_Intracellular/P_2548),0))     # sim_1|Organism|SmallIntestine|Mucosa|Duodenum|Intracellular|Clofazimine|Concentration
P_2850 = (ifelse((P_2551 > 0),(DADT_SmallIntestine_Mucosa_UpperJejunum_Plasma/P_2551),0))     # sim_1|Organism|SmallIntestine|Mucosa|UpperJejunum|Plasma|Clofazimine|Concentration
P_2852 = (ifelse((P_2552 > 0),(DADT_SmallIntestine_Mucosa_UpperJejunum_BloodCells/P_2552),0))     # sim_1|Organism|SmallIntestine|Mucosa|UpperJejunum|BloodCells|Clofazimine|Concentration
P_2854 = (ifelse((P_2553 > 0),(DADT_SmallIntestine_Mucosa_UpperJejunum_Interstitial/P_2553),0))     # sim_1|Organism|SmallIntestine|Mucosa|UpperJejunum|Interstitial|Clofazimine|Concentration
P_2856 = (ifelse((P_2555 > 0),(DADT_SmallIntestine_Mucosa_UpperJejunum_Intracellular/P_2555),0))     # sim_1|Organism|SmallIntestine|Mucosa|UpperJejunum|Intracellular|Clofazimine|Concentration
P_2860 = (ifelse((P_2558 > 0),(DADT_SmallIntestine_Mucosa_LowerJejunum_Plasma/P_2558),0))     # sim_1|Organism|SmallIntestine|Mucosa|LowerJejunum|Plasma|Clofazimine|Concentration
P_2862 = (ifelse((P_2559 > 0),(DADT_SmallIntestine_Mucosa_LowerJejunum_BloodCells/P_2559),0))     # sim_1|Organism|SmallIntestine|Mucosa|LowerJejunum|BloodCells|Clofazimine|Concentration
P_2864 = (ifelse((P_2560 > 0),(DADT_SmallIntestine_Mucosa_LowerJejunum_Interstitial/P_2560),0))     # sim_1|Organism|SmallIntestine|Mucosa|LowerJejunum|Interstitial|Clofazimine|Concentration
P_2866 = (ifelse((P_2562 > 0),(DADT_SmallIntestine_Mucosa_LowerJejunum_Intracellular/P_2562),0))     # sim_1|Organism|SmallIntestine|Mucosa|LowerJejunum|Intracellular|Clofazimine|Concentration
P_2870 = (ifelse((P_2565 > 0),(DADT_SmallIntestine_Mucosa_UpperIleum_Plasma/P_2565),0))     # sim_1|Organism|SmallIntestine|Mucosa|UpperIleum|Plasma|Clofazimine|Concentration
P_2872 = (ifelse((P_2566 > 0),(DADT_SmallIntestine_Mucosa_UpperIleum_BloodCells/P_2566),0))     # sim_1|Organism|SmallIntestine|Mucosa|UpperIleum|BloodCells|Clofazimine|Concentration
P_2874 = (ifelse((P_2567 > 0),(DADT_SmallIntestine_Mucosa_UpperIleum_Interstitial/P_2567),0))     # sim_1|Organism|SmallIntestine|Mucosa|UpperIleum|Interstitial|Clofazimine|Concentration
P_2876 = (ifelse((P_2569 > 0),(DADT_SmallIntestine_Mucosa_UpperIleum_Intracellular/P_2569),0))     # sim_1|Organism|SmallIntestine|Mucosa|UpperIleum|Intracellular|Clofazimine|Concentration
P_2880 = (ifelse((P_2572 > 0),(DADT_SmallIntestine_Mucosa_LowerIleum_Plasma/P_2572),0))     # sim_1|Organism|SmallIntestine|Mucosa|LowerIleum|Plasma|Clofazimine|Concentration
P_2882 = (ifelse((P_2573 > 0),(DADT_SmallIntestine_Mucosa_LowerIleum_BloodCells/P_2573),0))     # sim_1|Organism|SmallIntestine|Mucosa|LowerIleum|BloodCells|Clofazimine|Concentration
P_2884 = (ifelse((P_2574 > 0),(DADT_SmallIntestine_Mucosa_LowerIleum_Interstitial/P_2574),0))     # sim_1|Organism|SmallIntestine|Mucosa|LowerIleum|Interstitial|Clofazimine|Concentration
P_2886 = (ifelse((P_2576 > 0),(DADT_SmallIntestine_Mucosa_LowerIleum_Intracellular/P_2576),0))     # sim_1|Organism|SmallIntestine|Mucosa|LowerIleum|Intracellular|Clofazimine|Concentration
P_2896 = (ifelse((P_2581 > 0),(DADT_LargeIntestine_Mucosa_Caecum_Plasma/P_2581),0))     # sim_1|Organism|LargeIntestine|Mucosa|Caecum|Plasma|Clofazimine|Concentration
P_2898 = (ifelse((P_2582 > 0),(DADT_LargeIntestine_Mucosa_Caecum_BloodCells/P_2582),0))     # sim_1|Organism|LargeIntestine|Mucosa|Caecum|BloodCells|Clofazimine|Concentration
P_2900 = (ifelse((P_2583 > 0),(DADT_LargeIntestine_Mucosa_Caecum_Interstitial/P_2583),0))     # sim_1|Organism|LargeIntestine|Mucosa|Caecum|Interstitial|Clofazimine|Concentration
P_2902 = (ifelse((P_2585 > 0),(DADT_LargeIntestine_Mucosa_Caecum_Intracellular/P_2585),0))     # sim_1|Organism|LargeIntestine|Mucosa|Caecum|Intracellular|Clofazimine|Concentration.
P_2906 = (ifelse((P_2588 > 0),(DADT_LargeIntestine_Mucosa_ColonAscendens_Plasma/P_2588),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonAscendens|Plasma|Clofazimine|Concentration
P_2908 = (ifelse((P_2589 > 0),(DADT_LargeIntestine_Mucosa_ColonAscendens_BloodCells/P_2589),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonAscendens|BloodCells|Clofazimine|Concentration
P_2910 = (ifelse((P_2590 > 0),(DADT_LargeIntestine_Mucosa_ColonAscendens_Interstitial/P_2590),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonAscendens|Interstitial|Clofazimine|Concentration
P_2912 = (ifelse((P_2592 > 0),(DADT_LargeIntestine_Mucosa_ColonAscendens_Intracellular/P_2592),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonAscendens|Intracellular|Clofazimine|Concentration
P_2916 = (ifelse((P_2595 > 0),(DADT_LargeIntestine_Mucosa_ColonTransversum_Plasma/P_2595),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonTransversum|Plasma|Clofazimine|Concentration
P_2918 = (ifelse((P_2596 > 0),(DADT_LargeIntestine_Mucosa_ColonTransversum_BloodCells/P_2596),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonTransversum|BloodCells|Clofazimine|Concentration  
P_2920 = (ifelse((P_2597 > 0),(DADT_LargeIntestine_Mucosa_ColonTransversum_Interstitial/P_2597),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonTransversum|Interstitial|Clofazimine|Concentration
P_2922 = (ifelse((P_2599 > 0),(DADT_LargeIntestine_Mucosa_ColonTransversum_Intracellular/P_2599),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonTransversum|Intracellular|Clofazimine|Concentration
P_2926 = (ifelse((P_2602 > 0),(DADT_LargeIntestine_Mucosa_ColonDescendens_Plasma/P_2602),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonDescendens|Plasma|Clofazimine|Concentration
P_2928 = (ifelse((P_2603 > 0),(DADT_LargeIntestine_Mucosa_ColonDescendens_BloodCells/P_2603),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonDescendens|BloodCells|Clofazimine|Concentration
P_2930 = (ifelse((P_2604 > 0),(DADT_LargeIntestine_Mucosa_ColonDescendens_Interstitial/P_2604),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonDescendens|Interstitial|Clofazimine|Concentration
P_2932 = (ifelse((P_2606 > 0),(DADT_LargeIntestine_Mucosa_ColonDescendens_Intracellular/P_2606),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonDescendens|Intracellular|Clofazimine|Concentration
P_2936 = (ifelse((P_2609 > 0),(DADT_LargeIntestine_Mucosa_ColonSigmoid_Plasma/P_2609),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonSigmoid|Plasma|Clofazimine|Concentration
P_2938 = (ifelse((P_2610 > 0),(DADT_LargeIntestine_Mucosa_ColonSigmoid_BloodCells/P_2610),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonSigmoid|BloodCells|Clofazimine|Concentration
P_2940 = (ifelse((P_2611 > 0),(DADT_LargeIntestine_Mucosa_ColonSigmoid_Interstitial/P_2611),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonSigmoid|Interstitial|Clofazimine|Concentration
P_2942 = (ifelse((P_2613 > 0),(DADT_LargeIntestine_Mucosa_ColonSigmoid_Intracellular/P_2613),0))     # sim_1|Organism|LargeIntestine|Mucosa|ColonSigmoid|Intracellular|Clofazimine|Concentration
P_2946 = (ifelse((P_2616 > 0),(DADT_LargeIntestine_Mucosa_Rectum_Plasma/P_2616),0))     # sim_1|Organism|LargeIntestine|Mucosa|Rectum|Plasma|Clofazimine|Concentration
P_2948 = (ifelse((P_2617 > 0),(DADT_LargeIntestine_Mucosa_Rectum_BloodCells/P_2617),0))     # sim_1|Organism|LargeIntestine|Mucosa|Rectum|BloodCells|Clofazimine|Concentration
P_2950 = (ifelse((P_2618 > 0),(DADT_LargeIntestine_Mucosa_Rectum_Interstitial/P_2618),0))     # sim_1|Organism|LargeIntestine|Mucosa|Rectum|Interstitial|Clofazimine|Concentration
P_2952 = (ifelse((P_2620 > 0),(DADT_LargeIntestine_Mucosa_Rectum_Intracellular/P_2620),0))     # sim_1|Organism|LargeIntestine|Mucosa|Rectum|Intracellular|Clofazimine|Concentration
P_2957 = (ifelse((P_2630 > 0),(DADT_Liver_Periportal_Intracellular/P_2630),0))     # sim_1|Organism|Liver|Periportal|Intracellular|Clofazimine|Concentration
P_2958 = (ifelse((P_2630 > 0),(DADT_Liver_Periportal_Intracellular_Undefined_Liver_Metabolite/P_2630),0))     # sim_1|Organism|Liver|Periportal|Intracellular|Clofazimine-Undefined Liver Metabolite|Concentration
P_2962 = (ifelse((P_2640 > 0),(DADT_Liver_Pericentral_Intracellular/P_2640),0))     # sim_1|Organism|Liver|Pericentral|Intracellular|Clofazimine|Concentration
P_2963 = (ifelse((P_2640 > 0),(DADT_Liver_Pericentral_Intracellular_Undefined_Liver_Metabolite/P_2640),0))     # sim_1|Organism|Liver|Pericentral|Intracellular|Clofazimine-Undefined Liver Metabolite|Concentration
P_3041 = (ifelse(P_1271,(DADT_Lumen_Duodenum/DADT_Lumen_Duodenum_Liquid),(min((P_2797/P_1251),(DADT_Lumen_Duodenum/DADT_Lumen_Duodenum_Liquid)))))     # sim_1|Organism|Lumen|Duodenum|Clofazimine|Effective concentration in lumen
P_3043 = (ifelse(P_1271,(DADT_Lumen_UpperJejunum/DADT_Lumen_UpperJejunum_Liquid),(min((P_2800/P_1251),(DADT_Lumen_UpperJejunum/DADT_Lumen_UpperJejunum_Liquid)))))     # sim_1|Organism|Lumen|UpperJejunum|Clofazimine|Effective concentration in lumen
P_3045 = (ifelse(P_1271,(DADT_Lumen_LowerJejunum/DADT_Lumen_LowerJejunum_Liquid),(min((P_2803/P_1251),(DADT_Lumen_LowerJejunum/DADT_Lumen_LowerJejunum_Liquid)))))     # sim_1|Organism|Lumen|LowerJejunum|Clofazimine|Effective concentration in lumen
P_3047 = (ifelse(P_1271,(DADT_Lumen_UpperIleum/DADT_Lumen_UpperIleum_Liquid),(min((P_2806/P_1251),(DADT_Lumen_UpperIleum/DADT_Lumen_UpperIleum_Liquid)))))     # sim_1|Organism|Lumen|UpperIleum|Clofazimine|Effective concentration in lumen
P_3049 = (ifelse(P_1271,(DADT_Lumen_LowerIleum/DADT_Lumen_LowerIleum_Liquid),(min((P_2809/P_1251),(DADT_Lumen_LowerIleum/DADT_Lumen_LowerIleum_Liquid)))))     # sim_1|Organism|Lumen|LowerIleum|Clofazimine|Effective concentration in lumen
P_3051 = (ifelse(P_1271,(DADT_Lumen_Caecum/DADT_Lumen_Caecum_Liquid),(min((P_2812/P_1251),(DADT_Lumen_Caecum/DADT_Lumen_Caecum_Liquid)))))     # sim_1|Organism|Lumen|Caecum|Clofazimine|Effective concentration in lumen
P_3053 = (ifelse(P_1271,(DADT_Lumen_ColonAscendens/DADT_Lumen_ColonAscendens_Liquid),(min((P_2815/P_1251),(DADT_Lumen_ColonAscendens/DADT_Lumen_ColonAscendens_Liquid)))))     # sim_1|Organism|Lumen|ColonAscendens|Clofazimine|Effective concentration in lumen
P_3055 = (ifelse(P_1271,(DADT_Lumen_ColonTransversum/DADT_Lumen_ColonTransversum_Liquid),(min((P_2818/P_1251),(DADT_Lumen_ColonTransversum/DADT_Lumen_ColonTransversum_Liquid)))))     # sim_1|Organism|Lumen|ColonTransversum|Clofazimine|Effective concentration in lumen
P_3057 = (ifelse(P_1271,(DADT_Lumen_ColonDescendens/DADT_Lumen_ColonDescendens_Liquid),(min((P_2821/P_1251),(DADT_Lumen_ColonDescendens/DADT_Lumen_ColonDescendens_Liquid)))))     # sim_1|Organism|Lumen|ColonDescendens|Clofazimine|Effective concentration in lumen
P_3059 = (ifelse(P_1271,(DADT_Lumen_ColonSigmoid/DADT_Lumen_ColonSigmoid_Liquid),(min((P_2824/P_1251),(DADT_Lumen_ColonSigmoid/DADT_Lumen_ColonSigmoid_Liquid)))))     # sim_1|Organism|Lumen|ColonSigmoid|Clofazimine|Effective concentration in lumen
P_3061 = (ifelse(P_1271,(DADT_Lumen_Rectum/DADT_Lumen_Rectum_Liquid),(min((P_2828/P_1251),(DADT_Lumen_Rectum/DADT_Lumen_Rectum_Liquid)))))     # sim_1|Organism|Lumen|Rectum|Clofazimine|Effective concentration in lumen
P_3066 = (ifelse((P_2831 > 0),(DADT_SmallIntestine_Plasma/P_2831),0))     # sim_1|Organism|SmallIntestine|Plasma|Clofazimine|Concentration
P_3068 = (ifelse((P_2832 > 0),(DADT_SmallIntestine_BloodCells/P_2832),0))     # sim_1|Organism|SmallIntestine|BloodCells|Clofazimine|Concentration
P_3071 = (ifelse((P_2833 > 0),(DADT_SmallIntestine_Interstitial/P_2833),0))     # sim_1|Organism|SmallIntestine|Interstitial|Clofazimine|Concentration
P_3072 = (ifelse((P_2836 > 0),(DADT_SmallIntestine_Intracellular/P_2836),0))     # sim_1|Organism|SmallIntestine|Intracellular|Clofazimine|Concentration
P_3081 = (ifelse((P_2887 > 0),(DADT_LargeIntestine_Plasma/P_2887),0))     # sim_1|Organism|LargeIntestine|Plasma|Clofazimine|Concentration
P_3083 = (ifelse((P_2888 > 0),(DADT_LargeIntestine_BloodCells/P_2888),0))     # sim_1|Organism|LargeIntestine|BloodCells|Clofazimine|Concentration
P_3086 = (ifelse((P_2889 > 0),(DADT_LargeIntestine_Interstitial/P_2889),0))     # sim_1|Organism|LargeIntestine|Interstitial|Clofazimine|Concentration
P_3087 = (ifelse((P_2892 > 0),(DADT_LargeIntestine_Intracellular/P_2892),0))     # sim_1|Organism|LargeIntestine|Intracellular|Clofazimine|Concentration
P_3170 = (P_1449*DADT_Lumen_Stomach_Liquid*P_3040)     # sim_1|Organism|Lumen|Stomach|Liquid transfer rate
P_3171 = (ifelse(P_1271,(DADT_Lumen_Stomach/DADT_Lumen_Stomach_Liquid),(min((P_3039/P_1251),(DADT_Lumen_Stomach/DADT_Lumen_Stomach_Liquid)))))     # sim_1|Organism|Lumen|Stomach|Clofazimine|Effective concentration in lumen
P_3172 = (P_1939*DADT_Lumen_Duodenum_Liquid*P_3042)     # sim_1|Organism|Lumen|Duodenum|Liquid transfer rate
P_3173 = (P_1950*DADT_Lumen_UpperJejunum_Liquid*P_3044)     # sim_1|Organism|Lumen|UpperJejunum|Liquid transfer rate
P_3174 = (P_1961*DADT_Lumen_LowerJejunum_Liquid*P_3046)     # sim_1|Organism|Lumen|LowerJejunum|Liquid transfer rate
P_3175 = (P_1972*DADT_Lumen_UpperIleum_Liquid*P_3048)     # sim_1|Organism|Lumen|UpperIleum|Liquid transfer rate
P_3176 = (P_1983*DADT_Lumen_LowerIleum_Liquid*P_3050)     # sim_1|Organism|Lumen|LowerIleum|Liquid transfer rate
P_3177 = (P_1994*DADT_Lumen_Caecum_Liquid*P_3052)     # sim_1|Organism|Lumen|Caecum|Liquid transfer rate
P_3178 = (P_2005*DADT_Lumen_ColonAscendens_Liquid*P_3054)     # sim_1|Organism|Lumen|ColonAscendens|Liquid transfer rate
P_3179 = (P_2016*DADT_Lumen_ColonTransversum_Liquid*P_3056)     # sim_1|Organism|Lumen|ColonTransversum|Liquid transfer rate
P_3180 = (P_2027*DADT_Lumen_ColonDescendens_Liquid*P_3058)     # sim_1|Organism|Lumen|ColonDescendens|Liquid transfer rate
P_3181 = (P_2038*DADT_Lumen_ColonSigmoid_Liquid*P_3060)     # sim_1|Organism|Lumen|ColonSigmoid|Liquid transfer rate
P_3259 = (ifelse((P_3107 > 0),(DADT_Saliva_Saliva/P_3107),0))     # sim_1|Organism|Saliva|Saliva|Clofazimine|Concentration
P_3260 = (ifelse((P_3107 > 0),(DADT_Saliva_SalivaGland/P_3107),0))     # sim_1|Organism|Saliva|SalivaGland|Clofazimine|Concentration
P_1410 = (ifelse((P_90 > 0),(DADT_Gallbladder/P_90),0))     # sim_1|Organism|Gallbladder|Clofazimine|Concentration
P_1551 = (ifelse((P_458 > 0),(DADT_Lumen_Feces/P_458),0))     # sim_1|Organism|Lumen|Feces|Clofazimine|Concentration
P_1739 = (DADT_Lumen_Duodenum_Oral_mass_absorbed_segment+DADT_Lumen_UpperJejunum_Oral_mass_absorbed_segment+DADT_Lumen_LowerJejunum_Oral_mass_absorbed_segment+DADT_Lumen_UpperIleum_Oral_mass_absorbed_segment+DADT_Lumen_LowerIleum+DADT_Lumen_Caecum_Oral_mass_absorbed_segment+DADT_Lumen_ColonAscendens_Oral_mass_absorbed_segment+DADT_Lumen_ColonTransversum_Oral_mass_absorbed_segment+DADT_Lumen_ColonDescendens_Oral_mass_absorbed_segment+DADT_Lumen_ColonSigmoid_Oral_mass_absorbed_segment+DADT_Lumen_Rectum_Oral_mass_absorbed_segment)     # sim_1|Neighborhoods|Lumen_sto_Lumen_duo|Clofazimine|Oral mass absorbed
CONC_PLASMA = (ifelse((P_1397 > 0),(DADT_VenousBlood_Plasma/P_1397),0))     # sim_1|Organism|VenousBlood|Plasma|Clofazimine|Concentration
P_1863 = (ifelse((P_1398 > 0),(DADT_VenousBlood_BloodCells/P_1398),0))     # sim_1|Organism|VenousBlood|BloodCells|Clofazimine|Concentration
P_1865 = (ifelse((P_1400 > 0),(DADT_ArterialBlood_Plasma/P_1400),0))     # sim_1|Organism|ArterialBlood|Plasma|Clofazimine|Concentration
P_1868 = (ifelse((P_1401 > 0),(DADT_ArterialBlood_BloodCells/P_1401),0))     # sim_1|Organism|ArterialBlood|BloodCells|Clofazimine|Concentration
P_1872 = (ifelse((P_1404 > 0),(DADT_Bone_Plasma/P_1404),0))     # sim_1|Organism|Bone|Plasma|Clofazimine|Concentration
P_1875 = (ifelse((P_1405 > 0),(DADT_Bone_BloodCells/P_1405),0))     # sim_1|Organism|Bone|BloodCells|Clofazimine|Concentration
P_1877 = (ifelse((P_1406 > 0),(DADT_Bone_Interstitial/P_1406),0))     # sim_1|Organism|Bone|Interstitial|Clofazimine|Concentration
P_1882 = (ifelse((P_1413 > 0),(DADT_Brain_Plasma/P_1413),0))     # sim_1|Organism|Brain|Plasma|Clofazimine|Concentration
P_1885 = (ifelse((P_1414 > 0),(DADT_Brain_BloodCells/P_1414),0))     # sim_1|Organism|Brain|BloodCells|Clofazimine|Concentration
P_1887 = (ifelse((P_1415 > 0),(DADT_Brain_Interstitial/P_1415),0))     # sim_1|Organism|Brain|Interstitial|Clofazimine|Concentration
P_1892 = (ifelse((P_1420 > 0),(DADT_Fat_Plasma/P_1420),0))     # sim_1|Organism|Fat|Plasma|Clofazimine|Concentration
P_1895 = (ifelse((P_1421 > 0),(DADT_Fat_BloodCells/P_1421),0))     # sim_1|Organism|Fat|BloodCells|Clofazimine|Concentration
P_1897 = (ifelse((P_1422 > 0),(DADT_Fat_Interstitial/P_1422),0))     # sim_1|Organism|Fat|Interstitial|Clofazimine|Concentration
P_1902 = (ifelse((P_1427 > 0),(DADT_Gonads_Plasma/P_1427),0))     # sim_1|Organism|Gonads|Plasma|Clofazimine|Concentration
P_1905 = (ifelse((P_1428 > 0),(DADT_Gonads_BloodCells/P_1428),0))     # sim_1|Organism|Gonads|BloodCells|Clofazimine|Concentration
P_1907 = (ifelse((P_1429 > 0),(DADT_Gonads_Interstitial/P_1429),0))     # sim_1|Organism|Gonads|Interstitial|Clofazimine|Concentration
P_1912 = (ifelse((P_1434 > 0),(DADT_Heart_Plasma/P_1434),0))     # sim_1|Organism|Heart|Plasma|Clofazimine|Concentration
P_1915 = (ifelse((P_1435 > 0),(DADT_Heart_BloodCells/P_1435),0))     # sim_1|Organism|Heart|BloodCells|Clofazimine|Concentration
P_1917 = (ifelse((P_1436 > 0),(DADT_Heart_Interstitial/P_1436),0))     # sim_1|Organism|Heart|Interstitial|Clofazimine|Concentration
P_1923 = (ifelse((P_1442 > 0),(DADT_Kidney_Plasma/P_1442),0))     # sim_1|Organism|Kidney|Plasma|Clofazimine|Concentration
P_1926 = (ifelse((P_1443 > 0),(DADT_Kidney_BloodCells/P_1443),0))     # sim_1|Organism|Kidney|BloodCells|Clofazimine|Concentration
P_1928 = (ifelse((P_1444 > 0),(DADT_Kidney_Interstitial/P_1444),0))     # sim_1|Organism|Kidney|Interstitial|Clofazimine|Concentration
P_1933 = (ifelse((P_1451 > 0),(DADT_Lumen_Stomach/P_1451),0))     # sim_1|Organism|Lumen|Stomach|Clofazimine|Concentration
P_2062 = (ifelse((P_1554 > 0),(DADT_Stomach_Plasma/P_1554),0))     # sim_1|Organism|Stomach|Plasma|Clofazimine|Concentration
P_2065 = (ifelse((P_1555 > 0),(DADT_Stomach_BloodCells/P_1555),0))     # sim_1|Organism|Stomach|BloodCells|Clofazimine|Concentration
P_2067 = (ifelse((P_1556 > 0),(DADT_Stomach_Interstitial/P_1556),0))     # sim_1|Organism|Stomach|Interstitial|Clofazimine|Concentration
P_2116 = (ifelse((P_1671 > 0),(DADT_Lung_Plasma/P_1671),0))     # sim_1|Organism|Lung|Plasma|Clofazimine|Concentration
P_2119 = (ifelse((P_1672 > 0),(DADT_Lung_BloodCells/P_1672),0))     # sim_1|Organism|Lung|BloodCells|Clofazimine|Concentration
P_2121 = (ifelse((P_1673 > 0),(DADT_Lung_Interstitial/P_1673),0))     # sim_1|Organism|Lung|Interstitial|Clofazimine|Concentration
P_2126 = (ifelse((P_1678 > 0),(DADT_Muscle_Plasma/P_1678),0))     # sim_1|Organism|Muscle|Plasma|Clofazimine|Concentration
P_2129 = (ifelse((P_1679 > 0),(DADT_Muscle_BloodCells/P_1679),0))     # sim_1|Organism|Muscle|BloodCells|Clofazimine|Concentration
P_2131 = (ifelse((P_1680 > 0),(DADT_Muscle_Interstitial/P_1680),0))     # sim_1|Organism|Muscle|Interstitial|Clofazimine|Concentration
P_2136 = (ifelse((P_1685 > 0),(DADT_Pancreas_Plasma/P_1685),0))     # sim_1|Organism|Pancreas|Plasma|Clofazimine|Concentration
P_2139 = (ifelse((P_1686 > 0),(DADT_Pancreas_BloodCells/P_1686),0))     # sim_1|Organism|Pancreas|BloodCells|Clofazimine|Concentration
P_2141 = (ifelse((P_1687 > 0),(DADT_Pancreas_Interstitial/P_1687),0))     # sim_1|Organism|Pancreas|Interstitial|Clofazimine|Concentration
P_2144 = (ifelse((P_1691 > 0),(DADT_PortalVein_Plasma/P_1691),0))     # sim_1|Organism|PortalVein|Plasma|Clofazimine|Concentration
P_2147 = (ifelse((P_1692 > 0),(DADT_PortalVein_BloodCells/P_1692),0))     # sim_1|Organism|PortalVein|BloodCells|Clofazimine|Concentration
P_2151 = (ifelse((P_1695 > 0),(DADT_Skin_Plasma/P_1695),0))     # sim_1|Organism|Skin|Plasma|Clofazimine|Concentration
P_2154 = (ifelse((P_1696 > 0),(DADT_Skin_BloodCells/P_1696),0))     # sim_1|Organism|Skin|BloodCells|Clofazimine|Concentration
P_2156 = (ifelse((P_1697 > 0),(DADT_Skin_Interstitial/P_1697),0))     # sim_1|Organism|Skin|Interstitial|Clofazimine|Concentration
P_2161 = (ifelse((P_1702 > 0),(DADT_Spleen_Plasma/P_1702),0))     # sim_1|Organism|Spleen|Plasma|Clofazimine|Concentration
P_2164 = (ifelse((P_1703 > 0),(DADT_Spleen_BloodCells/P_1703),0))     # sim_1|Organism|Spleen|BloodCells|Clofazimine|Concentration
P_2166 = (ifelse((P_1704 > 0),(DADT_Spleen_Interstitial/P_1704),0))     # sim_1|Organism|Spleen|Interstitial|Clofazimine|Concentration
P_2462 = (ifelse((P_1878 > 0),(DADT_Bone_Intracellular/P_1878),0))		# sim_1|Organism|Brain|Intracellular|Clofazimine|Concentration
P_2464 = (ifelse((P_1888 > 0),(DADT_Brain_Intracellular/P_1888),0))          # sim_1|Organism|Bone|Intracellular|Clofazimine|Concentration
P_2466 = (ifelse((P_1898 > 0),(DADT_Fat_Intracellular/P_1898),0))     # sim_1|Organism|Fat|Intracellular|Clofazimine|Concentration
P_2470 = (ifelse((P_1918 > 0),(DADT_Heart_Intracellular/P_1918),0))     # sim_1|Organism|Heart|Intracellular|Clofazimine|Concentration
P_2473 = (ifelse((P_1929 > 0),(DADT_Kidney_Intracellular/P_1929),0))     # sim_1|Organism|Kidney|Intracellular|Clofazimine|Concentration
P_2474 = (DADT_Lumen_Stomach_Liquid/P_1451)     # sim_1|Organism|Lumen|Stomach|Fraction of geometric volume filled with liquid
P_2486 = (ifelse((P_1940 > 0),(DADT_Lumen_Duodenum/P_1940),0))     # sim_1|Organism|Lumen|Duodenum|Clofazimine|Concentration
P_2491 = (ifelse((P_1951 > 0),(DADT_Lumen_UpperJejunum/P_1951),0))     # sim_1|Organism|Lumen|UpperJejunum|Clofazimine|Concentration
P_2496 = (ifelse((P_1962 > 0),(DADT_Lumen_LowerJejunum/P_1962),0))     # sim_1|Organism|Lumen|LowerJejunum|Clofazimine|Concentration
P_2501 = (ifelse((P_1973 > 0),(DADT_Lumen_UpperIleum/P_1973),0))     # sim_1|Organism|Lumen|UpperIleum|Clofazimine|Concentration
P_2506 = (ifelse((P_1984 > 0),(DADT_Lumen_LowerIleum/P_1984),0))     # sim_1|Organism|Lumen|LowerIleum|Clofazimine|Concentration
P_2511 = (ifelse((P_1995 > 0),(DADT_Lumen_Caecum/P_1995),0))     # sim_1|Organism|Lumen|Caecum|Clofazimine|Concentration
P_2516 = (ifelse((P_2006 > 0),(DADT_Lumen_ColonAscendens/P_2006),0))     # sim_1|Organism|Lumen|ColonAscendens|Clofazimine|Concentration
P_2521 = (ifelse((P_2017 > 0),(DADT_Lumen_ColonTransversum/P_2017),0))     # sim_1|Organism|Lumen|ColonTransversum|Clofazimine|Concentration
P_2526 = (ifelse((P_2028 > 0),(DADT_Lumen_ColonDescendens/P_2028),0))     # sim_1|Organism|Lumen|ColonDescendens|Clofazimine|Concentration
P_2531 = (ifelse((P_2039 > 0),(DADT_Lumen_ColonSigmoid/P_2039),0))     # sim_1|Organism|Lumen|ColonSigmoid|Clofazimine|Concentration
P_2536 = (ifelse((P_2050 > 0),(DADT_Lumen_Rectum/P_2050),0))     # sim_1|Organism|Lumen|Rectum|Clofazimine|Concentration
P_2539 = (ifelse((P_2068 > 0),(DADT_Stomach_Intracellular/P_2068),0))     # sim_1|Organism|Stomach|Intracellular|Clofazimine|Concentration
P_2625 = (ifelse((P_2099 > 0),(DADT_Liver_Periportal_Plasma/P_2099),0))     # sim_1|Organism|Liver|Periportal|Plasma|Clofazimine|Concentration
P_2627 = (ifelse((P_2101 > 0),(DADT_Liver_Periportal_BloodCells/P_2101),0))     # sim_1|Organism|Liver|Periportal|BloodCells|Clofazimine|Concentration
P_2468 = (ifelse((P_1908 > 0),(DADT_Gonads_Intracellular/P_1908),0))     # sim_1|Organism|Gonads|Intracellular|Clofazimine|Concentration
##############################################
  d/dt(DADT_VenousBlood_Plasma)~(0-(P_2642*(1-P_42)*CONC_PLASMA))+(0-(P_1707*P_1817*((P_2759*CONC_PLASMA)-(P_2758*(P_1863/P_3021)))))+(P_1869*(1-P_42)*P_1872)+(P_1880*(1-P_42)*P_1882)+(P_1890*(1-P_42)*P_1892)+(P_1900*(1-P_42)*P_1902)+(P_1910*(1-P_42)*P_1912)+(P_1921*(1-P_42)*P_1923)+(P_2124*(1-P_42)*P_2126)+(P_2149*(1-P_42)*P_2151)+(ifelse(P_899,((P_2096+P_2648)*(1-P_42)*P_2635),0))+(ifelse(P_899,0,((P_2096+P_2648)*(1-P_42)*P_2625)));
  d/dt(DADT_VenousBlood_BloodCells)~(0-(P_2642*P_42*P_1863))+(P_1707*P_1817*((P_2759*CONC_PLASMA)-(P_2758*(P_1863/P_3021))))+(P_1869*P_42*P_1875)+(P_1880*P_42*P_1885)+(P_1890*P_42*P_1895)+(P_1900*P_42*P_1905)+(P_1910*P_42*P_1915)+(P_1921*P_42*P_1926)+(P_2124*P_42*P_2129)+(P_2149*P_42*P_2154)+(ifelse(P_899,((P_2096+P_2648)*P_42*P_2637),0))+(ifelse(P_899,0,((P_2096+P_2648)*P_42*P_2627)));
  d/dt(DADT_ArterialBlood_Plasma)~(0-(P_1708*P_1817*((P_2759*P_1865)-(P_2758*(P_1868/P_3021)))))+(P_2642*(1-P_42)*P_2116)+(0-(P_1869*(1-P_42)*P_1865))+(0-(P_1880*(1-P_42)*P_1865))+(0-(P_1890*(1-P_42)*P_1865))+(0-(P_1900*(1-P_42)*P_1865))+(0-(P_1910*(1-P_42)*P_1865))+(0-(P_1921*(1-P_42)*P_1865))+(0-(P_2081*(1-P_42)*P_1865))+(0-(P_2124*(1-P_42)*P_1865))+(0-(P_2134*(1-P_42)*P_1865))+(0-(P_2149*(1-P_42)*P_1865))+(0-(P_2069*(1-P_42)*P_1865))+(0-(P_2159*(1-P_42)*P_1865))+(0-(P_2060*(1-P_42)*P_1865))+(0-(P_2096*(1-P_42)*P_1865));
  d/dt(DADT_ArterialBlood_BloodCells)~(P_1708*P_1817*((P_2759*P_1865)-(P_2758*(P_1868/P_3021))))+(P_2642*P_42*P_2119)+(0-(P_1869*P_42*P_1868))+(0-(P_1880*P_42*P_1868))+(0-(P_1890*P_42*P_1868))+(0-(P_1900*P_42*P_1868))+(0-(P_1910*P_42*P_1868))+(0-(P_1921*P_42*P_1868))+(0-(P_2081*P_42*P_1868))+(0-(P_2124*P_42*P_1868))+(0-(P_2134*P_42*P_1868))+(0-(P_2149*P_42*P_1868))+(0-(P_2069*P_42*P_1868))+(0-(P_2159*P_42*P_1868))+(0-(P_2060*P_42*P_1868))+(0-(P_2096*P_42*P_1868));
  d/dt(DADT_Bone_Plasma)~(0-(P_1710*P_1817*((P_2759*P_1872)-(P_2758*(P_1875/P_3021)))))+(0-(P_1817*P_1122*P_1711*(P_1872-(P_1877/P_2168))))+(0-(P_1869*(1-P_42)*P_1872))+(P_1869*(1-P_42)*P_1865);
  d/dt(DADT_Bone_BloodCells)~(0-(P_1869*P_42*P_1875))+(P_1710*P_1817*((P_2759*P_1872)-(P_2758*(P_1875/P_3021))))+(P_1869*P_42*P_1868);
  d/dt(DADT_Bone_Interstitial)~(0-((P_2655*P_2975*P_1877)-(P_3321*P_2976*P_2462)))+(P_1817*P_1122*P_1711*(P_1872-(P_1877/P_2168)));
  d/dt(DADT_Bone_Intracellular)~((P_2655*P_2975*P_1877)-(P_3321*P_2976*P_2462));
  d/dt(DADT_Gallbladder)~(0-(ifelse(P_89,(0.693147180559945*DADT_Gallbladder*(P_92/P_91)),0)));
  d/dt(DADT_Brain_Plasma)~(0-(P_1713*P_1817*((P_2759*P_1882)-(P_2758*(P_1885/P_3021)))))+(0-(P_1817*P_2659*P_1714*(P_1882-(P_1887/P_2169))))+(0-(P_1880*(1-P_42)*P_1882))+(P_1880*(1-P_42)*P_1865);
  d/dt(DADT_Brain_BloodCells)~(0-(P_1880*P_42*P_1885))+(P_1713*P_1817*((P_2759*P_1882)-(P_2758*(P_1885/P_3021))))+(P_1880*P_42*P_1868);
  d/dt(DADT_Brain_Interstitial)~(0-((P_2658*P_2977*P_1887)-(P_3322*P_2978*P_2464)))+(P_1817*P_2659*P_1714*(P_1882-(P_1887/P_2169)));
  d/dt(DADT_Brain_Intracellular)~((P_2658*P_2977*P_1887)-(P_3322*P_2978*P_2464));
  d/dt(DADT_Fat_Plasma)~(0-(P_1716*P_1817*((P_2759*P_1892)-(P_2758*(P_1895/P_3021)))))+(0-(P_1817*P_1127*P_1717*(P_1892-(P_1897/P_2170))))+(0-(P_1890*(1-P_42)*P_1892))+(P_1890*(1-P_42)*P_1865);
  d/dt(DADT_Fat_BloodCells)~(0-(P_1890*P_42*P_1895))+(P_1716*P_1817*((P_2759*P_1892)-(P_2758*(P_1895/P_3021))))+(P_1890*P_42*P_1868);
  d/dt(DADT_Fat_Interstitial)~(0-((P_2662*P_2979*P_1897)-(P_3323*P_2980*P_2466)))+(P_1817*P_1127*P_1717*(P_1892-(P_1897/P_2170)));
  d/dt(DADT_Fat_Intracellular)~((P_2662*P_2979*P_1897)-(P_3323*P_2980*P_2466));
  d/dt(DADT_Gonads_Plasma)~(0-(P_1719*P_1817*((P_2759*P_1902)-(P_2758*(P_1905/P_3021)))))+(0-(P_1817*P_1130*P_1720*(P_1902-(P_1907/P_2171))))+(0-(P_1900*(1-P_42)*P_1902))+(P_1900*(1-P_42)*P_1865);
  d/dt(DADT_Gonads_BloodCells)~(0-(P_1900*P_42*P_1905))+(P_1719*P_1817*((P_2759*P_1902)-(P_2758*(P_1905/P_3021))))+(P_1900*P_42*P_1868);
  d/dt(DADT_Gonads_Interstitial)~(0-((P_2665*P_2981*P_1907)-(P_3324*P_2982*P_2468)))+(P_1817*P_1130*P_1720*(P_1902-(P_1907/P_2171)));
  d/dt(DADT_Gonads_Intracellular)~((P_2665*P_2981*P_1907)-(P_3324*P_2982*P_2468));
  d/dt(DADT_Heart_Plasma)~(0-(P_1722*P_1817*((P_2759*P_1912)-(P_2758*(P_1915/P_3021)))))+(0-(P_1817*P_1133*P_1723*(P_1912-(P_1917/P_2172))))+(0-(P_1910*(1-P_42)*P_1912))+(P_1910*(1-P_42)*P_1865);
  d/dt(DADT_Heart_BloodCells)~(0-(P_1910*P_42*P_1915))+(P_1722*P_1817*((P_2759*P_1912)-(P_2758*(P_1915/P_3021))))+(P_1910*P_42*P_1868);
  d/dt(DADT_Heart_Interstitial)~(0-((P_2668*P_2983*P_1917)-(P_3325*P_2984*P_2470)))+(P_1817*P_1133*P_1723*(P_1912-(P_1917/P_2172)));
  d/dt(DADT_Heart_Intracellular)~((P_2668*P_2983*P_1917)-(P_3325*P_2984*P_2470));
  d/dt(DADT_Kidney_Plasma)~(0-(P_1725*P_1817*((P_2759*P_1923)-(P_2758*(P_1926/P_3021)))))+(0-(P_1817*P_1136*P_1726*(P_1923-(P_1928/P_2173))))+(0-(P_1921*(1-P_42)*P_1923))+(P_1921*(1-P_42)*P_1865);
  d/dt(DADT_Kidney_BloodCells)~(0-(P_1921*P_42*P_1926))+(P_1725*P_1817*((P_2759*P_1923)-(P_2758*(P_1926/P_3021))))+(P_1921*P_42*P_1868);
  d/dt(DADT_Kidney_Interstitial)~(0-((P_2671*P_2985*P_1928)-(P_3326*P_2986*P_2473)))+(P_1817*P_1136*P_1726*(P_1923-(P_1928/P_2173)));
  d/dt(DADT_Kidney_Intracellular)~((P_2671*P_2985*P_1928)-(P_3326*P_2986*P_2473));
  d/dt(DADT_Lumen_Stomach_Liquid)~(ifelse(P_275,(0+((P_1930*P_2793)-P_3170)),0));
  d/dt(DADT_Lumen_Stomach)~(0-(ifelse((P_275&&P_1249),(P_1449*DADT_Lumen_Stomach*P_3040),0)));
  d/dt(DADT_Lumen_Duodenum_Liquid)~(ifelse(P_275,(P_3170+((P_2484*P_3040)-(P_3172+(P_2795*DADT_Lumen_Duodenum_Liquid)))),0));
  d/dt(DADT_Lumen_Duodenum)~(ifelse((P_275&&P_1249),(P_1449*DADT_Lumen_Stomach*P_3040),0))+(0-(ifelse((P_275&&P_1249),(P_1939*DADT_Lumen_Duodenum*P_3042),0)))+(ifelse(P_89,(0.693147180559945*DADT_Gallbladder*(P_92/P_91)),0))+(0-P_3236)+(0-P_3397);
  d/dt(DADT_Lumen_Duodenum_Oral_mass_absorbed_segment)~(P_3236+(P_3397-(P_1212+P_1213)));
  d/dt(DADT_Lumen_UpperJejunum_Liquid)~(ifelse(P_275,(P_3172+((P_2489*P_3042)-(P_3173+(P_2798*DADT_Lumen_UpperJejunum_Liquid)))),0));
  d/dt(DADT_Lumen_UpperJejunum)~(0-P_3187)+(0-P_3387)+(ifelse((P_275&&P_1249),(P_1939*DADT_Lumen_Duodenum*P_3042),0))+(0-(ifelse((P_275&&P_1249),(P_1950*DADT_Lumen_UpperJejunum*P_3044),0)));
  d/dt(DADT_Lumen_UpperJejunum_Oral_mass_absorbed_segment)~(P_3187+(P_3387-(P_1137+P_1138)));
  d/dt(DADT_Lumen_LowerJejunum_Liquid)~(ifelse(P_275,(P_3173+((P_2494*P_3044)-(P_3174+(P_2801*DADT_Lumen_LowerJejunum_Liquid)))),0));
  d/dt(DADT_Lumen_LowerJejunum)~(0-P_3188)+(0-P_3389)+(ifelse((P_275&&P_1249),(P_1950*DADT_Lumen_UpperJejunum*P_3044),0))+(0-(ifelse((P_275&&P_1249),(P_1961*DADT_Lumen_LowerJejunum*P_3046),0)));
  d/dt(DADT_Lumen_LowerJejunum_Oral_mass_absorbed_segment)~(P_3188+(P_3389-(P_1139+P_1140)));
  d/dt(DADT_Lumen_UpperIleum_Liquid)~(ifelse(P_275,(P_3174+((P_2499*P_3046)-(P_3175+(P_2804*DADT_Lumen_UpperIleum_Liquid)))),0));
  d/dt(DADT_Lumen_UpperIleum)~(ifelse((P_275&&P_1249),(P_1961*DADT_Lumen_LowerJejunum*P_3046),0))+(0-(ifelse((P_275&&P_1249),(P_1972*DADT_Lumen_UpperIleum*P_3048),0)))+(0-P_3189)+(0-P_3391);
  d/dt(DADT_Lumen_UpperIleum_Oral_mass_absorbed_segment)~(P_3189+(P_3391-(P_1144+P_1145)));
  d/dt(DADT_Lumen_LowerIleum_Liquid)~(ifelse(P_275,(P_3175+((P_2504*P_3048)-(P_3176+(P_2807*DADT_Lumen_LowerIleum_Liquid)))),0));
  d/dt(DADT_Lumen_LowerIleum)~(ifelse((P_275&&P_1249),(P_1972*DADT_Lumen_UpperIleum*P_3048),0))+(0-(ifelse((P_275&&P_1249),(P_1983*DADT_Lumen_LowerIleum*P_3050),0)))+(0-P_3198)+(0-P_3393);
  d/dt(DADT_Lumen_LowerIleum)~(P_3198+(P_3393-(P_1149+P_1150)));
  d/dt(DADT_Lumen_Caecum_Liquid)~(ifelse(P_275,(P_3176+((P_2509*P_3050)-(P_3177+(P_2810*DADT_Lumen_Caecum_Liquid)))),0));
  d/dt(DADT_Lumen_Caecum)~(ifelse((P_275&&P_1249),(P_1983*DADT_Lumen_LowerIleum*P_3050),0))+(0-(ifelse((P_275&&P_1249),(P_1994*DADT_Lumen_Caecum*P_3052),0)))+(0-P_3399);
  d/dt(DADT_Lumen_Caecum_Oral_mass_absorbed_segment)~(P_1215+(P_3399-(P_1214+P_1216)));
  d/dt(DADT_Lumen_ColonAscendens_Liquid)~(ifelse(P_275,(P_3177+((P_2514*P_3052)-(P_3178+(P_2813*DADT_Lumen_ColonAscendens_Liquid)))),0));
  d/dt(DADT_Lumen_ColonAscendens)~(ifelse((P_275&&P_1249),(P_1994*DADT_Lumen_Caecum*P_3052),0))+(0-(ifelse((P_275&&P_1249),(P_2005*DADT_Lumen_ColonAscendens*P_3054),0)))+(0-P_3401);
  d/dt(DADT_Lumen_ColonAscendens_Oral_mass_absorbed_segment)~(P_1218+(P_3401-(P_1217+P_1219)));
  d/dt(DADT_Lumen_ColonTransversum_Liquid)~(ifelse(P_275,(P_3178+((P_2519*P_3054)-(P_3179+(P_2816*DADT_Lumen_ColonTransversum_Liquid)))),0));
  d/dt(DADT_Lumen_ColonTransversum)~(ifelse((P_275&&P_1249),(P_2005*DADT_Lumen_ColonAscendens*P_3054),0))+(0-(ifelse((P_275&&P_1249),(P_2016*DADT_Lumen_ColonTransversum*P_3056),0)))+(0-P_3403);
  d/dt(DADT_Lumen_ColonTransversum_Oral_mass_absorbed_segment)~(P_1221+(P_3403-(P_1220+P_1222)));
  d/dt(DADT_Lumen_ColonDescendens_Liquid)~(ifelse(P_275,(P_3179+((P_2524*P_3056)-(P_3180+(P_2819*DADT_Lumen_ColonDescendens_Liquid)))),0));
  d/dt(DADT_Lumen_ColonDescendens)~(ifelse((P_275&&P_1249),(P_2016*DADT_Lumen_ColonTransversum*P_3056),0))+(0-(ifelse((P_275&&P_1249),(P_2027*DADT_Lumen_ColonDescendens*P_3058),0)))+(0-P_3405);
  d/dt(DADT_Lumen_ColonDescendens_Oral_mass_absorbed_segment)~(P_1224+(P_3405-(P_1223+P_1225)));
  d/dt(DADT_Lumen_ColonSigmoid_Liquid)~(ifelse(P_275,(P_3180+((P_2529*P_3058)-(P_3181+(P_2822*DADT_Lumen_ColonSigmoid_Liquid)))),0));
  d/dt(DADT_Lumen_ColonSigmoid)~(ifelse((P_275&&P_1249),(P_2027*DADT_Lumen_ColonDescendens*P_3058),0))+(0-(ifelse((P_275&&P_1249),(P_2038*DADT_Lumen_ColonSigmoid*P_3060),0)))+(0-P_3407);
  d/dt(DADT_Lumen_ColonSigmoid_Oral_mass_absorbed_segment)~(P_1227+(P_3407-(P_1226+P_1228)));
  d/dt(DADT_Lumen_Rectum_Liquid)~(ifelse(P_275,(P_3181+((P_2534*P_3060)-P_2827)),0));
  d/dt(DADT_Lumen_Rectum)~(ifelse((P_275&&P_1249),(P_2038*DADT_Lumen_ColonSigmoid*P_3060),0))+(0-(ifelse(P_275,(P_2049*DADT_Lumen_Rectum),0)))+(0-P_3395);
  d/dt(DADT_Lumen_Rectum_Oral_mass_absorbed_segment)~(P_1170+(P_3395-(P_1169+P_1171)));
  d/dt(DADT_Lumen_Feces_Liquid)~(ifelse(P_275,P_2827,0));
  d/dt(DADT_Lumen_Feces)~(ifelse(P_275,(P_2049*DADT_Lumen_Rectum),0));
  d/dt(DADT_Stomach_Plasma)~(0-(P_2060*(1-P_42)*P_2062))+(0-(P_1741*P_1817*((P_2759*P_2062)-(P_2758*(P_2065/P_3021)))))+(0-(P_1817*P_1143*P_1742*(P_2062-(P_2067/P_2206))))+(P_2060*(1-P_42)*P_1865);
  d/dt(DADT_Stomach_BloodCells)~(0-(P_2060*P_42*P_2065))+(P_1741*P_1817*((P_2759*P_2062)-(P_2758*(P_2065/P_3021))))+(P_2060*P_42*P_1868);
  d/dt(DADT_Stomach_Interstitial)~(0-((P_2678*P_2987*P_2067)-(P_3329*P_2988*P_2539)))+(P_1817*P_1143*P_1742*(P_2062-(P_2067/P_2206)));
  d/dt(DADT_Stomach_Intracellular)~((P_2678*P_2987*P_2067)-(P_3329*P_2988*P_2539));
  d/dt(DADT_SmallIntestine_Plasma)~(0-((1-P_498)*P_2069*(1-P_42)*P_3066))+(0-(P_2990*P_1817*((P_2759*P_3066)-(P_2758*(P_3068/P_3021)))))+(0-(P_1817*P_1148*P_2991*(P_3066-(P_3071/P_2223))))+(0-P_3190)+(0-P_3192)+(0-P_3194)+(0-P_3196)+(0-P_3199)+(P_2069*(1-P_42)*P_1865);
  d/dt(DADT_SmallIntestine_BloodCells)~(0-((1-P_498)*P_2069*P_42*P_3068))+(P_2990*P_1817*((P_2759*P_3066)-(P_2758*(P_3068/P_3021))))+(0-P_3191)+(0-P_3193)+(0-P_3195)+(0-P_3197)+(0-P_3200)+(P_2069*P_42*P_1868);
  d/dt(DADT_SmallIntestine_Interstitial)~(0-((P_2683*P_3114*P_3071)-(P_3331*P_3115*P_3072)))+(P_1817*P_1148*P_2991*(P_3066-(P_3071/P_2223)));
  d/dt(DADT_SmallIntestine_Intracellular)~((P_2683*P_3114*P_3071)-(P_3331*P_3115*P_3072));
  d/dt(DADT_SmallIntestine_Mucosa_Duodenum_Plasma)~P_3190+(0-(P_2713*P_1817*((P_2759*P_2840)-(P_2758*(P_2842/P_3021)))))+(0-(P_1817*P_1181*P_2714*(P_2840-(P_2844/P_2271))))+P_3236+(0-P_3144);
  d/dt(DADT_SmallIntestine_Mucosa_Duodenum_BloodCells)~P_3191+(P_2713*P_1817*((P_2759*P_2840)-(P_2758*(P_2842/P_3021))))+(0-P_3145);
  d/dt(DADT_SmallIntestine_Mucosa_Duodenum_Interstitial)~(0-((P_2712*P_3214*P_2844)-(P_3342*P_3215*P_2846)))+(P_1817*P_1181*P_2714*(P_2840-(P_2844/P_2271)));
  d/dt(DADT_SmallIntestine_Mucosa_Duodenum_Intracellular)~((P_2712*P_3214*P_2844)-(P_3342*P_3215*P_2846))+P_3397;
  d/dt(DADT_SmallIntestine_Mucosa_UpperJejunum_Plasma)~P_3187+(0-P_3108)+P_3192+(0-(P_2716*P_1817*((P_2759*P_2850)-(P_2758*(P_2852/P_3021)))))+(0-(P_1817*P_1184*P_2717*(P_2850-(P_2854/P_2272))));
  d/dt(DADT_SmallIntestine_Mucosa_UpperJejunum_BloodCells)~(0-P_3109)+P_3193+(P_2716*P_1817*((P_2759*P_2850)-(P_2758*(P_2852/P_3021))));
  d/dt(DADT_SmallIntestine_Mucosa_UpperJejunum_Interstitial)~(0-((P_2715*P_3216*P_2854)-(P_3343*P_3217*P_2856)))+(P_1817*P_1184*P_2717*(P_2850-(P_2854/P_2272)));
  d/dt(DADT_SmallIntestine_Mucosa_UpperJejunum_Intracellular)~P_3387+((P_2715*P_3216*P_2854)-(P_3343*P_3217*P_2856));
  d/dt(DADT_SmallIntestine_Mucosa_LowerJejunum_Plasma)~P_3188+(0-P_3110)+P_3194+(0-(P_2719*P_1817*((P_2759*P_2860)-(P_2758*(P_2862/P_3021)))))+(0-(P_1817*P_1187*P_2720*(P_2860-(P_2864/P_2273))));
  d/dt(DADT_SmallIntestine_Mucosa_LowerJejunum_BloodCells)~(0-P_3111)+P_3195+(P_2719*P_1817*((P_2759*P_2860)-(P_2758*(P_2862/P_3021))));
  d/dt(DADT_SmallIntestine_Mucosa_LowerJejunum_Interstitial)~(0-((P_2718*P_3218*P_2864)-(P_3344*P_3219*P_2866)))+(P_1817*P_1187*P_2720*(P_2860-(P_2864/P_2273)));
  d/dt(DADT_SmallIntestine_Mucosa_LowerJejunum_Intracellular)~P_3389+((P_2718*P_3218*P_2864)-(P_3344*P_3219*P_2866));
  d/dt(DADT_SmallIntestine_Mucosa_UpperIleum_Plasma)~P_3189+(0-P_3112)+P_3196+(0-(P_2722*P_1817*((P_2759*P_2870)-(P_2758*(P_2872/P_3021)))))+(0-(P_1817*P_1190*P_2723*(P_2870-(P_2874/P_2274))));
  d/dt(DADT_SmallIntestine_Mucosa_UpperIleum_BloodCells)~(0-P_3113)+P_3197+(P_2722*P_1817*((P_2759*P_2870)-(P_2758*(P_2872/P_3021))));
  d/dt(DADT_SmallIntestine_Mucosa_UpperIleum_Interstitial)~(0-((P_2721*P_3220*P_2874)-(P_3345*P_3221*P_2876)))+(P_1817*P_1190*P_2723*(P_2870-(P_2874/P_2274)));
  d/dt(DADT_SmallIntestine_Mucosa_UpperIleum_Intracellular)~P_3391+((P_2721*P_3220*P_2874)-(P_3345*P_3221*P_2876));
  d/dt(DADT_SmallIntestine_Mucosa_LowerIleum_Plasma)~P_3198+P_3199+(0-P_3116)+(0-(P_2725*P_1817*((P_2759*P_2880)-(P_2758*(P_2882/P_3021)))))+(0-(P_1817*P_1193*P_2726*(P_2880-(P_2884/P_2275))));
  d/dt(DADT_SmallIntestine_Mucosa_LowerIleum_BloodCells)~P_3200+(0-P_3117)+(P_2725*P_1817*((P_2759*P_2880)-(P_2758*(P_2882/P_3021))));
  d/dt(DADT_SmallIntestine_Mucosa_LowerIleum_Interstitial)~(0-((P_2724*P_3222*P_2884)-(P_3346*P_3223*P_2886)))+(P_1817*P_1193*P_2726*(P_2880-(P_2884/P_2275)));
  d/dt(DADT_SmallIntestine_Mucosa_LowerIleum_Intracellular)~P_3393+((P_2724*P_3222*P_2884)-(P_3346*P_3223*P_2886));
  d/dt(DADT_LargeIntestine_Plasma)~(0-(P_2993*P_1817*((P_2759*P_3081)-(P_2758*(P_3083/P_3021)))))+(0-(P_1817*P_1153*P_2994*(P_3081-(P_3086/P_2240))))+(0-((1-P_688)*P_2081*(1-P_42)*P_3081))+(0-P_3201)+(0-P_3203)+(0-P_3205)+(0-P_3207)+(0-P_3209)+(0-P_3211)+(P_2081*(1-P_42)*P_1865);
  d/dt(DADT_LargeIntestine_BloodCells)~(0-((1-P_688)*P_2081*P_42*P_3083))+(P_2993*P_1817*((P_2759*P_3081)-(P_2758*(P_3083/P_3021))))+(0-P_3202)+(0-P_3204)+(0-P_3206)+(0-P_3208)+(0-P_3210)+(0-P_3212)+(P_2081*P_42*P_1868);
  d/dt(DADT_LargeIntestine_Interstitial)~(0-((P_2688*P_3118*P_3086)-(P_3333*P_3119*P_3087)))+(P_1817*P_1153*P_2994*(P_3081-(P_3086/P_2240)));
  d/dt(DADT_LargeIntestine_Intracellular)~((P_2688*P_3118*P_3086)-(P_3333*P_3119*P_3087));
  d/dt(DADT_LargeIntestine_Mucosa_Caecum_Plasma)~P_3201+(0-(P_2728*P_1817*((P_2759*P_2896)-(P_2758*(P_2898/P_3021)))))+(0-(P_1817*P_1196*P_2729*(P_2896-(P_2900/P_2276))))+(0-P_3146);
  d/dt(DADT_LargeIntestine_Mucosa_Caecum_BloodCells)~P_3202+(P_2728*P_1817*((P_2759*P_2896)-(P_2758*(P_2898/P_3021))))+(0-P_3147);
  d/dt(DADT_LargeIntestine_Mucosa_Caecum_Interstitial)~(0-((P_2727*P_3224*P_2900)-(P_3347*P_3225*P_2902)))+(P_1817*P_1196*P_2729*(P_2896-(P_2900/P_2276)));
  d/dt(DADT_LargeIntestine_Mucosa_Caecum_Intracellular)~((P_2727*P_3224*P_2900)-(P_3347*P_3225*P_2902))+P_3399;
  d/dt(DADT_LargeIntestine_Mucosa_ColonAscendens_Plasma)~P_3203+(0-(P_2731*P_1817*((P_2759*P_2906)-(P_2758*(P_2908/P_3021)))))+(0-(P_1817*P_1199*P_2732*(P_2906-(P_2910/P_2277))))+(0-P_3148);
  d/dt(DADT_LargeIntestine_Mucosa_ColonAscendens_BloodCells)~P_3204+(P_2731*P_1817*((P_2759*P_2906)-(P_2758*(P_2908/P_3021))))+(0-P_3149);
  d/dt(DADT_LargeIntestine_Mucosa_ColonAscendens_Interstitial)~(0-((P_2730*P_3226*P_2910)-(P_3348*P_3227*P_2912)))+(P_1817*P_1199*P_2732*(P_2906-(P_2910/P_2277)));
  d/dt(DADT_LargeIntestine_Mucosa_ColonAscendens_Intracellular)~((P_2730*P_3226*P_2910)-(P_3348*P_3227*P_2912))+P_3401;
  d/dt(DADT_LargeIntestine_Mucosa_ColonTransversum_Plasma)~P_3205+(0-(P_2734*P_1817*((P_2759*P_2916)-(P_2758*(P_2918/P_3021)))))+(0-(P_1817*P_1202*P_2735*(P_2916-(P_2920/P_2278))))+(0-P_3150);
  d/dt(DADT_LargeIntestine_Mucosa_ColonTransversum_BloodCells)~P_3206+(P_2734*P_1817*((P_2759*P_2916)-(P_2758*(P_2918/P_3021))))+(0-P_3151);
  d/dt(DADT_LargeIntestine_Mucosa_ColonTransversum_Interstitial)~(0-((P_2733*P_3228*P_2920)-(P_3349*P_3229*P_2922)))+(P_1817*P_1202*P_2735*(P_2916-(P_2920/P_2278)));
  d/dt(DADT_LargeIntestine_Mucosa_ColonTransversum_Intracellular)~((P_2733*P_3228*P_2920)-(P_3349*P_3229*P_2922))+P_3403;
  d/dt(DADT_LargeIntestine_Mucosa_ColonDescendens_Plasma)~P_3207+(0-(P_2737*P_1817*((P_2759*P_2926)-(P_2758*(P_2928/P_3021)))))+(0-(P_1817*P_1205*P_2738*(P_2926-(P_2930/P_2279))))+(0-P_3152);
  d/dt(DADT_LargeIntestine_Mucosa_ColonDescendens_BloodCells)~P_3208+(P_2737*P_1817*((P_2759*P_2926)-(P_2758*(P_2928/P_3021))))+(0-P_3153);
  d/dt(DADT_LargeIntestine_Mucosa_ColonDescendens_Interstitial)~(0-((P_2736*P_3230*P_2930)-(P_3350*P_3231*P_2932)))+(P_1817*P_1205*P_2738*(P_2926-(P_2930/P_2279)));
  d/dt(DADT_LargeIntestine_Mucosa_ColonDescendens_Intracellular)~((P_2736*P_3230*P_2930)-(P_3350*P_3231*P_2932))+P_3405;
  d/dt(DADT_LargeIntestine_Mucosa_ColonSigmoid_Plasma)~P_3209+(0-(P_2740*P_1817*((P_2759*P_2936)-(P_2758*(P_2938/P_3021)))))+(0-(P_1817*P_1208*P_2741*(P_2936-(P_2940/P_2280))))+(0-P_3154);
  d/dt(DADT_LargeIntestine_Mucosa_ColonSigmoid_BloodCells)~P_3210+(P_2740*P_1817*((P_2759*P_2936)-(P_2758*(P_2938/P_3021))))+(0-P_3155);
  d/dt(DADT_LargeIntestine_Mucosa_ColonSigmoid_Interstitial)~(0-((P_2739*P_3232*P_2940)-(P_3351*P_3233*P_2942)))+(P_1817*P_1208*P_2741*(P_2936-(P_2940/P_2280)));
  d/dt(DADT_LargeIntestine_Mucosa_ColonSigmoid_Intracellular)~((P_2739*P_3232*P_2940)-(P_3351*P_3233*P_2942))+P_3407;
  d/dt(DADT_LargeIntestine_Mucosa_Rectum_Plasma)~P_3211+(0-P_3120)+(0-(P_2743*P_1817*((P_2759*P_2946)-(P_2758*(P_2948/P_3021)))))+(0-(P_1817*P_1211*P_2744*(P_2946-(P_2950/P_2281))));
  d/dt(DADT_LargeIntestine_Mucosa_Rectum_BloodCells)~P_3212+(0-P_3121)+(P_2743*P_1817*((P_2759*P_2946)-(P_2758*(P_2948/P_3021))));
  d/dt(DADT_LargeIntestine_Mucosa_Rectum_Interstitial)~(0-((P_2742*P_3234*P_2950)-(P_3352*P_3235*P_2952)))+(P_1817*P_1211*P_2744*(P_2946-(P_2950/P_2281)));
  d/dt(DADT_LargeIntestine_Mucosa_Rectum_Intracellular)~P_3395+((P_2742*P_3234*P_2950)-(P_3352*P_3235*P_2952));
  d/dt(DADT_Liver_Periportal_Plasma)~(0-(P_2242*P_1817*((P_2759*P_2625)-(P_2758*(P_2627/P_3021)))))+(0-(P_1817*P_1156*P_2244*(P_2625-(P_2629/P_2243))))+(0-(ifelse(P_899,((P_2096+P_2648)*(1-P_42)*P_2625),0)))+(P_2096*(1-P_42)*P_1865)+(P_2648*(1-P_42)*P_2144)+(0-(ifelse(P_899,0,((P_2096+P_2648)*(1-P_42)*P_2625))));
  d/dt(DADT_Liver_Periportal_BloodCells)~(P_2242*P_1817*((P_2759*P_2625)-(P_2758*(P_2627/P_3021))))+(0-(ifelse(P_899,((P_2096+P_2648)*P_42*P_2627),0)))+(P_2096*P_42*P_1868)+(P_2648*P_42*P_2147)+(0-(ifelse(P_899,0,((P_2096+P_2648)*P_42*P_2627))));
  d/dt(DADT_Liver_Periportal_Interstitial)~(0-((P_2691*P_2995*P_2629)-(P_3334*P_2996*P_2957)))+(P_1817*P_1156*P_2244*(P_2625-(P_2629/P_2243)));
  d/dt(DADT_Liver_Periportal_Intracellular)~(0-(P_3096*P_2458*DADT_Liver_Periportal_Intracellular*P_3334))+((P_2691*P_2995*P_2629)-(P_3334*P_2996*P_2957));
  d/dt(DADT_Liver_Periportal_Intracellular_Undefined_Liver_Metabolite)~(P_3096*P_2458*DADT_Liver_Periportal_Intracellular*P_3334);
  d/dt(DADT_Liver_Pericentral_Plasma)~(0-(P_2246*P_1817*((P_2759*P_2635)-(P_2758*(P_2637/P_3021)))))+(0-(P_1817*P_1159*P_2248*(P_2635-(P_2639/P_2247))))+(ifelse(P_899,((P_2096+P_2648)*(1-P_42)*P_2625),0))+(0-(ifelse(P_899,((P_2096+P_2648)*(1-P_42)*P_2635),0)));
  d/dt(DADT_Liver_Pericentral_BloodCells)~(P_2246*P_1817*((P_2759*P_2635)-(P_2758*(P_2637/P_3021))))+(ifelse(P_899,((P_2096+P_2648)*P_42*P_2627),0))+(0-(ifelse(P_899,((P_2096+P_2648)*P_42*P_2637),0)));
  d/dt(DADT_Liver_Pericentral_Interstitial)~(0-((P_2694*P_2997*P_2639)-(P_3335*P_2998*P_2962)))+(P_1817*P_1159*P_2248*(P_2635-(P_2639/P_2247)));
  d/dt(DADT_Liver_Pericentral_Intracellular)~(0-(P_3099*P_2458*DADT_Liver_Pericentral_Intracellular*P_3334))+((P_2694*P_2997*P_2639)-(P_3335*P_2998*P_2962));
  d/dt(DADT_Liver_Pericentral_Intracellular_Undefined_Liver_Metabolite)~(P_3099*P_2458*DADT_Liver_Pericentral_Intracellular*P_3334);
  d/dt(DADT_Lung_Plasma)~(P_2642*(1-P_42)*CONC_PLASMA)+(0-(P_2642*(1-P_42)*P_2116))+(0-(P_1759*P_1817*((P_2759*P_2116)-(P_2758*(P_2119/P_3021)))))+(0-(P_1817*P_1162*P_1760*(P_2116-(P_2121/P_2249))));
  d/dt(DADT_Lung_BloodCells)~(P_2642*P_42*P_1863)+(0-(P_2642*P_42*P_2119))+(P_1759*P_1817*((P_2759*P_2116)-(P_2758*(P_2119/P_3021))));
  d/dt(DADT_Lung_Interstitial)~(0-((P_2697*P_2999*P_2121)-(P_3336*P_3000*P_2643)))+(P_1817*P_1162*P_1760*(P_2116-(P_2121/P_2249)));
  d/dt(DADT_Lung_Intracellular)~((P_2697*P_2999*P_2121)-(P_3336*P_3000*P_2643));
  d/dt(DADT_Muscle_Plasma)~(0-(P_1762*P_1817*((P_2759*P_2126)-(P_2758*(P_2129/P_3021)))))+(0-(P_1817*P_1165*P_1763*(P_2126-(P_2131/P_2250))))+(0-(P_2124*(1-P_42)*P_2126))+(P_2124*(1-P_42)*P_1865);
  d/dt(DADT_Muscle_BloodCells)~(0-(P_2124*P_42*P_2129))+(P_1762*P_1817*((P_2759*P_2126)-(P_2758*(P_2129/P_3021))))+(P_2124*P_42*P_1868);
  d/dt(DADT_Muscle_Interstitial)~(0-((P_2700*P_3001*P_2131)-(P_3337*P_3002*P_2645)))+(P_1817*P_1165*P_1763*(P_2126-(P_2131/P_2250)));
  d/dt(DADT_Muscle_Intracellular)~((P_2700*P_3001*P_2131)-(P_3337*P_3002*P_2645));
  d/dt(DADT_Pancreas_Plasma)~(0-(P_1765*P_1817*((P_2759*P_2136)-(P_2758*(P_2139/P_3021)))))+(0-(P_1817*P_1168*P_1766*(P_2136-(P_2141/P_2251))))+(0-(P_2134*(1-P_42)*P_2136))+(P_2134*(1-P_42)*P_1865);
  d/dt(DADT_Pancreas_BloodCells)~(0-(P_2134*P_42*P_2139))+(P_1765*P_1817*((P_2759*P_2136)-(P_2758*(P_2139/P_3021))))+(P_2134*P_42*P_1868);
  d/dt(DADT_Pancreas_Interstitial)~(0-((P_2703*P_3003*P_2141)-(P_3338*P_3004*P_2647)))+(P_1817*P_1168*P_1766*(P_2136-(P_2141/P_2251)));
  d/dt(DADT_Pancreas_Intracellular)~((P_2703*P_3003*P_2141)-(P_3338*P_3004*P_2647));
  d/dt(DADT_PortalVein_Plasma)~P_3108+P_3110+(P_2060*(1-P_42)*P_2062)+P_3112+((1-P_498)*P_2069*(1-P_42)*P_3066)+P_3116+((1-P_688)*P_2081*(1-P_42)*P_3081)+(P_2134*(1-P_42)*P_2136)+P_3120+(0-(P_1773*P_1817*((P_2759*P_2144)-(P_2758*(P_2147/P_3021)))))+(P_2159*(1-P_42)*P_2161)+P_3144+P_3146+P_3148+P_3150+P_3152+P_3154+(0-(P_2648*(1-P_42)*P_2144));
  d/dt(DADT_PortalVein_BloodCells)~P_3109+P_3111+(P_2060*P_42*P_2065)+P_3113+((1-P_498)*P_2069*P_42*P_3068)+P_3117+((1-P_688)*P_2081*P_42*P_3083)+(P_2134*P_42*P_2139)+P_3121+(P_1773*P_1817*((P_2759*P_2144)-(P_2758*(P_2147/P_3021))))+(P_2159*P_42*P_2164)+P_3145+P_3147+P_3149+P_3151+P_3153+P_3155+(0-(P_2648*P_42*P_2147));
  d/dt(DADT_Skin_Plasma)~(0-(P_1775*P_1817*((P_2759*P_2151)-(P_2758*(P_2154/P_3021)))))+(0-(P_1817*P_1174*P_1776*(P_2151-(P_2156/P_2268))))+(0-(P_2149*(1-P_42)*P_2151))+(P_2149*(1-P_42)*P_1865);
  d/dt(DADT_Skin_BloodCells)~(0-(P_2149*P_42*P_2154))+(P_1775*P_1817*((P_2759*P_2151)-(P_2758*(P_2154/P_3021))))+(P_2149*P_42*P_1868);
  d/dt(DADT_Skin_Interstitial)~(0-((P_2708*P_3005*P_2156)-(P_3340*P_3006*P_2650)))+(P_1817*P_1174*P_1776*(P_2151-(P_2156/P_2268)));
  d/dt(DADT_Skin_Intracellular)~((P_2708*P_3005*P_2156)-(P_3340*P_3006*P_2650));
  d/dt(DADT_Spleen_Plasma)~(0-(P_2159*(1-P_42)*P_2161))+(0-(P_1778*P_1817*((P_2759*P_2161)-(P_2758*(P_2164/P_3021)))))+(0-(P_1817*P_1177*P_1779*(P_2161-(P_2166/P_2269))))+(P_2159*(1-P_42)*P_1865);
  d/dt(DADT_Spleen_BloodCells)~(0-(P_2159*P_42*P_2164))+(P_1778*P_1817*((P_2759*P_2161)-(P_2758*(P_2164/P_3021))))+(P_2159*P_42*P_1868);
  d/dt(DADT_Spleen_Interstitial)~(0-((P_2711*P_3007*P_2166)-(P_3341*P_3008*P_2652)))+(P_1817*P_1177*P_1779*(P_2161-(P_2166/P_2269)));
  d/dt(DADT_Spleen_Intracellular)~((P_2711*P_3007*P_2166)-(P_3341*P_3008*P_2652));
  d/dt(DADT_Saliva_Saliva)~(P_1817*(P_1865-(P_3259/P_2270))*P_1118);
  d/dt(DADT_Saliva_SalivaGland)~(0-(P_1817*(P_1865-(P_3259/P_2270))*P_1118));
  Cp=DADT_VenousBlood_Plasma/P_1397;
}
,modName = "CFZ_mah_v_3")
