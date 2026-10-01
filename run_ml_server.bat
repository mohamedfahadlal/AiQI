@echo off
echo Installing required Python packages...
pip install -q flask xgboost joblib matplotlib pandas numpy scikit-learn lightgbm

echo.
echo Starting ML Server in a new window...
cd ml
start cmd.exe /k "python server.py"
