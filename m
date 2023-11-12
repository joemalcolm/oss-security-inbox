X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/12/2
Message-ID: <3a177569-b692-e98c-7996-1bd4bec9e6d5@apache.org>
Date: Sun, 12 Nov 2023 11:11:12 +0000
From: Ephraim Anierobi <ephraimanierobi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-42781: Apache Airflow: Permission verification bypass allows viewing dagruns of other dags 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Airflow before 2.7.3

Description:

Apache Airflow, versions before 2.7.3, has a vulnerability that allows an authorized user who has access to read specific DAGs only, to read information about task instances in other DAGs.  This is a different issue than CVE-2023-42663 but leading to similar outcome.
Users of Apache Airflow are advised to upgrade to version 2.7.3 or newer to mitigate the risk associated with this vulnerability.

Credit:

balis0ng (finder)
Hussein Awala (remediation developer)

References:

https://github.com/apache/airflow/pull/34939
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-42781

