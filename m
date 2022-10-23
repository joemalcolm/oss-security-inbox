X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/10/23/2
Message-ID: <de7dfa60-f860-951d-5a58-8a60b7341b89@apache.org>
Date: Sun, 23 Oct 2022 15:04:39 +0000
From: Josh Fischer <joshfischer@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-42010: Apache Heron (Incubating): CRLF log injection 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

Heron versions <= 0.20.4-incubating allows CRLF log injection because of the lack of escaping in the log statements.  Please update to version 0.20.5-incubating which addresses this issue. 

Credit:

The Apache Heron (Incubating) project would like to thank Bo Yu for bringing this matter to our attention.

