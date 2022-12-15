//DmlDemo.dmlInsertDemo_stndObj();
//DmlDemo.dmlInsert_cstmObj();
//DmlDemo.dmlUpdateDemo_1();
//DmlDemo.dmlUpdateDemo_3();
//DmlDemo.dmlInsertDemo_4();
//DmlDemo.dmlInsertDemo_5();
DmlDemo.dmlInsertMultiple_right();
//DmlDemo.dmlInsertMultiple_right2();
DmlDemo.dmlUpdatetMultiple_right1();

//List<Account> delAcc = [select id from account where name is like '%B.0%'];
//delete delAcc; 
//or
delete [select id from account where createddate = THIS_WEEK];