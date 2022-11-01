X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/01/23
Message-ID: <6a2839aa-8d22-ae93-a8d7-6676717cee07@apache.org>
Date: Tue, 01 Nov 2022 20:59:26 +0000
From: Jedidiah Cunningham <jedcunningham@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43985: Apache Airflow: Open Redirect 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Airflow versions prior to 2.4.2, there was an open redirect in the webserver's `/confirm` endpoint.

Credit:

The Apache Airflow PMC would like to thank Axel Chong (@Haxatron) [https://hackerone.com/haxatron1] for reporting this issue.

References:

https://github.com/apache/airflow/pull/27143


