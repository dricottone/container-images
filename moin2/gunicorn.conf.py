import os

bind = "0.0.0.0:8080"

syslog = True
syslog_addr = "udp://" + os.getenv("LOGDEST", "127.0.0.1:514")
syslog_facility = "local7"

loglevel = "warning"

preload_app = True

