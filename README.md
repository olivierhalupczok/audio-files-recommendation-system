# audio-files-recommendation-system
Recruitment task solution for PJAIT Data Science Club - Team 8

## Competition: Predict Podcast Listening Time

This repository contains the solution for predicting podcast listening time based on various features including podcast metadata, host/guest popularity, and episode characteristics.

## Model Performance

| Method | Description | Kaggle Score (RMSE) |
|--------|-------------|---------------------|
| XGBoost Baseline | XGBoost regressor with label encoding for categorical variables, median imputation for missing values, and 3-fold cross-validation. Parameters: 565 estimators, max_depth=18, learning_rate=0.042, subsample=0.8, colsample_bytree=0.8 | 12.55720 |
| Increased folds of cross-validation | XGBoost regressor with label encoding for categorical variables, median imputation for missing values, and 5-fold cross-validation. Parameters: 565 estimators, max_depth=18, learning_rate=0.042, subsample=0.8, colsample_bytree=0.8 | 12.46704
 |

## Project Structure

```
├── data/                  # Competition data files
├── train.ipynb           # Main training notebook
├── submission.csv        # Kaggle submission file
└── requirements.txt      # Python dependencies
```

## Features Used

- **Podcast metadata**: Name, episode title, genre
- **Temporal features**: Publication day and time
- **Popularity metrics**: Host and guest popularity percentages
- **Episode characteristics**: Length, number of ads, sentiment
- **Target variable**: Listening time in minutes

