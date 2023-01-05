import pymssql
import tabulate

STATUSES = ['Pending', 'Done']
STARS = [1, 2, 3, 4, 5]


def printTable(data):
    header = data[0].keys()
    rows = [x.values() for x in data]
    print(tabulate.tabulate(rows, header))


class MSSQLConnection:
    def __init__(self, host, port, database, username, password):
        self.host = host
        self.port = port
        self.database = database
        self.username = username
        self.password = password

    def openConnection(self):
        try:
            self.db = pymssql.connect(server=self.host, user=self.username,
                                      password=self.password, database=self.database)
            self.cursor = self.db.cursor(as_dict=True)
            print("Connection open!")
        except Exception as e:
            print("Connection not open!")
            print(e)

    def closeConnection(self):
        try:
            self.cursor.close()
            self.db.close()
            print("Connection closed!")
        except Exception as e:
            print("Connection not closed!")
            print(e)

    def call_GET_ALL_PACKAGES_BY_EMP_ID(self, id):
        try:
            cmd = "SELECT * FROM dbo.GET_ALL_PACKAGES_BY_EMP_ID(%d);"
            values = (id)
            self.cursor.execute(cmd, values)
            return self.cursor.fetchall()
        except Exception as e:
            print(e)
            return None

    def call_GET_ALL_OFFERS_BY_STATUS(self, status):
        try:
            cmd = "SELECT * FROM dbo.GET_ALL_OFFERS_BY_STATUS(%s);"
            values = (status)
            self.cursor.execute(cmd, values)
            return self.cursor.fetchall()
        except Exception as e:
            print(e)
            return None

    def call_GET_ALL_OFFERS_BY_STARS(self, stars):
        try:
            cmd = "SELECT * FROM dbo.GET_ALL_OFFERS_BY_STARS(%d);"
            values = (stars)
            self.cursor.execute(cmd, values)
            return self.cursor.fetchall()
        except Exception as e:
            print(e)
            return None


if __name__ == "__main__":
    oc = MSSQLConnection('localhost', 1433, 'tourism_db',
                         'sa', 'bigStrong*Pwd')
    oc.openConnection()

    while True:
        inp = input(
            'Enter command:'
            + '\n\tGET_ALL_PACKAGES_BY_EMP_ID <id>'
            + '\n\tGET_ALL_OFFERS_BY_STATUS <status (Pending / Done)>'
            + '\n\tGET_ALL_OFFERS_BY_STARS <stars (1-5)>\n\texit\n')

        # read input
        if inp == 'exit':
            break

        if inp.startswith('GET_ALL_PACKAGES_BY_EMP_ID'):
            # get the id
            id = inp.split(' ')[1]
            # check if id is a number
            if not id.isdigit():
                print('Id must be a number')
                continue
            # execute the stored procedure
            elems = oc.call_GET_ALL_PACKAGES_BY_EMP_ID(id)
            if elems is None:
                continue
            # print the result
            printTable(elems)
        if inp.startswith('GET_ALL_OFFERS_BY_STATUS'):
            # get the status
            status = inp.split(' ')[1]
            # check if status is valid
            if status not in STATUSES:
                print('Status must be one of: ' + str(STATUSES))
                continue
            # execute the stored procedure
            elems = oc.call_GET_ALL_OFFERS_BY_STATUS(status)
            if elems is None:
                continue
            # print the result
            printTable(elems)
        if inp.startswith('GET_ALL_OFFERS_BY_STARS'):
            # get the stars
            stars = inp.split(' ')[1]
            stars = int(stars)
            # check if stars is valid
            if stars not in STARS:
                print('Stars must be one of: ' + str(STARS))
                continue
            # execute the stored procedure
            elems = oc.call_GET_ALL_OFFERS_BY_STARS(stars)
            if elems is None:
                continue
            # print the result
            printTable(elems)

    oc.closeConnection()
