class Employee:
    def __init__(self, employee, first, last):
        self.__employee_id = employee
        self.__first_name = first
        self.__last_name = last

    def set_employee(self, employee):
        self.__employee_id = employee

    def set_first(self, first):
        self.__first_name = first

    def set_last(self, last):
        self.__last_name = last

    def get_full_name(self, last, first):
        print("Employee: " + last + ", " + first)