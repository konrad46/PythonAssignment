class BankAccount:

    def __init__(self, bank_name, routing_number, account_id):
        self.__bank_name = bank_name
        self.__routing_number = routing_number
        self.__account_id = account_id

    def set_bank_name(self, bank_name):
        self.__bank_name = bank_name

    def set_routing_number(self, routing_number):
        self.__routing_number = routing_number

    def set_account_id(self, account_id):
        self.__account_id = account_id

    def get_bank_name(self):
        return self.__bank_name

    def get_routing_number(self):
        return self.__routing_number

    def get_account_id(self):
        return self.__account_id

    def deposit(self, bank, amt, account, routing):
        print("Depositing "
              "$" + amt + " in " + bank + " Account Number: " + account + " using Routing Number: " + routing)

