# whatsapp-database-merger

SQL scripts to merge two (or more) whatsapp (decrypted) database with ease and performance. It basically take the data in the newest and put it on top of the pile in the older.

The resulting database will also be in decrypted. To use it, it must either be moved to `/data/data/com.XXwhatsapp/databases` on a rooted phone,
  or otherwise encrypted again and restored as usual in /com.XXwhatsapp/databases.
  
### Usage

Download the scripts up here.

The easy way is to open your databases in [dbeaver](https://dbeaver.io/download/) 

Database > new connexion > sqlite > open : select the db file

open new file (ctrl + O) > open each script > for each script connect it to the right base > ![click N/A up in the bar](https://user-images.githubusercontent.com/43207983/167259262-9b1cc634-8c6c-4fa1-a263-654e38c99c01.png)
(Further details in each script commented at the top of the script)

Update the path to the db files in the scripts.
 
Execute each script 1 at a time (Alt + X or click 3rd icon from the top![3rd button](https://user-images.githubusercontent.com/43207983/167259327-9cf1e47d-486f-4908-a8d2-1b6e5b17b342.png))

Right click on the destination database, which I name the "oldest" in the script, and disconnect it. Close dbeaver, normaly next to your dbs the file named db_wal.db should be emptied.

Your destination base is ready for restoration.

### Comparison, limitations & to-do list

In comparison to [natario's merger](https://github.com/natario1/whatsapp-database-merger/) this way should not abandon data or encounter problem for large message content. It also runs in seconds compared to hours with natario's on my dbs.

The dbs are supposed to not be overlapping. Message duplication would appear if it's not the case.To avoid it removing duplicates is necessary in the new db.

Tables user_device and jid are not well handled, it creates duplicate for couples of user/device. I didn't see it bring an issue in app use. Improving 
it would need to think about ow to map user/device from the new base to the old. Existing couples should be dropped, couple with corresponding to new device for the existing user should increments key_index column. 
