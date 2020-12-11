X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/12/11/3
Message-ID: <CAH5JyZppNAdEWSjZo5d50Yy5O1pvc-UUksHf4NPmamqguyH_+Q@mail.gmail.com>
Date: Fri, 11 Dec 2020 13:39:06 +0000
From: Kaxil Naik <kaxilnaik@...che.org>
To: oss-security@...ts.openwall.com
Cc: users@...flow.apache.org
Subject: CVE-2020-17511: Apache Airflow Admin password gets logged in plain text
Content-Type: text/plain; charset=utf-8

Versions Affected: < 1.10.13

Description:
In Airflow < 1.10.13, when creating a user using airflow CLI, the password
gets logged in plain text in the Log table in Airflow Metadatase. Same
happened when creating a Connection with a password field.

Credit:
Ali Al-Habsi of Accellion

Thanks,
Kaxil,
on behalf of Apache Airflow PMC

