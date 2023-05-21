# scalar Functions --------> ucase(),lcase(),mid(),round(),length(),format()
# 1--> ucase -> convert text into uppercase 
select ucase("Welcome to Edubridge ! ") as WelComeMessage;
select studentname,ucase(studentname) as uppercase from edubridge;
#lcase
select studentname, lcase(studentname) as uppercase from edubridge;
# mid 
select mid("JavaFullStack",2,3) as middata;#ava
select mid("JavaFullStack",1,4) as middata; # Java
select mid("JavaFullStack",9,5) as middata;#Stack
select studentname ,mid(studentname,1,5) as newData from edubridge;
# round
select round (23.56) as val;#24
select round (23.26) as val;#23
select overallscore, round(overallscore) as RoundScore from edubridge;
#length
select studentname,length(studentname) as totalLength from edubridge;
#format
select format(2345.68769,2) as specificForm;#2,345.69
select format(2345.68769,1) as specificForm;#2,345.7
select studentname,overallscore, format(overallscore,1) as FormatedScore from edubridge;

