import csv
import pathlib

from contact_data import contacts


def main():
    """Demonstration of csv writer.
    Loops over imported contacts and writes them to a file.
    """

    cwd = pathlib.Path(__file__).parent
    report_path = cwd / "demo_report.csv"

    # In the with statement below - writer is stopped from putting a blank
    # line in between each row by the argument newline=""
    with open(report_path, "w", newline="") as report_file:
        
        # Setting the dialect allows the file to read in Excel without any
        # formatting issues
        report_writer = csv.writer(report_file, dialect="excel")

        report_writer.writerow(["Demonstration Report"])  # write title

        # Write column headings
        report_writer.writerow(
            [
                "last_name",
                "first_name",
                "phone1",
                "phone",
                "email",
            ],
        )

        #Loop through the contacts and the names, phone numbers, and emails to the file
        for (
            first_name,
            last_name,
            company_name,
            address,
            city,
            county,
            state,
            zip,
            phone1,
            phone,
            email,
        ) in contacts:
            report_writer.writerow([last_name, first_name, phone, phone1, email])


if __name__ == "__main__":
    main()
