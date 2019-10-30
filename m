X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/10/30/2
Message-Id: <BE259830-444F-44E4-B57E-25CD9D78476F@apache.org>
Date: Wed, 30 Oct 2019 09:06:24 +0000
From: Ash Berlin-Taylor <ash@...che.org>
To: users@...flow.apache.org, oss-security@...ts.openwall.com
Cc: dev@...flow.apache.org, Apache Security Team <security@...che.org>, Pawel.Kurylowicz@...uring.pl, Frantisek Uhrecky <frantisek.uhrecky@...adelo.com>, Marek Takac <marek.takac@...adelo.com>
Subject: [CVE-2019-12417] Apache Airflow stored xss and local file disclosure vulnerability <= 1.10.5 
Content-Type: text/plain; charset=utf-8

CVE-2019-12417: Stored XSS and Local File Disclosure vulnerability 

  Versions Affected:
  <= 1.10.5

  Description:
    A malicious admin user could edit the state of objects in the Airflow metadata database to execute arbitrary javascript on certain page views. This also presented a Local File Disclosure vulnerability to any file readable by the webserver process.

  Credit:
    Thanks to Pawel.Kurylowicz (of securing.pl), and Frantisek Uhrecky and Marek Takac (both of citadelo.com) for all independently reporting this vulnerability. 
 
Thanks,
Ash
Apache Airflow PMC member
