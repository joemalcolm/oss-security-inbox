X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/09/16/2
Message-ID: <CAH5JyZrUWahjsjoU4pRRTSJwcCxcn_VqybXvhkpVdhwU_TmbKA@mail.gmail.com>
Date: Wed, 16 Sep 2020 12:27:58 +0100
From: Kaxil Naik <kaxilnaik@...il.com>
To: oss-security@...ts.openwall.com
Cc: dev@...flow.apache.org
Subject: [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12
Content-Type: text/plain; charset=utf-8

Versions Affected: <= 1.10.12
Description:
The "origin" parameter passed to some of the endpoints like '/trigger' was
vulnerable to XSS exploit.

Credit:
The issue was independently discovered and reported by Ali Al-Habsi of
Accellion & Everardo Padilla Saca.

Thanks,
Kaxil,
on behalf of Apache Airflow PMC

