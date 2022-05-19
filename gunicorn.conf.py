# -*- coding: utf-8 -*-

import multiprocessing
import os

wsgi_app = os.getenv('WSGI_APP', 'app:app')
port = os.getenv('PORT', '80')
bind = os.getenv('BINDING', f'0.0.0.0:{port}')
workers = int(os.getenv('WEB_CONCURRENCY', multiprocessing.cpu_count() * 2))
threads = int(os.getenv('PYTHON_MAX_THREADS', 1))

# Send access and error logs to stdout
accesslog = '-'
errorlog = '-'
capture_output = False
