//Compile command gcc lite.c -lsqlite3 -o lite

#include <sqlite3.h>
#include <stdio.h>

int main(int argc, char **argv) {
    sqlite3 *db;
    sqlite3_stmt *stmt;

    int rc = sqlite3_open("/home/tj22981/vagrant/sampledata/census/census.db", &db);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "Cannot open database: %s\n", sqlite3_errmsg(db));
        sqlite3_close(db);
        return 1;
    }

    rc = sqlite3_prepare_v2(db, "SELECT * FROM Region", -1, &stmt, NULL);
    if (rc != SQLITE_OK) {
        fprintf(stderr, "Cannot prepare statement: %s\n", sqlite3_errmsg(db));
        sqlite3_close(db);
        return 1;
    }

    while (sqlite3_step(stmt) == SQLITE_ROW) {
        const unsigned char *code = sqlite3_column_text(stmt, 0);
        const unsigned char *parent = sqlite3_column_text(stmt, 1);
        const unsigned char *name = sqlite3_column_text(stmt, 2);
        printf("%s, %s, %s\n", code, parent, name);
    }

    sqlite3_finalize(stmt);
    sqlite3_close(db);

    return 0;
}

