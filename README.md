# chaos-hunter
This Bash script automates the collection of subdomains and target data from the Chaos project by ProjectDiscovery. It downloads the index file, retrieves all available data archives, and extracts the contents, ultimately consolidating the information into a single file named alltargets.txt. The resulting file provides a comprehensive list of targets, useful for cybersecurity researchers, penetration testers, and bug bounty hunters looking to discover subdomains and other attack surfaces for further investigation.

## Description :
The Chaos Target Hunter is a Bash script designed to automate the process of gathering target data from the Chaos Project by ProjectDiscovery. The Chaos Project is a community-driven initiative that collects and shares a massive repository of DNS records for domains. The script fetches a list of available target datasets, downloads the data, and consolidates it into a single file for further analysis.

This tool is particularly useful for cybersecurity researchers, penetration testers, and bug bounty hunters who are looking to discover subdomains, attack surfaces, or other reconnaissance information about various organizations. By automating the process of data retrieval and aggregation, it saves time and effort, allowing users to focus on analysis and exploitation.

## Key Features
 * Automated Data Retrieval: Downloads the latest index of available datasets and fetches corresponding files automatically.
 * Data Extraction and Consolidation: Unzips the downloaded archives and combines all data into a single output file.
 * Target Discovery: Generates a comprehensive list of subdomains and other targets for further security testing.
 * Community-Driven Data Source: Leverages the Chaos Project's large, constantly updated dataset.

## Installation and Setup
**Prerequisites**
Before running the script, ensure your system has the following:
  * A Unix-based operating system (Linux, macOS, or Windows Subsystem for Linux).
  * `wget`, `sed`, `unzip`, and grep installed (these are typically available by default on most Unix-based systems).

## Installation Steps
1. Clone or Download the Script
Clone the GitHub repository or download the script file `chaoshunt.sh` to your local system.
```
git clone https://github.com/lamcodeofpwnosec/chaos-hunter.git
cd chaos-hunter
```
2. Make the Script Executable
Change the script's permissions to make it executable.
```
chmod +x chaoshunt.sh
```
3. Run the Script
Execute the script directly from the command line:
```
./chaoshunt.sh
```
  * The script will automatically download the index file, retrieve target data, unzip the files, and consolidate the results into `alltargets.txt`.

## Verify the Output
 * Once the script finishes, the aggregated data will be saved in a file named `alltargets.txt`.
 * You can view the file using a text editor or any command-line tool:
```
cat alltargets.txt
```

> [!NOTE]
> Copyright [©lamcodeofpwnosec](https://github.com/lamcodeofpwnosec/)

