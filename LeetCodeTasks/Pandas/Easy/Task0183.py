import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    result = pd.merge(customers, orders, left_on='id', right_on='customerId', how='left')
    result.rename(columns={'id_y': 'id_yw', 'name': 'Customers'}, inplace=True)
    return result[(result['id_yw'].isnull())][['Customers']]