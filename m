X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/09/16/3
Message-ID: <4ef585a0-4e3f-1fba-af99-be43895bf464@apache.org>
Date: Thu, 16 Sep 2021 11:55:10 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-39239: Apache Jena: XML External Entity (XXE) vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: high

Description:

A vulnerability in XML processing in Apache Jena, in versions up to 4.1.0, may allow an attacker to execute XML External Entities (XXE), including exposing the contents of local files to a remote server.

Mitigation:

Users are advised to upgrade to Apache Jena 4.2.0 or later.

