*** /// Table S1 \\\ ***

* Attrition analysis

* use age variable for attrition analysis *
sum g1ageyrc g2ageyrc g3ageyrc g4ageyrc
gen byte T1_completed = g1ageyrc != . 
gen byte T2_completed = g2ageyrc != . 
gen byte T3_completed = g3ageyrc != . 
gen byte T4_completed = g4ageyrc != . 

label define wave_completed_lab 0 "drop-out" 1 "wave completed"
foreach var of varlist T1_completed T2_completed T3_completed T4_completed{
    label values `var' wave_completed_lab
}


tab1 T1_completed T2_completed T3_completed T4_completed

* compute N dropouts
tab T4_completed

* T1 characteristics *
tab2 g1sex T4_completed, col chi2
tab2 ethni_bin T4_completed, col chi2
by T4_completed, sort: sum g1ageyrc, format
ttest p1ses, by(T4_completed)
by T4_completed, sort: sum g1wiscdq, format
ttest g1wiscdq, by(T4_completed)


* T2 - T3 education * 
by T4_completed, sort: sum T2_ladder_4cat, format
ttest T2_ladder_4cat, by(T4_completed)
by T4_completed, sort: sum T3_ladder_4cat, format
ttest T3_ladder_4cat, by(T4_completed)


* T1 - T3 ADHD symptoms * 
by T4_completed, sort: sum ADHD1, format
ttest ADHD1, by(T4_completed)
by T4_completed, sort: sum ADHD2, format
ttest ADHD2, by(T4_completed)
by T4_completed, sort: sum ADHD3, format
ttest ADHD3, by(T4_completed)


* T1 - T3 family functioning * 
by T4_completed, sort: sum T1_famfunc, format
ttest T1_famfunc, by(T4_completed)
by T4_completed, sort: sum T2_famfunc, format
ttest T2_famfunc, by(T4_completed)
by T4_completed, sort: sum T3_famfunc, format
ttest T3_famfunc, by(T4_completed)


* T1 - T3 social support by teachers * 
by T4_completed, sort: sum T1_SPF_teach, format
ttest T1_SPF_teach, by(T4_completed)
by T4_completed, sort: sum T2_SPF_teach, format
ttest T2_SPF_teach, by(T4_completed)
by T4_completed, sort: sum T3_SPF_teach, format
ttest T3_SPF_teach, by(T4_completed)


* T1 - T3 social support by classmates * 
by T4_completed, sort: sum T1_SPF_class, format
ttest T1_SPF_class, by(T4_completed)
by T4_completed, sort: sum T2_SPF_class, format
ttest T2_SPF_class, by(T4_completed)
by T4_completed, sort: sum T3_SPF_class, format
ttest T3_SPF_class, by(T4_completed)


* T1 - T3 age *
by T4_completed, sort: sum g1ageyrc, format
ttest g1ageyrc, by(T4_completed)
by T4_completed, sort: sum g2ageyrc, format
ttest g2ageyrc, by(T4_completed)
by T4_completed, sort: sum g3ageyrc, format
ttest g3ageyrc, by(T4_completed)
