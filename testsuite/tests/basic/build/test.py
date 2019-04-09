"""
"""

from glob import glob
import os

from drivers.alr import run_alr


run_alr('get', 'hello')
os.chdir(glob('hello*')[0])
run_alr('build')
run_alr('build', '--online')

print('SUCCESS')
