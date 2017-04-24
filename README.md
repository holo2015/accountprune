# accountprune
Account pruning system.
This system is designed to removed accounts from the system that have not been logged into recently. Pruning is a scheduled process, and does not need to be triggered manually, however there are options for interacting with the system listed below.
Usage: ./accountprune [option...] value

   -c, --check		Check current time stamps for all users on the system

   -u, --user		Check status for specific user
				ex: ./accountprune -u micauser

   -k, --pruneUser	Prune account for specific username
				ex: ./accountprune -k micauser

   -P, --pruneAll	Prune ALL accounts that are over the threshold

   -t, --threshold	Set new threshold value.  Input value is the number
			of days to wait after last login before account is
			purged.
				ex: ./accountprune -t 5
				sets threshold value to 5 days

   -i, --immune		Change immunity from purge for specific username
				ex: ./accountprune -i micauser

   -s, --system		Displays environment variables and status
