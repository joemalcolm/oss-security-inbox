X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/23/6
Message-ID: <Pine.GSO.4.51.0804231154320.10164@faron.mitre.org>
Date: Wed, 23 Apr 2008 11:54:36 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: phpmyadmin PMASA-2008-3
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-1924
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-1924
Reference: CONFIRM:http://www.phpmyadmin.net/home_page/security.php?issue=PMASA-2008-3

Unspecified vulnerability in phpMyAdmin before 2.11.5.2, when running
on shared hosts, allows attackers with CREATE table permissions to
read arbitrary files via a crafted HTTP POST request, related to use
of an undefined UploadDir variable.


