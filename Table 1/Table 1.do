*** /// Table 1 \\\ ***

set cformat %9.2f

format ADHD1 g1ageyrc p1ses g1wiscdq T1_famfunc T1_SPF_teach T1_SPF_class %9.2f


** sample size per educational track **
tab1 T2_ladder_4cat, mis


** T1 ADHD symptoms **
sum ADHD1, format
by T2_ladder_4cat, sort: sum ADHD1, format
anova ADHD1 i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects


** T1 family functioning **
sum T1_famfunc, format
by T2_ladder_4cat, sort: sum T1_famfunc, format
anova T1_famfunc i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects


** T1 social support by teachers **
sum T1_SPF_teach, format
by T2_ladder_4cat, sort: sum T1_SPF_teach, format
anova T1_SPF_teach i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects


** T1 social support by classmates **
sum T1_SPF_class, format
by T2_ladder_4cat, sort: sum T1_SPF_class, format
anova T1_SPF_class i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects

** gender **
tab g1sex
tab g1sex T2_ladder_4cat, col chi2

tab g1sex T2_ladder_4cat if inlist(T2_ladder_4cat, 1, 2), col chi2 // sig
tab g1sex T2_ladder_4cat if inlist(T2_ladder_4cat, 1, 3), col chi2 // NS 
tab g1sex T2_ladder_4cat if inlist(T2_ladder_4cat, 1, 4), col chi2 // sig
tab g1sex T2_ladder_4cat if inlist(T2_ladder_4cat, 2, 3), col chi2 // sig
tab g1sex T2_ladder_4cat if inlist(T2_ladder_4cat, 2, 4), col chi2 // NS
tab g1sex T2_ladder_4cat if inlist(T2_ladder_4cat, 3, 4), col chi2 // sig


** ethnicity **
tab ethni_bin 
tab ethni_bin T2_ladder_4cat, col chi2

tab ethni_bin T2_ladder_4cat if inlist(T2_ladder_4cat, 1, 2), col chi2 // sig
tab ethni_bin T2_ladder_4cat if inlist(T2_ladder_4cat, 1, 3), col chi2 // sig
tab ethni_bin T2_ladder_4cat if inlist(T2_ladder_4cat, 1, 4), col chi2 // sig
tab ethni_bin T2_ladder_4cat if inlist(T2_ladder_4cat, 2, 3), col chi2 // NS
tab ethni_bin T2_ladder_4cat if inlist(T2_ladder_4cat, 2, 4), col chi2 // NS
tab ethni_bin T2_ladder_4cat if inlist(T2_ladder_4cat, 3, 4), col chi2 // NS


** age **
sum g1ageyrc, format
by T2_ladder_4cat, sort: sum g1ageyrc, format
anova g1ageyrc i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects


** parental SES **
sum p1ses, format
by T2_ladder_4cat, sort: sum p1ses, format
anova p1ses i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects


** IQ **
sum g1wiscdq, format
by T2_ladder_4cat, sort: sum g1wiscdq, format
anova g1wiscdq i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects
