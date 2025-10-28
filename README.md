# audio-files-recommendation-system
Recruitment task solution for PJAIT Data Science Club - Team 8

## Competition: Predict Podcast Listening Time

This repository contains the solution for predicting podcast listening time based on various features including podcast metadata, host/guest popularity, and episode characteristics.

## Model Performance

| Method | Description | Kaggle Score (RMSE) |
|--------|-------------|---------------------|
| Linear Regression Baseline | Simple linear regression with label encoding for categorical variables and median imputation | ~14.50 (local CV) |
| XGBoost Baseline (3-fold CV) | XGBoost regressor with label encoding for categorical variables, median imputation for missing values, and 3-fold cross-validation. Parameters: 565 estimators, max_depth=18, learning_rate=0.042, subsample=0.8, colsample_bytree=0.8 | 12.55720 |
| XGBoost Improved (5-fold CV) | XGBoost regressor with label encoding for categorical variables, median imputation for missing values, and 5-fold cross-validation. Parameters: 565 estimators, max_depth=18, learning_rate=0.042, subsample=0.8, colsample_bytree=0.8 | **12.46704** ✅ |
| XGBoost + Optuna Tuning | XGBoost with automated hyperparameter optimization using Optuna (50 trials) | ~12.70 (local CV) |
| LightGBM | LightGBM regressor with similar configuration to XGBoost baseline | ~12.80 (local CV) |
| CatBoost | CatBoost regressor with native categorical feature handling | ~12.68 (local CV) |

**Best Result: 12.46704 RMSE** (XGBoost with 5-fold CV)

## Project Structure

```
├── data/                  # Competition data files
├── train.ipynb           # Main training notebook
├── eda.ipynb             # Exploratory data analysis notebook
├── presentation.ipynb    # Competition presentation with visualizations
├── submission.csv        # Kaggle submission file
└── requirements.txt      # Python dependencies
```

## Features Used

- **Podcast metadata**: Name, episode title, genre
- **Temporal features**: Publication day and time
- **Popularity metrics**: Host and guest popularity percentages
- **Episode characteristics**: Length, number of ads, sentiment
- **Target variable**: Listening time in minutes
