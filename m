X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/30/2
Message-ID: <CAK=zUS19TkgSMoRv_ucqmHmwyWeiE0AUetmbMRxQNeejPahCFg@mail.gmail.com>
Date: Thu, 30 Oct 2014 17:41:02 +0200
From: Valery Sizov <valery@...lab.com>
To: oss-security@...ts.openwall.com
Subject: CVE request for GitLab groups API
Content-Type: text/plain; charset=utf-8

Hello,
I would like to request a CVE identifier for a vulnerability in the groups
API of GitLab.

Affected versions:
The groups API vulnerability affects GitLab 6.0 and up.

Impact:
The vulnerability patched by this release allows a guest user to delete the
owner of a group and to assign any other member as owner through the groups
API.

You can read more details here
https://about.gitlab.com/2014/10/30/gitlab-7-4-3-released/

