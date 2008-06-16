X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/06/16/6
Message-ID: <Pine.GSO.4.51.0806161617300.16840@faron.mitre.org>
Date: Mon, 16 Jun 2008 16:18:18 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Id Request: fetchmail <= 6.3.8 DoS when logging long headers in -v -v mode
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-2711
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-2711
Reference: MLIST:[oss-security] 20080613 CVE Id Request: fetchmail <= 6.3.8 DoS when logging long headers in -v -v mode
Reference: URL:http://www.openwall.com/lists/oss-security/2008/06/13/1
Reference: MISC:https://bugzilla.novell.com/show_bug.cgi?id=354291

fetchmail 6.3.8 and earlier, when running in -v -v mode, allows remote
attackers to cause a denial of service (crash and persistent mail
failure) via a malformed mail message with long headers, which is not
properly handled when using vsnprintf to format log messages.


