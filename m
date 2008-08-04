X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/04/11
Message-ID: <Pine.GSO.4.51.0808041448110.23930@faron.mitre.org>
Date: Mon, 4 Aug 2008 14:48:29 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: coley@...re.org
Subject: Re: CVE request: OpenVPN (client) 2.1-beta14 through 2.1-rc8
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-3459
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-3459
Reference: CONFIRM:http://openvpn.net/index.php/documentation/change-log/changelog-21.html

Unspecified vulnerability in OpenVPN 2.1-beta14 through 2.1-rc8, when
running on non-Windows systems, allows remote servers to execute
arbitrary commands via crafted (1) "lladdr" and (2) "iproute"
configuration directives, probably related to shell metacharacters.


