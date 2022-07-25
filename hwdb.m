%%
% * Enter Sudent Name: Fernando Ramirez 
% * Enter Date: 18Oct2020

%% Database Homework Template
% Before working on this assignment, add the bmes.ahmet folder to your
% Matlab path. You can use addpath() in the command window or use the
% Home->SetPath in Matlab's menu bar.



%% ===== Yeast apoptosis genes (20pt)
% Write a GO query to find the names of yeast genes that are associated
% with "execution phase of apoptosis". Here, we define "yeast" as any
% organism under the genus Saccharomyces.
%
% Fetch the results of your GO query from the web and display them as
% output from your python/Matlab code.











%% ===== mirdb (80pt)
%% Download file & Set up db connection
% This section is sufficient for downloading the data file and setting up
% the database connection. You may make changes/improvements or keep it as is.
% In the remainder of this problem, you need to use the mirtxtfile and db
% variables created here.

mirtxtfile='http://sacan.biomed.drexel.edu/lib/exe/fetch.php?rev=&media=course:bcomp2:db:homework_mirdb_dog75.txt';
mirtxtfile=bmes.downloadurl(mirtxtfile);

mirdbfile = [bmes.datadir()  '/mirdb.sqlite'];
if bmes.sys_issacan; mirdbfile='../homework_mirdb_dog75.sqlite'; end
fclose(fopen(mirdbfile,'a'));
db = bmes_db(mirdbfile);

% Just some sqlite options to optimize & speed up operations.
db.exec('PRAGMA temp_store = 2');





%% (30pt) Create a database from mirdb data.
% * Any downloaded files should be stored elsewhere on your computer (i.e.,
% in a "Temporary" directory). 
% * Store the database elsewhere (in "Temporary" directory) on your
% computer; not within the same folder as your assignment. 
% The code in the section above already accomplishes the file download &
% location requirements. Just make use of mirtxtfile and db variables here.

















% If your database creation code does not work, you may use a database
% created by the instructor. Uncomment the following lines to use the
% instructor's database. If you are using the instructor's database, we
% will assume that your database creation code does not work.
%mirdbfile='http://sacan.biomed.drexel.edu/lib/exe/fetch.php?rev=&media=course:bcomp2:db:homework_mirdb_dog.sqlite';
%mirdbfile=bmes.downloadurl(mirdbfile);
%db = bmes_db(mirdbfile);



%% Find miRNAs for a target
% * (20pt) How many miRNAs are predicted to target XM_532324  ?




%%
%  * Show at most 10 miRNAs that are predicted to target XM_532324.



%% Find targets for a miRNA
% * (20pt) How many predicted targets of cfa-let-7a have a prediction score of at least 80?



%%
% * Show at most 10 predicted targets of cfa-let-7a that have a prediction score of at least 80.



%% Summarize miRNAs and target counts
% * (10pt) List the miRNAs and the number of their targets. (Each row of the result should contain a distinct miRNA). (Use count() and GROUP BY). Show only top 10 rows of the result.





