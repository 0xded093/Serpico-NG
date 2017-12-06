# Serpico-NG
## SimplE RePort wrIting and CollaboratiOn tool NEXT-GENERATION
Serpico was a cool open-source penetration testing report generation and collaboration tool. It was developed to cut down on the amount of time it takes to write a penetration testing report, and now it's even better!

## Installation

### Linux / OS X / Windows

Clone the repo:
```
git clone https://github.com/dedins/Serpico-NG
```

Initialize the database:
```
ruby scripts/first_time.rb
```

And then start Serpico:
```
ruby serpico.rb
```

## About Serpico
Serpico is at its core a report generation tool but targeted at creating information security reports. When building a report the user adds "findings" from the template database to the report. When there are enough findings, click 'Generate Report' to create the docx with your findings. The docx design comes from a Report Template which can be added through the UI; a default one is included. The Report Templates use a custom Markup Language to stub the data from the UI (i.e. findings, customer name, etc) and put them into the report.

## NEW Features
#### Import XML report from Nexpose
**Nexpose parser added.**
Now you can import findings directly from Nexpose XML report and have your doc report done in seconds.
![Import from Nexpose](https://raw.githubusercontent.com/dedins/Serpico-NG/master/docs/images/short-import_from_nexpose.gif)

#### New Statistics & Charts
**Philosophy: Having things under control.**
Statistics and beatiful charts (Thanks Chart.js) were added.
![Calendar](https://raw.githubusercontent.com/dedins/Serpico-NG/master/docs/images/stats.gif)

#### New risk scoring system w/ auto CVSS Calculator
**Philosophy: Calculating risk of findings should be easy.**
Now the analyst is able to calc the CVSS (v2) score directly from the finding view, keeping the focus on it.
![CVSS](https://raw.githubusercontent.com/dedins/Serpico-NG/master/docs/images/cvss.gif)

#### Generate Remediation Plan in XLSX
**XLSX Remediation Plan**
Generate the remediation plan in just one click.

#### Calendar 
**Philosophy: Scheduling.**
Now you can place your tasks over time and see the history on a nice calendar view
![Calendar](https://raw.githubusercontent.com/dedins/Serpico-NG/master/docs/images/calendar.gif)

#### Backup & Restore
Now you can backup database (including attachments) and restore in matter of seconds! (See Wiki)

#### Auto Summarize of findings overview thanks to NLP
**Philosophy: Automation.**
A Natural Language Processing library was added, it summarize the description of findings for you, saving precious time.

## Legacy Features
#### Report Template Editing is Easy
**Philosophy: Editing a report template should be easy.**
During peer review we would constantly ran into "little things" we were fixing from the report template; an extra space here, a misspelling there. But it adds up. With Serpico, "fix" the report template, upload it back through the UI, and generate a new report; the error should be fixed permanently.

#### Template Database
**Philosophy: We do not need to write most findings from scratch.**
Most findings have been found in a previous assessment. In Serpico, all authors can pull findings from the template database and add to the report. A user can also 'Upload' a finding they made into the Template Database to share with everyone.

#### Attachment Collaboration
**Philosophy: It should be easy to share files with teammates.**
Use the 'Add Attachment' functionality to store a file (e.g. screenshots, nmap scans) or share with teammates on a pen test. No thumb drive swapping or e-mailing, just log into the UI and download the files. At the end of the assessment everything traded or generated for that assessment is in one place.


## Microsoft Word Meta-Language
The Meta language used for Microsoft Word was designed to be as simple as possible while still serving enough features to create a basic penetration test report.

See also:

* [Serpico Meta-Language In Depth](https://github.com/dedins/Serpico-NG/wiki/Serpico-NG-Meta-language-In-Depth)

* [Inserting Screenshots](https://github.com/dedins/Serpico-NG/wiki/Inserting-Screenshot)


## Support
* [Wiki](https://github.com/dedins/Serpico-NG/wiki): We try to add most common questions to the wiki.
* [Issue](https://github.com/dedins/Serpico-NG/issues/new) : If you have found a bug or would like a new feature
