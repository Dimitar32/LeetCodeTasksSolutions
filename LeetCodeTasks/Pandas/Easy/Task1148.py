import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    result = views[(views['author_id'] == views['viewer_id'])][['author_id']]
    result.rename(columns={'author_id': 'id'}, inplace=True)
    return result.drop_duplicates().sort_values(by=["id"])