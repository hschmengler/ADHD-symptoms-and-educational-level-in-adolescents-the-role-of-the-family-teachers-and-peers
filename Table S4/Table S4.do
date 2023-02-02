*** /// Table S4 \\\ ***


* family functioning

* Model 1
mi estimate, cformat(%9.2f) dots: regress T2_ladder_4cat_z T1_famfunc_z
mi estimate, cformat(%9.2f) dots: regress T3_ladder_4cat_z T2_famfunc_z T2_ladder_4cat_z
mi estimate, cformat(%9.2f) dots: regress T4_ladder_4cat_z T3_famfunc_z T3_ladder_4cat_z

* Model 2
mi estimate, cformat(%9.2f) dots: regress T2_ladder_4cat_z T1_famfunc_z g1sex ethni_bin g1ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T3_ladder_4cat_z T2_famfunc_z T2_ladder_4cat_z g1sex ethni_bin g2ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T4_ladder_4cat_z T3_famfunc_z T3_ladder_4cat_z g1sex ethni_bin g3ageyrc_z p1ses_z g1wiscdq_z

* Model 3
mi estimate, cformat(%9.2f) dots: regress T2_ladder_4cat_z c.T1_famfunc_z##c.ADHD1_z g1sex ethni_bin g1ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T3_ladder_4cat_z c.T2_famfunc_z##c.ADHD2_z T2_ladder_4cat_z g1sex ethni_bin g2ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T4_ladder_4cat_z c.T3_famfunc_z##c.ADHD3_z T3_ladder_4cat_z g1sex ethni_bin g3ageyrc_z p1ses_z g1wiscdq_z




* social support teachers

* Model 1
mi estimate, cformat(%9.2f) dots: regress T2_ladder_4cat_z T1_SPF_teach_z
mi estimate, cformat(%9.2f) dots: regress T3_ladder_4cat_z T2_SPF_teach_z T2_ladder_4cat_z
mi estimate, cformat(%9.2f) dots: regress T4_ladder_4cat_z T3_SPF_teach_z T3_ladder_4cat_z

* Model 2
mi estimate, cformat(%9.2f) dots: regress T2_ladder_4cat_z T1_SPF_teach_z g1sex ethni_bin g1ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T3_ladder_4cat_z T2_SPF_teach_z T2_ladder_4cat_z g1sex ethni_bin g2ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T4_ladder_4cat_z T3_SPF_teach_z T3_ladder_4cat_z g1sex ethni_bin g3ageyrc_z p1ses_z g1wiscdq_z

* Model 3
mi estimate, cformat(%9.2f) dots: regress T2_ladder_4cat_z c.T1_SPF_teach_z##c.ADHD1_z g1sex ethni_bin g1ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T3_ladder_4cat_z c.T2_SPF_teach_z##c.ADHD2_z T2_ladder_4cat_z g1sex ethni_bin g2ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T4_ladder_4cat_z c.T3_SPF_teach_z##c.ADHD3_z T3_ladder_4cat_z g1sex ethni_bin g3ageyrc_z p1ses_z g1wiscdq_z





* social support classmates

* Model 1
mi estimate, cformat(%9.2f) dots: regress T2_ladder_4cat_z T1_SPF_class_z
mi estimate, cformat(%9.2f) dots: regress T3_ladder_4cat_z T2_SPF_class_z T2_ladder_4cat_z
mi estimate, cformat(%9.2f) dots: regress T4_ladder_4cat_z T3_SPF_class_z T3_ladder_4cat_z

* Model 2
mi estimate, cformat(%9.2f) dots: regress T2_ladder_4cat_z T1_SPF_class_z g1sex ethni_bin g1ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T3_ladder_4cat_z T2_SPF_class_z T2_ladder_4cat_z g1sex ethni_bin g2ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T4_ladder_4cat_z T3_SPF_class_z T3_ladder_4cat_z g1sex ethni_bin g3ageyrc_z p1ses_z g1wiscdq_z

* Model 3
mi estimate, cformat(%9.2f) dots: regress T2_ladder_4cat_z c.T1_SPF_class_z##c.ADHD1_z g1sex ethni_bin g1ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T3_ladder_4cat_z c.T2_SPF_class_z##c.ADHD2_z T2_ladder_4cat_z g1sex ethni_bin g2ageyrc_z p1ses_z g1wiscdq_z
mi estimate, cformat(%9.2f) dots: regress T4_ladder_4cat_z c.T3_SPF_class_z##c.ADHD3_z T3_ladder_4cat_z g1sex ethni_bin g3ageyrc_z p1ses_z g1wiscdq_z





