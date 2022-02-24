X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/24/2
Message-ID: <7ed76c19-838b-fe97-af15-623df2ce7a35@apache.org>
Date: Thu, 24 Feb 2022 18:00:13 +0000
From: Jedidiah Cunningham <jedcunningham@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-45229: Apache Airflow: Reflected XSS via Origin Query Argument in URL 
Content-Type: text/plain; charset=utf-8

Severity: high

Description:

It was discovered that the "Trigger DAG with config" screen was susceptible to XSS attacks via the `origin` query argument.

This issue affects Apache Airflow versions 2.2.3 and below. 

Credit:

The Apache Airflow PMC would like to thank both Bogdan Kurinnoy of the Samsung R&D Institute Ukraine (SRK) and Ali Al-Habsi of Accellion for independently discovering and reporting this issue.

