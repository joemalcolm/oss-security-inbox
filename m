X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1424" "Thursday" "18" "June" "2015" "13:03:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150618170301.CF5FD132F024@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE request: pure-ftpd denial of service in glob_()" nil nil nil "6" "2015061817:03:01" "[oss-security] Re: CVE request: pure-ftpd denial of service in glob_()" (number mark "        cve-assign@m Jun 18   37/1424  " thread-indent "\"[oss-security] Re: CVE request: pure-ftpd denial of service in glob_()\"\n") "<20150618151358.GA18454@mail.corp.redhat.com>" ("<20150618151358.GA18454@mail.corp.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6129 invoked by uid 550); 18 Jun 2015 17:08:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6107 invoked from network); 18 Jun 2015 17:08:22 -0000
In-Reply-To: <20150618151358.GA18454@mail.corp.redhat.com>
Message-Id: <20150618170301.CF5FD132F024@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 18 Jun 2015 13:03:01 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: pure-ftpd denial of service in glob_()
To: vkaigoro@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Version 1.0.40 of pure-FTPd

> NEWS file:

>  - The process handling a user session could be crashed by trying to
>  match a file pattern longer than the maximum length for a path. This
>  has been fixed.

> https://github.com/jedisct1/pure-ftpd/commit/0627004e23a24108785dc1506c5767392b90f807

Can you clarify the security impact? We have not looked into the code
paths or the overall product design. Is this a process that is
specific to one FTP client? Is the problem that the gl_errfunc
assignment doesn't occur and there is always a dereference of a NULL
function pointer? Is there a commonly relevant consequence other than
the ability of an FTP client to conduct a DoS attack against its own
session?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVgvkkAAoJEKllVAevmvmsAHgH/js/rXSJfKmyb+7VLsgYnzPz
+DRUjQ4h/Nza0ZvBUuWub3JMaqWgLq+YCXZKVHUPmdyz+i7oXYPHyEZzvGVedVHi
djzSqdAh8sU6lN5oG7yShjlHTIDnDr+MJDvU4gjnsLxTuEGGDkUeZzwUXyOJgO9f
hCFSFSRFe6pMrOIuaPIwO/opLX0qG+c8E2IZbR5bXCq8mKVVLxs9/rl9juBGtGeo
oUwK9E+NktAnRCsRhtGnxCl37teIePbmuj+MLuIvQysf2xjfIJvi1FQ5GeuVDcN6
U4nv9rx7VIAy1EWPoWlAo66YKaSyOv1RIAc3cVu/lHkYfwQA54F/KR+k1Lbfge0=
=1/Mw
-----END PGP SIGNATURE-----
