X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/12/11/4
Message-ID: <CAH5JyZrudDjNOeLXhj1eGbaDLrVFt3ffzQiNJPqYBTP0+bJXrg@mail.gmail.com>
Date: Fri, 11 Dec 2020 15:51:52 +0000
From: Kaxil Naik <kaxilnaik@...che.org>
To: oss-security@...ts.openwall.com
Cc: users@...flow.apache.org
Subject: CVE-2020-17513: Apache Airflow Server-Side Request Forgery (SSRF) in Charts & Query View
Content-Type: text/plain; charset=utf-8

Versions Affected: < 1.10.13

Description:
The Charts and Query View of the old (Flask-admin based) UI were vulnerable
for SSRF attack.

Thanks,
Kaxil,
on behalf of Apache Airflow PMC

