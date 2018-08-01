# Prev. set Credentials: myfitnesspal store-password flopysilvestre

import myfitnesspal

client = myfitnesspal.Client('flopysilvestre')


def get_data(date):
    day = client.get_date(date)
    weight = client.get_measurements('Weight').popitem()

    return [day, weight[1]]



