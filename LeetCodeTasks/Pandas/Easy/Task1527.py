import pandas as pd

def find_patients(patients: pd.DataFrame) -> pd.DataFrame:
    result = patients['conditions'].str.contains('^DIAB1| DIAB1', na=False)
    return patients[result]