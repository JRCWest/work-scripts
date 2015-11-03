import smtplib
import datetime

def notify():
	s = smtplib.SMTP('smtp.gmail.com')
	s.set_debuglevel(1)
	s.ehlo()
	s.starttls()
	s.ehlo()
	s.login(user, password)
	s.sendmail(fromEmail, toEmail, msg)
	s.close()
	