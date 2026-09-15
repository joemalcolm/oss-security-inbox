X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/7
Message-ID: <ea78633e-51a4-4f94-ba3c-60e197ef1c2d@apache.org>
Date: Tue, 15 Sep 2026 17:22:09 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-84501: Apache ZooKeeper: Operational log forgery via newline injection in EnsembleAuthenticationProvider 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.9.0 through 3.9.5
- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.8.0 through 3.8.6

Description:

An unauthenticated attacker can inject arbitrary fake log lines into Apache ZooKeeper's operational log by sending a crafted add_auth("ensemble", ...) request containing newline characters (\n). When the ensemble name doesn't match, EnsembleAuthenticationProvider.handleAuthentication() logs the raw, unsanitized name via LOG.warn(). Because SLF4J's {} placeholder preserves embedded newlines, the attacker can forge complete log entries — with arbitrary timestamps, log levels, class names, and messages — that are visually indistinguishable from genuine ZooKeeper log output.

This issue affects Apache ZooKeeper: from 3.9.0 through 3.9.5, from 3.8.0 through 3.8.6.

Users are recommended to upgrade to version 3.8.7 or 3.9.6, which fixes the issue.

Credit:

Youlong Chen Institute of Computing Technology <chenyoulong20g@....ac.cn> (finder)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-84501

