# script-bruteforcing
SSH Brute Force Script with Support for Multiple Users



Overview

This project provides a Bash script designed to perform brute force attacks on SSH services using the Patator tool. The script is specifically crafted to handle multiple usernames, testing them against a large dictionary of potential passwords. It systematically identifies valid credentials for each user and reports the results in real-time.

Objective

The primary goal of this project is to demonstrate an automated approach to testing the security of SSH services. It highlights the importance of strong passwords and robust configurations to mitigate the risk of brute force attacks.

Note: This script is strictly intended for educational and authorized security testing purposes. Unauthorized use is illegal and unethical.


Features

Multiple User Support:

The script reads a list of usernames from a file (user1.txt) and processes each user sequentially.
If a valid password is found for a user, the script immediately reports the result and proceeds to the next user.
Integration with Patator:

Leverages the Patator tool for performing brute force attempts.
Configurable to use any password dictionary (280000_parole_italiane.txt by default).


Efficiency and Automation:

Automatically stops testing a user once a valid password is identified, saving time and computational resources.
Ensures clean termination of Patator processes after successful attempts.
Clear Output:

Reports successful login attempts, including the username and matching password.
Displays progress for each user being tested, allowing easy monitoring of the attack.


How It Works

Input Requirements:
Target IP Address: The script prompts the user to input the IP address of the host running the SSH service.
Username List: The file user1.txt should contain the usernames to be tested, one per line. Ensure the file is placed in the correct directory.
Password Dictionary: The script uses a password file (280000_parole_italiane.txt) containing potential passwords for brute force attempts.
Execution Steps:
Initialize the Script:

Users are prompted to enter the target IP address.
Usernames from user1.txt are loaded into an array.
Perform Brute Force:

The script iterates through the username array, executing Patator for each user.
Patator tests all passwords from the dictionary against the SSH service for the current username.
Validation:

If a successful login is detected, the script displays the result, terminates the Patator process, and moves to the next user.
Completion:

The process repeats for all users in the list until either a valid password is found or the dictionary is exhausted.
A completion message is displayed once all users have been processed.

Penetration Testing:

Validate the strength of SSH credentials during authorized penetration testing engagements.
Identify weak passwords and demonstrate the risks of insufficient password policies.
Educational Purposes:

Train cybersecurity professionals and students on the methods and risks of brute force attacks.
Highlight the need for implementing robust security measures such as account lockout policies and two-factor authentication (2FA).
SSH Hardening Testing:

Test the effectiveness of SSH hardening configurations, such as limiting login attempts and disabling password-based authentication in favor of public key authentication.
Security and Ethical Considerations
This script must only be used on systems where you have explicit permission to conduct security testing.
Using this tool on unauthorized systems is a violation of legal and ethical standards.
Always adhere to local laws, organizational policies, and ethical guidelines while using this script.
Future Improvements
Parallel Execution: Enable simultaneous testing of multiple users to reduce overall runtime.
Customizable Configurations: Allow dynamic input for file paths, ports, or additional SSH options.
Result Logging: Save the results to a log file for further analysis and reporting.
Enhanced Error Handling: Include checks for missing files, invalid IP addresses, or interrupted processes.
