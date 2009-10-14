X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/14/1
Message-ID: <4AD569BE.2010209@redhat.com>
Date: Wed, 14 Oct 2009 14:03:42 +0800
From: Eugene Teo <eugene@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security@...ts.openwall.com, Willy Tarreau <w@....eu>
Subject: Re: CVE request: kernel: tc: uninitialised kernel memory leak
Content-Type: text/plain; charset=utf-8

[...]
>   CVE-2005-4881 - tc_fill_qdisc()  (at least)

This requires http://patchwork.ozlabs.org/patch/35412/ too. There was a 
typo in the upstream commit 9ef1d4c7.

Thanks, Eugene
-- 
Eugene Teo / Red Hat Security Response Team
