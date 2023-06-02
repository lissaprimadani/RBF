*** Settings ***

Library    Colletions
Library    DateTime
Library    Selenium
Variables    task1.py


*** Keywords ***
Step 1
    Log    Saya punya timun ${timun_awal} buah.

Step 2
    Log    Dalam perjalanan saya bertemu kancil, 

Step 3
    Log    dan timun saya dimakan ${timun_dimakan}.

Step 4
    Log    Timun saya sekarang tinggal ${timun_sisa}.
