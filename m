X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1658" "Sunday" "29" "January" "2017" "07:07:04" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<2c120680243249b2a86b85883b8c4cb4@imshyb01.MITRE.ORG>" "39" "[oss-security] Re: CVE request: rubygem minitar: directory traversal vulnerability" nil nil nil "1" "2017012912:07:04" "[oss-security] Re: CVE request: rubygem minitar: directory traversal vulnerability" (number mark "U       cve-assign@m Jan 29   39/1658  " thread-indent "\"[oss-security] Re: CVE request: rubygem minitar: directory traversal vulnerability\"\n") "<CAGW7fdtioEUEY19WukZQmKn0PDd-rsmHHS_N87nQswFdMnrBhg@mail.gmail.com>" ("<CAGW7fdtioEUEY19WukZQmKn0PDd-rsmHHS_N87nQswFdMnrBhg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20004 invoked by uid 550); 29 Jan 2017 12:07:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19974 invoked from network); 29 Jan 2017 12:07:17 -0000
From: <cve-assign@mitre.org>
To: <max@appcanary.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CAGW7fdtioEUEY19WukZQmKn0PDd-rsmHHS_N87nQswFdMnrBhg@mail.gmail.com>
Message-ID: <2c120680243249b2a86b85883b8c4cb4@imshyb01.MITRE.ORG>
Date: Sun, 29 Jan 2017 07:07:04 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: rubygem minitar: directory traversal vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Rubygem minitar allows attackers to overwrite arbitrary files during
> archive extraction via a .. (dot dot) in an extracted filename.
> 
> https://github.com/halostatue/minitar/issues/16
> https://github.com/halostatue/minitar/commit/e25205ecbb6277ae8a3df1e6a306d7ed4458b6e4
> https://bugzilla.opensuse.org/show_bug.cgi?id=1021740
> 
> The same issue exists in rubygem archive-tar-minitar
> 
> I believe they're based on the same codebase, and minitar is the officially
> supported fork, so I'm not sure if this warrants two CVEs or just one.

Use CVE-2016-10173 for both minitar and archive-tar-minitar.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYjdlmAAoJEHb/MwWLVhi2CSsP/izDwh+T5DR5ms7134ihHYzW
bMGXiHY273TjJmBdg3EjXbmuhydzVXIe6rOKc+kZZ8CmMW6Xm8M8cQ0aV19h5pnm
jC8jdLkD3zhN4Gb5kTFVHzGxdDP0jTiWamsrt1r9hKTpnP4hLia5oeB2EZhqPp0W
LBkeVSwAzNhK1WjRZ0hKOKA5t55djzNO6YzwPx9541a2Ec1fr7wYCbb5VPrG0JIj
8K8xjE7sjuxh+agknZPHgXLhj/YDk07sEKmMnLhnJy4IyyPWvgYDa46C11CWJc/T
DfNWIJx6OMDkRDnxduNl/WQ3g1s00hcR6Wn1TEldELz9YdpkNG7HKpz1+cC1QtYX
ICjtcm2xaJ3KkMW0SyalZ8gRzGhjfti7Gvf3JEopIDYJtBy3Kkf9ozDLpwPbo49l
tLCZSuTVkRgdlAlFAaJLn56qx9eHv6TpZt+QgVVVjEWbGy3E8i4DZhcTtjZTQA7X
m5Ud76iDK5b6qxZjNhZEf5pqdN+d8nXAnnn1vdb8GVJmIJ4uJK/hMksL7kvWp96U
pQmwWM20N1i3uWcMJb14asAJXJWrwxwWavFgnLUbVOG1pipNwBxsA9VqrwgMLSQb
OXFoBzNSJEmRj+zt1H8B9Dq6GHT0ZvuxGlkGlff3rENxuKYLpBO7bSOeCmOhNY0j
Q1MA3pDnDnn4wLy7m58b
=IIhb
-----END PGP SIGNATURE-----
