import csv
import pathlib


def get_gas_data(data_path):
    gas_data = []
    with open(data_path) as f:
        reader = csv.reader(f)
        for row in reader:
            gas_data.append(row)
    return gas_data


def get_city_index(gas_data, city):
    cities = [row[0].lower() for row in gas_data]
    return cities.index(city)


def get_date_column(gas_data, the_date):
    return gas_data[0].index(the_date)


def lower_prices_dates(gas_data, city):
    city_row = get_city_index(gas_data, city.lower())
    lower_price = min(float(c) for c in gas_data[city_row][1:])
    lowest_dates = [gas_data[0][city_row - 1]]
    for col, price in enumerate(gas_data[city_row]):
        if float(col) == lower_price:
            lowest_dates.append(gas_data[1][col + 1])
    return lowest_dates, lower_price


def prices_cities_for_date(gas_data, the_date):
    a = []
    date_index = get_date_column(gas_data, the_date)
    x = 0
    while x < len(gas_data):
        a.append(gas_data[x][date_index])
        x+=1
    b = min(c for c in a[1:])
    for col in enumerate(gas_data[a.index(b)]):
        print(gas_data[col][0])
    print(gas_data[a.index(b)][date_index])


def main():
    data_file = pathlib.Path(__file__).parent / "gas_prices.csv"
    # for row in get_gas_data(data_file):
    #     print(row)
    gas_data = get_gas_data(data_file)
    cities = [row[0].lower() for row in gas_data]
    print(prices_cities_for_date(gas_data, '2020-03-01'))
    print(lower_prices_dates(gas_data, "victoria"))
    # get_gas_data(data_file)


if __name__ == "__main__":
    main()
