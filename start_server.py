#!/usr/bin/env python3

import subprocess
import sys

def main():
    print("Starting PS-2 Agentic Honeypot System...")
    try:
        subprocess.run([sys.executable, "honeypot_server.py"], check=True)
    except KeyboardInterrupt:
        print("\nShutting down...")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()