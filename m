X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/02/3
Message-ID: <c44d5503-8393-4048-2b2b-5bc3ddac3a43@apache.org>
Date: Fri, 02 Sep 2022 03:55:07 +0000
From: Jedidiah Cunningham <jedcunningham@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-38170: Apache Airflow: Overly permissive umask for deamons 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Airflow prior to 2.3.4, an insecure umask was configured for numerous Airflow components when running with the  `--deamon` flag which could result in a race condition giving world-writable files in the Airflow home directory and allowing local users to expose arbitrary file contents via the webserver.

Mitigation:

Run without the `--deamon` flag via a process supervisor instead (systemd, runit, etc.).

Credit:

The Apache Airflow PMC would like to thank Harry Sintonen for reporting this issue.

