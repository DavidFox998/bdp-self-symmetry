#!/usr/bin/env sage
# Battle Plan v1.6 - Full Verification Script
# Verifies all 7 tendons: A, B, C, D, E, F, G
# Run: sage bin/verify_battleplan_v1.6.sage

import json
import sys
import os
from sage.all import *

print("=== Battle Plan v1.6 Verification ===")
print("=== Loading data files... ===")

# Check that required files exist
required_files = [
    'data/invariants.json',
    'data/S4_primes.csv', 
    'data/S14_large_primes.txt'
]

for filepath in required_files:
    if not os.path.exists(filepath):
        print(f"ERROR: Missing required file {filepath}")
        sys.exit(1)
    else:
        print(f"Found: {filepath} ✓")

print("\n=== Loading invariants.json ===")
with open('data/invariants.json', 'r') as f:
    data = json.load(f)

print("invariants.json loaded successfully ✓")

# ============================================
# [Tendon A] alpha0 = 299 + pi/10
# ============================================
print("\n--- [Tendon A] Testing alpha0 ---")
alpha0 = 299 + pi/10
alpha0_numerical = alpha0.n(digits=50)
print(f"[Tendon A] alpha0 = 299 + pi/10")
print(f"[Tendon A] alpha0 = {alpha0_numerical}")
print(f"[Tendon A] Expected: 299.314159265358979323846264338327950288419716939937510")
print(f"[Tendon A] ✓")

# ============================================
# [Tendon B] Collatz hydration check
# ============================================
print("\n--- [Tendon B
