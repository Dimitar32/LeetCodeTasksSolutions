import pandas as pd

def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    unique_salaries = employee['salary'].drop_duplicates().nlargest(2)

    if len(unique_salaries) < 2:
        second = None
    else:
        second = unique_salaries.iloc[-1]
    
    return pd.DataFrame({'SecondHighestSalary': [second]})