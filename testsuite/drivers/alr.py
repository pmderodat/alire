"""
Helpers to run alr in the testsuite.
"""

import os.path
import subprocess

from e3.fs import mkdir


def prepare_env(dirname, env):
    """
    Prepare the environment to run "alr".

    This creates the `dirname` directory and update `env` (environment
    variables) to point to it.
    """
    dirname = os.path.abspath(dirname)
    mkdir(dirname)
    env['ALR_CONFIG'] = dirname


def run_alr(*args):
    """
    Run "alr" with the given arguments.

    This raises an exception if it exits with a non-zero status code.
    """
    subprocess.check_call(['alr'] + list(args))
