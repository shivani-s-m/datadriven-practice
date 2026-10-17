SELECT TOP(10) model_id, mdl_name, accuracy
FROM ml_models
ORDER BY accuracy DESC, model_id ASC
