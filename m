X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/08/23/4
Message-ID: <df82d924-d2b9-dabd-7463-de632d8aa201@apache.org>
Date: Wed, 23 Aug 2023 10:33:44 +0000
From: Ephraim Anierobi <ephraimanierobi@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-37379: Apache Airflow: Exposure of sensitive connection information, DOS and SSRF on "test connection" feature 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Airflow before 2.7.0

Description:

Apache Airflow, in versions prior to 2.7.0, contains a security vulnerability that can be exploited by an authenticated user possessing Connection edit privileges. This vulnerability allows the user to access connection information and exploit the test connection feature by sending many requests, leading to a denial of service (DoS) condition on the server. Furthermore, malicious actors can leverage this vulnerability to establish harmful connections with the server.

Users of Apache Airflow are strongly advised to upgrade to version 2.7.0 or newer to mitigate the risk associated with this vulnerability. Additionally, administrators are encouraged to review and adjust user permissions to restrict access to sensitive functionalities, reducing the attack surface.

Credit:

kuteminh11 (finder)
khoabda of Zalo Security Team (finder)
Sayooj B Kumar(Team bi0s & CRED Security team) (finder)
Son Tran from VNPT - VCI (finder)
KmhlYXJ0 (finder)

References:

https://github.com/apache/airflow/pull/32052
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-37379

