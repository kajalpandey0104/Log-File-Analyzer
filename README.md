# 📊 Log File Analyzer

> A Bash-based Log File Analyzer that parses Apache/Nginx access logs and generates detailed reports in both **Text** and **HTML** formats.

![Platform](https://img.shields.io/badge/Platform-Linux-blue)
![Language](https://img.shields.io/badge/Language-Bash-green)
![Tools](https://img.shields.io/badge/Tools-awk%20%7C%20grep%20%7C%20sort%20%7C%20uniq-orange)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)

---

# 📌 Project Overview

Log File Analyzer is a Linux Shell Scripting project that analyzes Apache and Nginx access logs to generate useful insights about web traffic.

The script extracts important metrics such as:

- Total Requests
- Top Client IP Addresses
- Top Requested URLs
- HTTP Status Code Distribution
- Error Rate
- Requests Per Hour
- Text Report Generation
- HTML Report Generation

This project is implemented **entirely in Bash**, using standard Linux utilities such as **awk, grep, sort, uniq, wc, and date**.

---

# 🚀 Features

✅ Command-line argument validation

✅ Invalid file handling

✅ Empty file handling

✅ Total Request Count

✅ Top 10 Client IP Addresses

✅ Top 10 Requested URLs

✅ HTTP Status Code Distribution

✅ Error Rate Calculation

✅ Requests Per Hour Analysis

✅ Text Report Generation

✅ HTML Report Generation

---

# 🛠 Technologies Used

- Bash Shell Scripting
- Linux Command Line
- awk
- grep
- sort
- uniq
- head
- wc
- date

---

# 📂 Project Structure

```text
File Analyzer/
│
├── log_analyzer.sh
├── sample_access.log
├── report_YYYY-MM-DD.txt
├── report.html
├── README.md
```

---

# ⚙ How It Works

The script performs the following steps:

### Step 1

Accepts the log file as a command-line argument.

```bash
./log_analyzer.sh sample_access.log
```

---

### Step 2

Validates whether the file exists.

---

### Step 3

Counts the total number of requests.

---

### Step 4

Extracts the Top 10 IP addresses.

---

### Step 5

Finds the Top 10 requested URLs.

---

### Step 6

Calculates HTTP Status Code Distribution.

---

### Step 7

Calculates Error Rate.

Formula:

```text
Error Rate = (4xx + 5xx Requests / Total Requests) × 100
```

---

### Step 8

Calculates Requests Per Hour.

---

### Step 9

Generates

- Text Report
- HTML Report

---

# ▶️ Installation

Clone the repository

```bash
git clone https://github.com/your-username/log-file-analyzer.git
```

Go to project directory

```bash
cd "File Analyzer"
```

Give execute permission

```bash
chmod +x log_analyzer.sh
```

Run

```bash
./log_analyzer.sh sample_access.log
```

---

# 📄 Sample Output

```text
File Found

Total Requests : 5

===== Top 10 IP Addresses =====

2 192.168.1.10
2 10.0.0.5
1 172.16.0.3

===== Top 10 Requested URLs =====

2 /index.html
1 /login
1 /contact
1 /about

===== Status Code Distribution =====

2 200
1 302
1 404
1 500

===== Error Rate =====

Total Errors : 2

Error Rate : 40.00%

===== Requests Per Hour =====

3 02/Jul/2026:10
2 02/Jul/2026:11

Report Generated Successfully!
```

---

# 📊 Reports Generated

## Text Report

```
report_YYYY-MM-DD.txt
```

Contains complete analysis.

---

## HTML Report

```
report.html
```

Open in any browser.

---

# 📝 Commands Used

| Command | Purpose |
|----------|---------|
| awk | Parse log fields |
| grep | Search and filter logs |
| sort | Sort output |
| uniq | Count unique values |
| head | Display top results |
| wc | Count total requests |
| date | Generate report filename |

---

# 📖 Sample Log Format

```text
192.168.1.10 - - [02/Jul/2026:10:20:30 +0000] "GET /index.html HTTP/1.1" 200 1543
```

---

# 📈 Future Improvements

- Support for `.gz` compressed log files
- Live monitoring (`--watch`)
- DDoS Detection
- Graphical Charts
- Email Report
- Interactive Dashboard

---

# 📸 Project Screenshots

## Terminal Output

> Add a screenshot here

Example:

```
images/terminal-output.png
```

---

## HTML Report

> Add a screenshot here

Example:

```
images/report-html.png
```

---

# 🎯 Learning Outcomes

Through this project, I learned:

- Bash Shell Scripting
- File Handling
- Linux Command Line
- Text Processing with awk
- grep, sort and uniq
- Report Generation
- Log File Analysis
- HTTP Status Codes

---

# 👩‍💻 Author

**Kajal Pandey**

Frontend Developer | Learning Linux & Shell Scripting

GitHub: https://github.com/your-username

LinkedIn: https://linkedin.com/in/your-profile

---

# ⭐ If you found this project useful, don't forget to star the repository!