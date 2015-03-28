X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1842" "Saturday" "28" "March" "2015" "01:44:52" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150328054452.571E472E218@smtpvbsrv1.mitre.org>" "55" "[oss-security] Re: CVE request: denial of service in Quassel" nil nil nil "3" "2015032805:44:52" "[oss-security] Re: CVE request: denial of service in Quassel" (number mark "        cve-assign@m Mar 28   55/1842  " thread-indent "\"[oss-security] Re: CVE request: denial of service in Quassel\"\n") "<5515B83C.6080506@reactos.org>" ("<5515B83C.6080506@reactos.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7569 invoked by uid 550); 28 Mar 2015 05:45:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7550 invoked from network); 28 Mar 2015 05:45:04 -0000
In-Reply-To: <5515B83C.6080506@reactos.org>
Message-Id: <20150328054452.571E472E218@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 28 Mar 2015 01:44:52 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: denial of service in Quassel
To: pierre@reactos.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>> The second is
>> the core crash caused by sending an overlength CTCP query ("/me")
>> containing only multibyte characters. This bug was caused by the
>> old CTCP splitter using the byte index from lastParamOverrun() as
>> a character index for a QString.

> This seems to be, very roughly, an issue of incorrectly determining a
> data-structure length by using a wrong-sized data type for counting.
> It happens to be about multibyte characters but that's of secondary
> importance. This will almost certainly have a unique CVE ID ...

Use CVE-2015-2778.


>> Unlike what it replaces, the new splitting code is not recursive
>> and cannot cause stack overflows.

>>> But, be it a crash or a hang, it would cause a denial of
>>> service for any client connected to core.

Use CVE-2015-2779.


> The first is garbage characters caused
> by accidentally splitting the string in the middle of a multibyte
> character.

As suggested earlier, this has no CVE ID.


> if it is unable
> to split a string, it will give up gracefully and not crash the
> core or cause a thread to run away.

As suggested earlier, this has no CVE ID.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVFj9MAAoJEKllVAevmvmshfkH/0fpuId3QRMrFZW+S6Of4+Lc
jRGjVNJDUVnSkkIvAPFtSpRZv0Xwx/Tff255Nx4OByaNGpVv6ocrdggHKXhxQq4G
AMD2qNpBuIx7esTqTA40w6B70GPQOZF35+nOzNP0tsK7SFI+cPmyfDY/sB2JCzP2
fAmyCzX2JD1G9I7/5OyrhCYlV0RySzuMjdSC/LD0ikdEwkNP9V/IKm5HeufYvvyh
BAQKItg1kRsKIVFMajTU2oXEqrPVTXsj/dNI6u6fpwOwidxv5jdBw0ggWFeAyb5W
UYlRDPVBjMiMox5tLqC+2yC3vkykkBVlNgE1BBGQOmkBpgEQnzz8iQfJPSybw9w=
=czV4
-----END PGP SIGNATURE-----
