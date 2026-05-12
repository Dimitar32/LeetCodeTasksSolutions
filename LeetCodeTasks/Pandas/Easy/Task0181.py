import pandas as pd

def find_employees(employee: pd.DataFrame) -> pd.DataFrame:
    result = pd.merge(employee, employee, left_on='managerId', right_on='id')
    return result[result["salary_x"] > result["salary_y"]][["name_x"]].rename(columns={"name_x": "Employee"})