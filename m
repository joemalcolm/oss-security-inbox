X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/02/1
Message-ID: <573c0741-ba91-b802-06db-6b0704e0f687@apache.org>
Date: Fri, 02 Sep 2022 03:53:55 +0000
From: Jedidiah Cunningham <jedcunningham@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-38054: Apache Airflow: Session Fixation 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Airflow versions 2.2.4 through 2.3.3, the `database` webserver session backend was susceptible to session fixation.

Credit:

The Apache Airflow PMC would like to thank Kai Zhao for reporting this issue.

