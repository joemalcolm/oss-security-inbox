X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/07/12/1
Message-ID: <97ebb7c1-de23-84d0-b3cb-ea8f22cc851d@apache.org>
Date: Mon, 12 Jul 2021 11:53:55 +0000
From: Guillaume Nodet <gnodet@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-30129: DoS/OOM leak vulnerability in Apache Mina SSHD Server 
Content-Type: text/plain; charset=utf-8

Description:

A vulnerability in sshd-core of Apache Mina SSHD allows an attacker to overflow the server causing an OutOfMemory error.  This issue affects the SFTP and port forwarding features of Apache Mina SSHD version 2.0.0 and later versions.  It was addressed in Apache Mina SSHD 2.7.0

This issue is being tracked as SSHD-1125

