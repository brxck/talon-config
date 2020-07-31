import re
import subprocess
from pathlib import Path
from talon import Module

mod = Module()

unquoted_whitespace_pattern = re.compile(
    r"\s+(?=(?:[^'\"]*['\"][^'\"]*['\"])*[^'\"]*$)"
)


@mod.action_class
class Actions:
    def system_command(cmd: str):
        """Execute a command on the system."""
        command = unquoted_whitespace_pattern.split(cmd)
        subprocess.Popen(
            command, cwd=Path.home(), stdout=subprocess.PIPE, stderr=subprocess.STDOUT
        )
