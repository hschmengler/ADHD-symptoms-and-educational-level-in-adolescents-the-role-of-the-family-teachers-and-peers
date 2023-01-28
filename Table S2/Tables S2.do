*** /// Table S2 \\\ ***

* generate variables to compare those with available education measure to those without
gen T2_educomplete = .
replace T2_educomplete = 1 if inlist(T2_ladder_4cat, 1, 2, 3, 4) & T2_completed == 1 
replace T2_educomplete = 0 if T2_ladder_4cat == . & T2_completed == 1

gen T3_educomplete = .
replace T3_educomplete = 1 if inlist(T3_ladder_4cat, 1, 2, 3, 4) & T3_completed == 1 
replace T3_educomplete = 0 if T3_ladder_4cat == . & T3_completed == 1

gen T4_educomplete = .
replace T4_educomplete = 1 if inlist(T4_ladder_4cat, 1, 2, 3, 4) & T4_completed == 1 
replace T4_educomplete = 0 if T4_ladder_4cat == . & T4_completed == 1


label define educomplete 1 "complete" 0 "unclassifiable/missing"
label values T2_educomplete educomplete  
label values T3_educomplete educomplete 
label values T4_educomplete educomplete 


tab1 T2_educomplete T3_educomplete T4_educomplete


format g1sex ethni_bin p1ses g1wiscdq ADHD2 ADHD3 c4ardadh T2_famfunc T3_famfunc T4_famfunc ///
T2_SPF_teach T3_SPF_teach T2_SPF_class T3_SPF_class ///
g2ageyrc g3ageyrc g4ageyrc %9.2f


* Wave 2 * 
tab T2_educomplete if T2_completed == 1
tab T2_educomplete g1sex if T2_completed==1, chi2 row
tab T2_educomplete ethni_bin if T2_completed==1, chi2 row
by T2_educomplete, sort: sum p1ses, format
ttest p1ses, by(T2_educomplete)
by T2_educomplete, sort: sum g1wiscdq, format
ttest g1wiscdq, by(T2_educomplete)
by T2_educomplete, sort: sum ADHD2, format
ttest ADHD2, by(T2_educomplete)
by T2_educomplete, sort: sum T2_famfunc, format
ttest T2_famfunc, by(T2_educomplete)
by T2_educomplete, sort: sum T2_SPF_teach, format
ttest T2_SPF_teach, by(T2_educomplete)
by T2_educomplete, sort: sum T2_SPF_class, format
ttest T2_SPF_class, by(T2_educomplete)
by T2_educomplete, sort: sum g2ageyrc, format
ttest g2ageyrc, by(T2_educomplete)


* Wave 3 * 
tab T3_educomplete if T3_completed == 1
tab T3_educomplete g1sex if T3_completed==1, chi2 row
tab T3_educomplete ethni_bin if T3_completed==1, chi2 row
by T3_educomplete, sort: sum p1ses, format
ttest p1ses, by(T3_educomplete)
by T3_educomplete, sort: sum g1wiscdq, format
ttest g1wiscdq, by(T3_educomplete)
by T3_educomplete, sort: sum ADHD3, format
ttest ADHD3, by(T3_educomplete)
by T3_educomplete, sort: sum T3_famfunc, format
ttest T3_famfunc, by(T3_educomplete)
by T3_educomplete, sort: sum T3_SPF_teach, format
ttest T3_SPF_teach, by(T3_educomplete)
by T3_educomplete, sort: sum T3_SPF_class, format
ttest T3_SPF_class, by(T3_educomplete)
by T3_educomplete, sort: sum g3ageyrc, format
ttest g3ageyrc, by(T3_educomplete)


* Wave 4 * 
tab T4_educomplete if T4_completed == 1
tab T4_educomplete g1sex if T4_completed==1, chi2 row
tab T4_educomplete ethni_bin if T4_completed==1, chi2 row
by T4_educomplete, sort: sum p1ses, format
ttest p1ses, by(T4_educomplete)
by T4_educomplete, sort: sum g1wiscdq, format
ttest g1wiscdq, by(T4_educomplete)
by T4_educomplete, sort: sum c4ardadh, format
ttest c4ardadh, by(T4_educomplete)
by T4_educomplete, sort: sum T4_famfunc, format
ttest T4_famfunc, by(T4_educomplete)
by T4_educomplete, sort: sum g4ageyrc, format
ttest g4ageyrc, by(T4_educomplete)
