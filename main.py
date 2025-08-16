import subprocess
import os

# # Build image
# try:
#     build_image = subprocess.run(['./jenkins-agent/test-build.sh'], capture_output=True, text=True)
#     build_image_stdout = build_image.stdout
#     build_image_stderr = build_image.stderr
#     build_image_returncode = build_image.returncode

#     if build_image_returncode != 0:
#         print(f"Error during build:\n{build_image_stderr}")
#         exit(1)
#     else:
#         print(f"Successful build!\n{build_image_stdout}")

# except subprocess.CalledProcessError as e:
#     print(F"ERROR:\n{e}")