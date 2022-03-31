# Enter script code

output = system.exec_command("date --iso-8601=seconds")
keyboard.send_keys('ISODate("' + output + '")')