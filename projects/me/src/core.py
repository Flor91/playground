# -*- coding: utf-8 -*-
from src.data import helpers
from src import updateExcel
from datetime import date, timedelta


def main():
    """Contemplation..."""
    # TODO: Add data to excel
    # TODO: Add logger
    # TODO: Add Scheduler - auto run script daily
    # TODO: Create web FP
    # TODO: Create slack support
    # TODO: Make mobile app
    # TODO: Add External DB
    # TODO: Play with Docker
    day = date.today() - timedelta(1)
    data = helpers.get_data(day)

    for d in data:
        print(d)

    updateExcel.update_data(data, day)


if __name__ == "__main__":
    # execute only if run as a script
    main()
