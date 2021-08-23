filename mylog '<location>/logfile.log';
 options nosource;
*Skip this step if not using SAS EG or SAS Studio;
 data _null_;
 call execute("dm 'log;clear';");
 run;
 data _null_;
 infile mylog expandtabs;
 input;
 if index(_infile_,'0c'x) = 0 and index(lag(_infile_),'0c'x) = 0
 then put _infile_;
 run;
 options source;
