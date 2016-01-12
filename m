X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/12/9
Message-ID: <CANO=Ty3co85-pb-pwfwESMY8To8njpdN+zYrwyHy7P43o8azkA@mail.gmail.com>
Date: Tue, 12 Jan 2016 10:20:59 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>, CVE ID Requests <cve-assign@...re.org>
Subject: CVE request for Kubernetes api server: patch operation should use patched object to check admission control
Content-Type: text/plain; charset=utf-8

CVE request for Kubernetes api server: patch operation should use patched
object to check admission control

https://github.com/kubernetes/kubernetes/issues/19479

TL;DR:  you can patch your resources and they'll always be allowed, so more
ram, disk, etc. CWE-285


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@...hat.com

