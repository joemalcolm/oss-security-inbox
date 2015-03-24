X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1718" "Tuesday" "24" "March" "2015" "14:17:00" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150324181700.C0FA06C0048@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE request: Two vulnerabilities in Tor" nil nil nil "3" "2015032418:17:00" "[oss-security] Re: CVE request: Two vulnerabilities in Tor" (number mark "        cve-assign@m Mar 24   52/1718  " thread-indent "\"[oss-security] Re: CVE request: Two vulnerabilities in Tor\"\n") "<20150323181327.GA3943@pisco.westfalen.local>" ("<20150323181327.GA3943@pisco.westfalen.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20242 invoked by uid 550); 24 Mar 2015 18:17:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20224 invoked from network); 24 Mar 2015 18:17:13 -0000
In-Reply-To: <20150323181327.GA3943@pisco.westfalen.local>
Message-Id: <20150324181700.C0FA06C0048@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, weasel@debian.org, carnil@debian.org
Date: Tue, 24 Mar 2015 14:17:00 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Two vulnerabilities in Tor
To: jmm@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://lists.torproject.org/pipermail/tor-talk/2015-March/037281.html

> 2.
> | A relay could crash with an assertion error if a buffer of
> | exactly the wrong layout was passed to buf_pullup() at exactly the
> | wrong time.
> 
> https://trac.torproject.org/projects/tor/ticket/15083

Use CVE-2015-2688.


> There is another one which was fixed in the same versions, and could
> potentially get a CVE:
> 
> https://trac.torproject.org/projects/tor/ticket/14129

Use CVE-2015-2689.


> 1.
> | Fix a remote denial-of-service opportunity caused by a bug in
> | OSX's _strlcat_chk() function. Fixes bug 15205; bug first
> | appeared in OSX 10.9.
> 
> https://trac.torproject.org/projects/tor/ticket/15205

We need to ask Apple whether they are assigning a CVE ID to this as a
vulnerability in their strlcat_chk.c code.
https://trac.torproject.org/projects/tor/ticket/15205#comment:7 says
"A kind soul has filed a bug report with apple. Thanks, Andreas!" --
does anyone know what the Apple bug number is?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVEamJAAoJEKllVAevmvmsCvYIALISZLgBRHwQLCE3sWk1LnHC
7Eqs6HjxOWuDtW8GDbKFbmhWB1DkiHEtfPfB5r7FHvZBPaEvXcivkRMJZU01J+ek
7965dn95OvwuFbLz8eGssWI11TFev+w72kT0i61WdSCOql6sNnVeN943c3vqWFGh
E60CdqvDLc58qGAhVqLhwWqSFIumNT7MSj6lFLyBsfGl2Kmrmov1f5hESsvuoYux
Hcq7EXWjePo/0wIKcI5GPCh8CIHtGnl4T/VdVfWevz+eRqQ6p3F5z7kCM5dTIqWp
FJgN7KvccbnLXsoTXX1SysdrjH+oapvJo0sIFC/YTxeVCDaTKnbl0o5ef/clLH8=
=ZZmK
-----END PGP SIGNATURE-----
