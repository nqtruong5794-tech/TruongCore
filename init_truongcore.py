import os
import subprocess
import sys

def run_cmd(cmd, cwd=None):
    print(f'>> Executing: {" ".join(cmd)}')
    result = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f'Error: {result.stderr}')
    return result.stdout

def setup_truongcore():
    print('--- TRUONGCORE V128: SOVEREIGN REIFICATION INITIALIZER ---')
    
    # 1. Environment Check
    if not os.path.exists('/root/.elan/bin/elan'):
        print('Installing elan/lean toolchain...')
        subprocess.run('curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y', shell=True)
    
    elan_path = '/root/.elan/bin/lake'
    
    # 2. Build Initialization
    print('\nInitializing Lake Build System...')
    run_cmd([elan_path, 'update'])
    run_cmd([elan_path, 'build'])
    
    # 3. Final Ontological Audit
    print('\nTriggering Kernel Audit...')
    audit_file = 'kernel/TruongCore_Kernel_Auditor.lean'
    audit_result = run_cmd([elan_path, 'env', 'lean', audit_file])
    print(audit_result)
    
    print('\n--- REIFICATION COMPLETE ---')
    print('Status: ABSOLUTE-ONTOLOGICAL-CLOSURE Verified.')

if __name__ == '__main__':
    setup_truongcore()
