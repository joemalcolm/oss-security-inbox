X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1654" "Wednesday" "29" "April" "2015" "18:25:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150429222524.9F17634E054@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: CVE request libaxl <= 0.6.9" nil nil nil "4" "2015042922:25:24" "[oss-security] Re: CVE request libaxl <= 0.6.9" (number mark "        cve-assign@m Apr 29   44/1654  " thread-indent "\"[oss-security] Re: CVE request libaxl <= 0.6.9\"\n") "<3D99FF28-9D4E-415F-BAB6-8F55FBC3CFDB@bogaard.eu>" ("<3D99FF28-9D4E-415F-BAB6-8F55FBC3CFDB@bogaard.eu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19833 invoked by uid 550); 29 Apr 2015 22:25:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19815 invoked from network); 29 Apr 2015 22:25:36 -0000
In-Reply-To: <3D99FF28-9D4E-415F-BAB6-8F55FBC3CFDB@bogaard.eu>
Message-Id: <20150429222524.9F17634E054@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 29 Apr 2015 18:25:24 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request libaxl <= 0.6.9
To: martijn@bogaard.eu

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> I'm coordinating this together with the developers of libaxl (which
> will release a fix later today).
> 
> Because of a bug in the memory allocator of libaxl can the parsing of
> a specially crafted xml document result in a heap overflow.
> 
> There is at least 1 known case where an application uses libaxl to
> parse incoming user supplied xml data, unauthenticated and over the
> network. In the best situation this results in DoS by memory
> corruption, but RCE is for a (skilled) attacker most likely within
> range.

Use CVE-2015-3450.


> I hope this is all the information you need, as this is my first CVE
> request

As suggested at the end of the
http://openwall.com/lists/oss-security/2015/04/16/17 post, the
approach you're using (writing to oss-security about a case where the
source-code details of the bug remain private) typically should be
accompanied by a link between the oss-security thread and any later
disclosure.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVQVnOAAoJEKllVAevmvmsbUQH/RE8R3e2JFAQ/qYE+aDjquWT
zvtVGevx+rpjdQewbkZ6d4G1g7YhKtDzwq9I3lfGLo/expVZ/Zjynb7+hr8G+8V8
c5hb/IcQ/4ieTn9avVxwDIdbRJsqAcULpeEek2nMUT9eZAdY7VfjVEzjZG2HTvB9
MXr6oAU4Q0pV/lb4TLZkKfYh79NkXKP5EQCnK0WASqtfEABvSJfz1lPSP7FazlMu
Fl4zNlJ9m2Er3xCCNQNb5x5gFGIyoFHLKyyrzzw1Jy1tPUKrdD8tbGLjftMzsK9E
HazmqoNgwiBw/jnXpzdMggU3LYk5t2hN0A6DScgI1agIWXnot3Kbvpny1fGYjpU=
=NDXC
-----END PGP SIGNATURE-----
