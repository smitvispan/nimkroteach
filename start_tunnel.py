import subprocess, os, time, signal, sys

BASE = os.path.dirname(os.path.abspath(__file__))
logfile = os.path.join(BASE, 'tunnel_url.txt')

with open(logfile, 'w') as f:
    proc = subprocess.Popen([
        'ssh', '-o', 'StrictHostKeyChecking=no', '-o', 'ServerAliveInterval=30',
        '-o', 'ExitOnForwardFailure=yes',
        '-R', '80:localhost:8000', 'nokey@localhost.run'
    ], stdout=f, stderr=subprocess.STDOUT, preexec_fn=os.setpgrp)

with open('/tmp/nimkro_tunnel_pid', 'w') as pf:
    pf.write(str(proc.pid))

try:
    proc.wait()
except: pass
