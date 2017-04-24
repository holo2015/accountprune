# accountprune
Automatic account pruning system of OS X/macOS


This system is designed to removed accounts from the system that have not been logged into recently.

It relies on a timestamp being set (.loginTimeStamp) in a user's home folder via the companion script (loginTimeStamp.sh).  If the timestamp is not found when the process runs in purge mode, it is set for a user at that point (making the time stamp helper not 100% nessesary, but it makes it more accurate)

Scheduling is handled via a LaunchDaemon in production, but the command can be called at any point manually via command line.

Due to the nature of needing to read inside other accounts (and potentially remove them) root access is required. (sudo works just fine from a privledged account)

<pre>
Usage: /usr/local/bin/accountprune [option...] value

   -c, --check		Check current time stamps for all users on the system

   -u, --user		Check status for specific user
				ex: /usr/local/bin/accountprune -u jdoe

   -k, --pruneUser	Prune account for specific username
				ex: /usr/local/bin/accountprune -k jdoe

   -P, --pruneAll	Prune ALL accounts that are over the threshold

   -t, --threshold	Set new threshold value.  Input value is the number
			of days to wait after last login before account is
			purged.
				ex: /usr/local/bin/accountprune -t 5
				sets threshold value to 5 days

   -i, --immune		Change immunity from purge for specific username
				ex: /usr/local/bin/accountprune -i jdoe

   -s, --system		Displays environment variables and status
</pre>

The current version uses <b>Outset</b> to handle the login time stamps for users and shedules automatic pruning for 2:00 am daily.
