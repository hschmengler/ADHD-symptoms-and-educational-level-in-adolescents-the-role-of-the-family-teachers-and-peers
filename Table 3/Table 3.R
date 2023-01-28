# load packages
library(readxl)
library(intmed)

# import dataset
TRAILS_imputed <- read_excel("D:/OneDrive - Universiteit Utrecht/TRAILS buffer paper/Submission RCAP/Revision 1/final analyses/edited data/R analysis/export_to_R.xlsx")

# create ID of individual and imputation for intmed
TRAILS_imputed$.imp <- TRAILS_imputed$imp_ds_ID
TRAILS_imputed$.id <- TRAILS_imputed$imp_ind_ID


### intmed models ###

# family functioning
med_res_famfunc12 <- mediate(y = "T2_ladder_4cat_z", med = c("T1_famfunc_z"), treat = "ADHD1_z", 
                   c = c("g1sex", "g1ageyrc_z", "ethni_bin", "p1ses_z", "g1wiscdq_z"), 
                   ymodel = "regression", 
                   mmodel = c("regression"), 
                   treat_lv = 1, control_lv = 0, conf.level = 0.95,
                   incint = TRUE, inc_mmint = FALSE, imputed_data = TRUE,
                   data = TRAILS_imputed, sim = 10000, digits = 3, cores = NULL)

med_res_famfunc23 <- mediate(y = "T3_ladder_4cat_z", med = c("T2_famfunc_z", "T2_ladder_4cat_z"), treat = "ADHD2_z", 
                   c = c("g1sex", "g2ageyrc_z", "ethni_bin", "p1ses_z", "g1wiscdq_z"), 
                   ymodel = "regression", 
                   mmodel = c("regression", "regression"), 
                   treat_lv = 1, control_lv = 0, conf.level = 0.95,
                   incint = TRUE, inc_mmint = FALSE, imputed_data = TRUE,
                   data = TRAILS_imputed, sim = 10000, digits = 3, cores = NULL)

med_res_famfunc34 <- mediate(y = "T4_ladder_4cat_z", med = c("T3_famfunc_z", "T3_ladder_4cat_z"), treat = "ADHD3_z", 
                    c = c("g1sex", "g3ageyrc_z", "ethni_bin", "p1ses_z", "g1wiscdq_z"), 
                    ymodel = "regression", 
                    mmodel = c("regression", "regression"), 
                    treat_lv = 1, control_lv = 0, conf.level = 0.95,
                    incint = TRUE, inc_mmint = FALSE, imputed_data = TRUE,
                    data = TRAILS_imputed, sim = 10000, digits = 3, cores = NULL)


# social support by teachers
med_res_SPF_teach12 <- mediate(y = "T2_ladder_4cat_z", med = c("T1_SPF_teach_z"), treat = "ADHD1_z", 
                     c = c("g1sex", "g1ageyrc_z", "ethni_bin", "p1ses_z", "g1wiscdq_z"), 
                     ymodel = "regression", 
                     mmodel = c("regression"), 
                     treat_lv = 1, control_lv = 0, conf.level = 0.95,
                     incint = TRUE, inc_mmint = FALSE, imputed_data = TRUE,
                     data = TRAILS_imputed, sim = 10000, digits = 3, cores = NULL)

med_res_SPF_teach23 <- mediate(y = "T3_ladder_4cat_z", med = c("T2_SPF_teach_z", "T2_ladder_4cat_z"), treat = "ADHD2_z", 
                     c = c("g1sex", "g2ageyrc_z", "ethni_bin", "p1ses_z", "g1wiscdq_z"), 
                     ymodel = "regression", 
                     mmodel = c("regression", "regression"), 
                     treat_lv = 1, control_lv = 0, conf.level = 0.95,
                     incint = TRUE, inc_mmint = FALSE, imputed_data = TRUE,
                     data = TRAILS_imputed, sim = 10000, digits = 3, cores = NULL)

med_res_SPF_teach34 <- mediate(y = "T4_ladder_4cat_z", med = c("T3_SPF_teach_z", "T3_ladder_4cat_z"), treat = "ADHD3_z", 
                     c = c("g1sex", "g3ageyrc_z", "ethni_bin", "p1ses_z", "g1wiscdq_z"), 
                     ymodel = "regression", 
                     mmodel = c("regression", "regression"), 
                     treat_lv = 1, control_lv = 0, conf.level = 0.95,
                     incint = TRUE, inc_mmint = FALSE, imputed_data = TRUE,
                     data = TRAILS_imputed, sim = 10000, digits = 3, cores = NULL)


# social support by classmates
med_res_SPF_class12 <- mediate(y = "T2_ladder_4cat_z", med = c("T1_SPF_class_z"), treat = "ADHD1_z", 
                     c = c("g1sex", "g1ageyrc_z", "ethni_bin", "p1ses_z", "g1wiscdq_z"), 
                     ymodel = "regression", 
                     mmodel = c("regression"), 
                     treat_lv = 1, control_lv = 0, conf.level = 0.95,
                     incint = TRUE, inc_mmint = FALSE, imputed_data = TRUE,
                     data = TRAILS_imputed, sim = 10000, digits = 3, cores = NULL)

med_res_SPF_class23 <- mediate(y = "T3_ladder_4cat_z", med = c("T2_SPF_class_z", "T2_ladder_4cat_z"), treat = "ADHD2_z", 
                     c = c("g1sex", "g2ageyrc_z", "ethni_bin", "p1ses_z", "g1wiscdq_z"), 
                     ymodel = "regression", 
                     mmodel = c("regression", "regression"), 
                     treat_lv = 1, control_lv = 0, conf.level = 0.95,
                     incint = TRUE, inc_mmint = FALSE, imputed_data = TRUE,
                     data = TRAILS_imputed, sim = 10000, digits = 3, cores = NULL)

med_res_SPF_class34 <- mediate(y = "T4_ladder_4cat_z", med = c("T3_SPF_class_z", "T3_ladder_4cat_z"), treat = "ADHD3_z", 
                       c = c("g1sex", "g3ageyrc_z", "ethni_bin", "p1ses_z", "g1wiscdq_z"), 
                       ymodel = "regression", 
                       mmodel = c("regression", "regression"), 
                       treat_lv = 1, control_lv = 0, conf.level = 0.95,
                       incint = TRUE, inc_mmint = FALSE, imputed_data = TRUE,
                      data = TRAILS_imputed, sim = 10000, digits = 3, cores = NULL)

