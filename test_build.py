import subprocess
import os

# # Define parent directory
# parent_dir = os.getcwd()

# # Change directory
# try:
#     image_build_dir = os.chdir(f"{parent_dir}/jenkins-agent")
# except FileNotFoundError:
#     print("Error: The specified directory does not exist.")
# except PermissionError:
#     print("Error: Insufficient permissions to access the directory.")
# except NotADirectoryError:
#     print("Error: The specified path is not a directory.")

# Build image
try:
    build_image = subprocess.run(['./jenkins-agent/test-build.sh'], capture_output=True, text=True)
    build_image_stdout = build_image.stdout
    build_image_stderr = build_image.stderr
    build_image_returncode = build_image.returncode

    if build_image_returncode != 0:
        print(f"Error during build:\n{build_image_stderr}")
    else:
        print(f"Successful build!\n{build_image_stdout}")

except subprocess.CalledProcessError as e:
    print(F"ERROR:\n{e}")


