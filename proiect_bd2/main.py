import pymssql


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

    def exempluProcedura(self, idDept):
        try:
            cmd = "EXEC dbo.exemplu_procedura ?;"
            values = (idDept)
            self.cursor.execute(cmd, values)
            for elem in self.cursor.fetchall():
                print(elem)
        except Exception as e:
            print(e)

    def exempluFunctie(self, manager_id, salary=None):
        try:
            cmd = """\
            SET NOCOUNT ON;
            DECLARE @RC int;
            EXEC @RC = dbo.GET_SUBORDINATES_WITH_LOWER_SALARY %s, %s;
            SELECT @RC AS rc;
            """
            values = (str(manager_id), (str(salary or "NULL")))
            self.cursor.execute(cmd, values)
            emp_count = self.cursor.fetchall()[0]['rc']
            print('Managerul cu id-ul ' + str(manager_id) + ' are ' + str(emp_count) +
                  ' angajati cu salariul mai mic decat ' + (str(salary) or 'el'))
        except Exception as e:
            print(e)

    def call_GET_ALL_PACKAGES_BY_EMP_ID(self, id):
        try:
            cmd = "EXEC dbo.GET_ALL_PACKAGES_BY_EMP_ID %s;"
            values = (id)
            self.cursor.execute(cmd, values)
            print(self.cursor.fetchall())
            for elem in self.cursor.fetchall():
                print(elem)
        except Exception as e:
            print(e)


if __name__ == "__main__":
    oc = MSSQLConnection('localhost', 1433, 'tourism_db',
                         'sa', 'bigStrong*Pwd')
    oc.openConnection()

    oc.call_GET_ALL_PACKAGES_BY_EMP_ID(1)

    # while True:
    #     # read input
    #     inp = input(
    #         'Enter command: GET_ALL_PACKAGES_BY_EMP_ID <id> / get2 /get3 / exit\n')
    #     if inp == 'exit':
    #         break

    #     # if input starts with GET_ALL_PACKAGES_BY_EMP_ID
    #     if inp.startswith('GET_ALL_PACKAGES_BY_EMP_ID'):
    #         # get the id
    #         id = inp.split(' ')[1]
    #         # execute the stored procedure
    #         oc.call_GET_ALL_PACKAGES_BY_EMP_ID(id)

    # # oc.exempluProcedura(10)
    # # oc.exempluFunctie(100, 20000)
    oc.closeConnection()
