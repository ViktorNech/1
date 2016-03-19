CONFIG = {
    'mode': 'django',
    'environment': {
	'PYTHONPATH': '/home/box/web/ask/qa',
	},
    # 'python': '/usr/bin/python',
    'args': (
 	'--bind=0.0.0.0:8000',
        '--workers=4',
        #'--timeout=0',
        'settings',
    ),
}
