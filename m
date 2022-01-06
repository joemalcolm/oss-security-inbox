X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/06/8
Message-ID: <04d5ac43-d559-563f-9f39-e7455cbfbaeb@apache.org>
Date: Thu, 06 Jan 2022 17:48:38 +0000
From: Ryan Skraba <rskraba@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-43045: Apache Avro: Possible DOS vulnerabilities in C# Avro SDK 
Content-Type: text/plain; charset=utf-8

Description:

A vulnerability in the .NET SDK of Apache Avro allows an attacker to allocate excessive resources, potentially causing a denial-of-service attack.  This issue affects .NET applications using Apache Avro version 1.10.2 and prior versions.  Users should update to version 1.11.0 which addresses this issue.

This issue is being tracked as AVRO-3225,AVRO-3226

Credit:

Apache Avro would like to thank Philip Sanetra for reporting this issue.

