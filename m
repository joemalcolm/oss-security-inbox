X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1556" "Wednesday" "3" "June" "2015" "13:58:34" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150603175834.4FC0D6C004F@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" nil nil nil "6" "2015060317:58:34" "[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic" (number mark "        cve-assign@m Jun  3   38/1556  " thread-indent "\"[oss-security] Re: CVE request Linux kernel: ns: user namespaces panic\"\n") "<alpine.LFD.2.11.1505292156260.17180@wniryva>" ("<alpine.LFD.2.11.1505292156260.17180@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29810 invoked by uid 550); 3 Jun 2015 17:58:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29786 invoked from network); 3 Jun 2015 17:58:46 -0000
In-Reply-To: <alpine.LFD.2.11.1505292156260.17180@wniryva>
Message-Id: <20150603175834.4FC0D6C004F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  3 Jun 2015 13:58:34 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Linux kernel: ns: user namespaces panic
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Linux kernel built with the user namespaces support(CONFIG_USER_NS) is
> vulnerable to a NULL pointer dereference flaw. It could occur when users in
> user namespaces do unmount mounts.
> 
> An unprivileged user could use this flaw to crash the system resulting in DoS.
> 
> Upstream fixes:
> ---------------
>    -> https://git.kernel.org/linus/820f9f147dcce2602eefd9b575bbbd9ea14f0953
>    -> https://git.kernel.org/linus/cd4a40174b71acd021877341684d8bb1dc8ea4ae

We feel that this is best covered by two CVE IDs. The
cd4a40174b71acd021877341684d8bb1dc8ea4ae issue seems to be about lack of
state identification (i.e., the state is whether the path is
mounted or unmounted), whereas the 820f9f147dcce2602eefd9b575bbbd9ea14f0953
issue seems to be about lack of internal consistency of a data structure.

We will send the two CVE IDs soon.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVbz/9AAoJEKllVAevmvmsPxQIAJBdaqPsp21s2Z3yzWem8/Jn
s8wC/BTA2XuVshILGaTSdxy97M73r+KEMO7KdVL/V8hrtz6h9F2WJobZOyWEI/UM
pDqzCVspGjeeP0V//otnFfO4nry7Hwz+ZyMz7GLw9xPv0oMuV/We5aSrWzeC1aoc
UKMP8lO3Rua4KvhJKPEzOwyBiQELe7oPUc2VoIcHtec0EPftGvldZXe62yrNXliC
8CYEdCqNF9Q1kHI8fbCknRZupwmOrWtKbYVowoPBOpReObdoEvCWTSGr4xHp+/kY
CBOTi/Pfw5RhyzY9d8pMIKcrRKc+bhgRh6b3bWdVzFHrKB8H80KaLN851LyYsOU=
=xXo+
-----END PGP SIGNATURE-----
