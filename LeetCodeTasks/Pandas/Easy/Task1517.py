import pandas as pd

def valid_emails(users: pd.DataFrame) -> pd.DataFrame:
    result = users['mail'].str.match('^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$', na=False)
    return users[result]