X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/21/6
Message-ID: <Pine.GSO.4.51.0904211822510.24412@faron.mitre.org>
Date: Tue, 21 Apr 2009 18:23:27 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: Jamie Strandboge <jamie@...onical.com>
cc: oss-security@...ts.openwall.com, coley@...us.mitre.org, team@...urity.debian.org
Subject: Re: CVE request: apt
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2009-1358
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-1358
Reference: CONFIRM:https://bugs.launchpad.net/ubuntu/+source/apt/+bug/356012

apt-get in apt before 0.7.21 does not check for the correct error code
from gpgv, which causes apt to treat a repository as valid even when
it has been signed with a key that has been revoked or expired, which
might allow remote attackers to trick apt into installing malicious
repositories.


