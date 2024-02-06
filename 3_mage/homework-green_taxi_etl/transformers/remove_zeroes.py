if 'transformer' not in globals():
    from mage_ai.data_preparation.decorators import transformer
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test

def camel_to_snake(name):
    import re
    # First, insert underscores before uppercase letters followed by lowercase letters
    s1 = re.sub(r'(.)([A-Z][a-z]+)', r'\1_\2', name)
    # Then, adjust for the case where a lowercase letter is followed by uppercase letters
    # and convert to lowercase
    return re.sub(r'([a-z0-9])([A-Z])', r'\1_\2', s1).lower()



@transformer
def transform(data, *args, **kwargs):
    data.columns = [camel_to_snake(column) for column in data.columns]
    data['lpep_pickup_date'] = data['lpep_pickup_datetime'].dt.date

    return data[(data['passenger_count'] > 0) & (data['trip_distance'] > 0)]




@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'
