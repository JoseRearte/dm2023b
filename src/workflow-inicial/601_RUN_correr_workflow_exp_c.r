# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/611_CA_reparar_dataset_exp_c.r")
source("~/dm2023b/src/workflow-inicial/621_DR_corregir_drifting_exp_c.r")
source("~/dm2023b/src/workflow-inicial/631_FE_historia_exp_c.r")
source("~/dm2023b/src/workflow-inicial/641_TS_training_strategy_exp_c.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/651_HT_lightgbm_exp_c.r")
source("~/dm2023b/src/workflow-inicial/661_ZZ_final_exp_c.r")
