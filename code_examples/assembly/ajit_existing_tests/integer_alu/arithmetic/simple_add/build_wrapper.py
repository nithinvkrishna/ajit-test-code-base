#!/usr/bin/env python3

import os
import re
import subprocess
from pathlib import Path

def main():
    compile_script = 'compile.sh'

    # Step 1: Get the currently used .s file
    current_s = get_current_s_file(compile_script)

    # Step 2: List all .s files in ../
    s_files = list_s_files()

    # Step 3: Decide which one to use
    new_s = choose_s_file(s_files, current_s)

    # Step 4: If needed, update compile.sh
    update_compile_script(compile_script, current_s, new_s)

    # Step 5: Run compile.sh to trigger build
    run_compile(compile_script)

if __name__ == "__main__":
    main()

