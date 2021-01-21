X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/01/21/1
Message-ID: <CAFN+3hpkaRATUqPRiwJfmYpYKyFov3skdDt2LxFBqDfuF7de3A@mail.gmail.com>
Date: Thu, 21 Jan 2021 09:58:53 +0800
From: wjm wjm <wujimin@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-17532: ServiceComb Yaml remote deserialization vulnerability
Content-Type: text/plain; charset=utf-8

Description:

When handler-router component is enabled in servicecomb-java-chassis,
authenticated user may inject some data and cause arbitrary code
execution.

The problem happens in versions between 2.0.0 ~ 2.1.3 and fixed in 2.1.5

This issue is being tracked as SCB-2145

