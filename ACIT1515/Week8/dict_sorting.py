"""Demonstrates converting dictionaries, converting them to lits and sorting them"""


def age_frequency(people_ages: dict[str, int]):
    """Transform a dctionary of people and their ages into a dictionary
    that where age is the key and the value is the number of people with that age.
    """
    age_counts = {}
    for age in people_ages.values():
        if age in age_counts:
            age_counts[age] += 1
        else:
            age_counts[age] = 1

    return age_counts


def generate_age_freq_dict(age_counts: dict[int, int]) -> dict[int, list[int]]:
    """Transform a dictionary swapping,  the key with the value.
    In this case a dictionary indexed by age with a value of the total number of people
    of that age, is transformed into a dictionary indexed the total number of people
    with the age, with a value of a list of ages that occur with that frequency.

    Args:
        age_counts (dict[int, int]): a dictionary with ages and the number of
                                     people with that age

    Returns:
        dict[int, list[int]]: the key is the number of people with that age and
                              the value is a list of ages with that frequency.
    """

    freq_age_dict: dict[int, int] = {}

    for age, freq in age_counts.items():
        if freq in freq_age_dict:
            freq_age_dict[freq].append(age)
        else:
            freq_age_dict[freq] = [age]

    return freq_age_dict


def sorted_freq_age_list(
    age_freq_dict: dict[int, list[int]]
) -> list[tuple[int, list[int]]]:
    """Transform dictionary into a sorted list of tuples. The list is sorted
    by the dictionary key which becomes the first value in the tuple and the
    dictionary value becomes the second value in the tuple.

    Args:
        age_freq_dict (dict[int, list[int]):  a dictionary where the key is the number
                                         of people with that age and the value is
                                         a list of ages with that frequency.


    Returns:
        list[tuple[int, list[int]]]: a sorted list of tuples where with the first value is age frequency
                                     and the second is a list of ages that occur with that frequency
    """
    freq_age_list = sorted(age_freq_dict.items(), reverse=True)
    return freq_age_list


def main():

    people_ages = {
        "Jesse": 21,
        "John": 20,
        "Jane": 23,
        "Jack": 23,
        "Gurpreet": 18,
        "Gurinder": 19,
        "Gurkaran": 20,
        "Chi": 20,
        "Bob": 21,
    }
    print(f"People and their ages: {people_ages}")

    people_age_freq = age_frequency(people_ages)
    print(f"Age frequencies: {people_age_freq}")

    people_freq_ages = generate_age_freq_dict(people_age_freq)
    print(
        f"Frequences and the ages that occur that number of times: {people_freq_ages}"
    )

    print(
        f"Frequences and the ages that occur that number of times converted to list of tuples:"
    )
    print(list(people_freq_ages.items()))

    print(
        f"Frequences and the ages that occur that number of times converted to list of tuples, sorted:"
    )
    print(sorted_freq_age_list(people_freq_ages))


if __name__ == "__main__":
    main()
