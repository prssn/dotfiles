
from datetime import datetime
from dateutil import tz, relativedelta

stockholm_timezone = tz.gettz('Europe/Stockholm')
current_datetime = datetime.now(stockholm_timezone)
start_of_month = current_datetime.replace(day=1, hour=0, minute=0, second=0, microsecond=0)
keyboard.send_keys('ISODate("' + start_of_month.isoformat() + '")')