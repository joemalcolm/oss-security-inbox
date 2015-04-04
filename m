X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2689" "Saturday" "4" "April" "2015" "03:27:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150404072749.B0AF66C0033@smtpvmsrv1.mitre.org>" "76" "[oss-security] Re: CVE Request : IPv6 Hop limit lowering via RA messages" nil nil nil "4" "2015040407:27:49" "[oss-security] Re: CVE Request : IPv6 Hop limit lowering via RA messages" (number mark "        cve-assign@m Apr  4   76/2689  " thread-indent "\"[oss-security] Re: CVE Request : IPv6 Hop limit lowering via RA messages\"\n") "<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>" ("<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1546 invoked by uid 550); 4 Apr 2015 07:28:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1500 invoked from network); 4 Apr 2015 07:28:01 -0000
In-Reply-To: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>
Message-Id: <20150404072749.B0AF66C0033@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat,  4 Apr 2015 03:27:49 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request : IPv6 Hop limit lowering via RA messages
To: ljungmark@modio.se

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> An unprivileged user on a local network can use IPv6 Neighbour
> Discovery ICMP to broadcast a non-route with a low hop limit, this
> causing machines to lower the hop limit on existing IPv6 routes.

> Projects impacted:  Linux kernel,  NetworkManager, FreeBSD Kernel

> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=6fd99094de2b83d1d4c8457f2c83483b2828e75a

Use CVE-2015-2922 for the Linux kernel vulnerability.


> https://lists.freebsd.org/pipermail/freebsd-net/2015-April/041934.html

Use CVE-2015-2923 for the FreeBSD vulnerability.


> ,  NetworkManager

This might refer to
http://cgit.freedesktop.org/NetworkManager/NetworkManager/tree/src/rdisc/nm-lndp-rdisc.c

  hop_limit = ndp_msgra_curhoplimit (msgra);
  if (rdisc->hop_limit != hop_limit) {
          rdisc->hop_limit = hop_limit;
          changed |= NM_RDISC_CONFIG_HOP_LIMIT;

however, the MITRE CVE team is not directly familiar with this part of
the NetworkManager code and has not researched any changes to the
"rdisc->hop_limit != hop_limit" test. There is apparently no commit
available yet at:

  http://cgit.freedesktop.org/NetworkManager/NetworkManager/log/src/rdisc/nm-lndp-rdisc.c

but, again, we don't know whether changes would need to occur there.

Use CVE-2015-2924 for the NetworkManager vulnerability.


Also, note that

  http://patchwork.ozlabs.org/patch/453995/

refers to affected closed-source products. (CVE IDs for closed-source
products would be announced elsewhere.) It also refers to Android. We
don't know whether Android was listed only because of a
shared-codebase issue, e.g.,

  https://android.googlesource.com/kernel/common/+/android-3.18/net/ipv6/ndisc.c

(there is no commit at
https://android.googlesource.com/kernel/common/+log/android-3.18/net/ipv6/ndisc.c
currently)

or whether Android is affected in other ways. Unless there is
incorrect hop_limit processing in code that is specific to Android,
Android would not have a unique CVE ID.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVH5GoAAoJEKllVAevmvmsL4EH/3oXUCv+ibZ7VXqeLpvkcmeq
R6dPpU6QJVLvirY/2Huoq0eLlSm9l6Tg9Z0h8WoWJpa8nQjrEthXc0XnWh6l4aoW
GzcRAJLjh21WZGTF4euTVMTSyR+ftw2jNp5WkfiI4BxCvikyDlrktj1qYVgsB7AK
3Svrv9jUDDjQX8Xd2gAqCEcSiRe9OO+JWErRD9ZyKSia9KcgFmmw3XQgUgefz6Ra
oKWuc0nZbYKq80JwIiiX8ThRyETuoNOtT4w7JdRVJfhFlUml8+FNh1hFiz52GsBF
iOOninmlM0i1EZw2v8JV/V+ihHB071YbT3K7xdoOu65CZymDy5qq+fc2ok5IOFY=
=qiwd
-----END PGP SIGNATURE-----
