*** /// Table 2 \\\ ***

set cformat %9.2f
format g2ageyrc g3ageyrc g4ageyrc ADHD2 ADHD3 T2_famfunc T3_famfunc T2_SPF_teach T3_SPF_teach T2_SPF_class T3_SPF_class T2_ladder_4cat T3_ladder_4cat T4_ladder_4cat %9.2f


* N participants per wave & mean age per wave
sum g2ageyrc g3ageyrc g4ageyrc, format

* date range per wave
tab1 g2date g3date g4date

* % male per wave
tab g1sex if g2ageyrc !=.
tab g1sex if g3ageyrc !=.
tab g1sex if g4ageyrc !=.


* educational level by wave
tab1 T2_ladder_4cat T3_ladder_4cat T4_ladder_4cat


* ADHD symptoms by educational level for each wave
* T2 * 
summarize ADHD2, format
by T2_ladder_4cat, sort : summarize ADHD2, format
anova ADHD2 i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects

* T3 * 
summarize ADHD3, format
by T3_ladder_4cat, sort : summarize ADHD3, format
anova ADHD3 i.T3_ladder_4cat
pwcompare i.T3_ladder_4cat, effects


* family functioning by educational level for each wave
* T2 * 
summarize T2_famfunc, format
by T2_ladder_4cat, sort : summarize T2_famfunc, format
anova T2_famfunc i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects

* T3 * 
summarize T3_famfunc, format
by T3_ladder_4cat, sort : summarize T3_famfunc, format
anova T3_famfunc i.T3_ladder_4cat
pwcompare i.T3_ladder_4cat, effects


* social support by teachers by educational level for each wave
* T2 * 
summarize T2_SPF_teach, format
by T2_ladder_4cat, sort : summarize T2_SPF_teach, format
anova T2_SPF_teach i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects

* T3 * 
summarize T3_SPF_teach, format
by T3_ladder_4cat, sort : summarize T3_SPF_teach, format
anova T3_SPF_teach i.T3_ladder_4cat
pwcompare i.T3_ladder_4cat, effects


* social support by classmates by educational level for each wave
* T2 * 
summarize T2_SPF_class, format
by T2_ladder_4cat, sort : summarize T2_SPF_class, format
anova T2_SPF_class i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects

* T3 * 
summarize T3_SPF_class, format
by T3_ladder_4cat, sort : summarize T3_SPF_class, format
anova T3_SPF_class i.T3_ladder_4cat
pwcompare i.T3_ladder_4cat, effects


* age by educational level for each wave
* T2 * 
summarize g2ageyrc, format
by T2_ladder_4cat, sort : summarize g2ageyrc, format
anova g2ageyrc i.T2_ladder_4cat
pwcompare i.T2_ladder_4cat, effects

* T3 * 
summarize g3ageyrc, format
by T3_ladder_4cat, sort : summarize g3ageyrc, format
anova g3ageyrc i.T3_ladder_4cat
pwcompare i.T3_ladder_4cat, effects
