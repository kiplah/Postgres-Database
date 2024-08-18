Server [localhost]: localhost
Database [postgres]: postgres
Port [5432]:  5432
Username [postgres]: postgres
Password for user postgres:

psql (16.2)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \i C:/Users/Kiplah/Desktop/nasa.sql
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
DROP TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1

postgres=# \dt
              List of relations
 Schema |      Name       | Type  |  Owner
--------+-----------------+-------+----------
 public | nasa_assigned   | table | postgres
 public | nasa_astronaut  | table | postgres
 public | nasa_mission    | table | postgres
 public | nasa_project    | table | postgres
 public | nasa_spacecraft | table | postgres

(5 rows)

postgres=# SELECT astroname, death, (death - birth) AS age_at_death
postgres-#  FROM nasa_astronaut
postgres-# WHERE death >= 1990
postgres-# ORDER BY astroname;
         astroname         | death | age_at_death
---------------------------+-------+--------------
 Conrad, Charles           |  1999 |           69
 Cooper, Gordo             |  2004 |           77
 Evans, Ron                |  1990 |           57
 Irwin, James              |  1991 |           61
 Roosa, Stu                |  1994 |           61
 Shepard, Alan             |  1998 |           75
 Slayton, Deke             |  1993 |           69
(7 rows)


postgres=#  SELECT nm.projectname, nm.missionno, nm.launchyear, ns.craftname
postgres-# FROM nasa_mission nm
postgres-#  JOIN nasa_spacecraft ns ON nm.projectname = ns.projectname AND nm.missionno = ns.missionno
postgres-# WHERE nm.launchyear < 1972 AND ns.crafttype = 'LM'
postgres-#  ORDER BY ns.craftname;
   projectname   | missionno | launchyear |      craftname
-----------------+-----------+------------+----------------------
 Apollo          |        14 |       1971 | Antares
 Apollo          |        13 |       1970 | Aquarius
 Apollo          |        11 |       1969 | Eagle
 Apollo          |        15 |       1971 | Falcon
 Apollo          |        12 |       1969 | Intrepid
 Apollo          |        10 |       1969 | Snoopy
 Apollo          |         9 |       1969 | Spider
(7 rows)


postgres=# SELECT * FROM nasa_mission
postgres-# JOIN nasa_spacecraft ON nasa_mission.projectname = nasa_spacecraft.projectname
postgres-#                       AND nasa_mission.missionno = nasa_spacecraft.missionno;
   projectname   | missionno | missiontype | launchyear | launchmonth | launchday | days | hours | minutes |                                   description                                    |   projectname   | missionno | crafttype  |      craftname
-----------------+-----------+-------------+------------+-------------+-----------+------+-------+---------+----------------------------------------------------------------------------------+-----------------+-----------+------------+----------------------
 Mercury         |         1 | SO          |       1961 |           5 |         5 |    0 |     0 |      15 | First American into space
                                              | Mercury         |         1 | capsule    | Freedom 7
 Mercury         |         2 | SO          |       1961 |           7 |        21 |    0 |     0 |      15 | Capsule sank after splashdown                                                    | Mercury         |         2 | capsule    | Liberty Bell 7
 Mercury         |         3 | EO          |       1962 |           2 |        20 |    0 |     4 |      55 | First American into orbit
                                              | Mercury         |         3 | capsule    | Friendship 7
 Mercury         |         4 | EO          |       1962 |           5 |        24 |    0 |     4 |      56 | Cronkite: We may have lost an astronaut                                          | Mercury         |         4 | capsule    | Aurora 7
 Mercury         |         5 | EO          |       1962 |          10 |         3 |    0 |     9 |      13 |
                                              | Mercury         |         5 | capsule    | Sigma 7
 Mercury         |         6 | EO          |       1963 |           5 |        15 |    1 |    10 |      20 |
                                              | Mercury         |         6 | capsule    | Faith 7
 Gemini          |         3 | EO          |       1965 |           3 |        23 |    0 |     4 |      53 | First Ham Sandwich in Space                                                      | Gemini          |         3 | capsule    | Molly Brown
 Apollo          |         9 | EO          |       1969 |           3 |         3 |   10 |     1 |       0 |
                                              | Apollo          |         9 | CSM        | Gum Drop
 Apollo          |         9 | EO          |       1969 |           3 |         3 |   10 |     1 |       0 |
                                              | Apollo          |         9 | LM         | Spider
 Apollo          |        10 | LO          |       1969 |           5 |        18 |    8 |     0 |       3 |
                                              | Apollo          |        10 | CSM        | Charlie Brown
 Apollo          |        10 | LO          |       1969 |           5 |        18 |    8 |     0 |       3 |
                                              | Apollo          |        10 | LM         | Snoopy
 Apollo          |        11 | LL          |       1969 |           7 |        16 |    8 |     3 |      19 | One Small Step for [a] man, one giant leap for mankind                           | Apollo          |        11 | CSM        | Columbia
 Apollo          |        11 | LL          |       1969 |           7 |        16 |    8 |     3 |      19 | One Small Step for [a] man, one giant leap for mankind                           | Apollo          |        11 | LM         | Eagle
 Apollo          |        12 | LL          |       1969 |          11 |        14 |   10 |     4 |      36 | It might have been a small step for Neil, but it was a big one for me            | Apollo          |        12 | CSM        | Yankee Clipper
 Apollo          |        12 | LL          |       1969 |          11 |        14 |   10 |     4 |      36 | It might have been a small step for Neil, but it was a big one for me            | Apollo          |        12 | LM         | Intrepid
 Apollo          |        13 | LF          |       1970 |           4 |        11 |    5 |    22 |      54 | Houston, we have a problem
                                              | Apollo          |        13 | CSM        | Odyssey
 Apollo          |        13 | LF          |       1970 |           4 |        11 |    5 |    22 |      54 | Houston, we have a problem
                                              | Apollo          |        13 | LM         | Aquarius
 Apollo          |        14 | LL          |       1971 |           1 |        31 |    9 |     0 |       0 |
                                              | Apollo          |        14 | CSM        | Kitty Hawk
 Apollo          |        14 | LL          |       1971 |           1 |        31 |    9 |     0 |       0 |
                                              | Apollo          |        14 | LM         | Antares
 Apollo          |        15 | LL          |       1971 |           7 |        26 |   12 |     7 |      12 | Man must explore; First use of lunar rover                                       | Apollo          |        15 | CSM        | Endeavour
 Apollo          |        15 | LL          |       1971 |           7 |        26 |   12 |     7 |      12 | Man must explore; First use of lunar rover                                       | Apollo          |        15 | LM         | Falcon
 Apollo          |        16 | LL          |       1972 |           4 |        16 |   11 |     1 |      51 |
                                              | Apollo          |        16 | CSM        | Casper
 Apollo          |        16 | LL          |       1972 |           4 |        16 |   11 |     1 |      51 |
                                              | Apollo          |        16 | LM         | Orion
 Apollo          |        17 | LL          |       1972 |          12 |         7 |   12 |    13 |      51 |
                                              | Apollo          |        17 | CSM        | America
 Apollo          |        17 | LL          |       1972 |          12 |         7 |   12 |    13 |      51 |
                                              | Apollo          |        17 | LM         | Challenger
(25 rows)


postgres=#