X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1332" "Friday" "24" "April" "2015" "23:22:20" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150425032220.EB99F6C0032@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: CVE request: X server crash by client" nil nil nil "4" "2015042503:22:20" "[oss-security] Re: CVE request: X server crash by client" (number mark "        cve-assign@m Apr 24   36/1332  " thread-indent "\"[oss-security] Re: CVE request: X server crash by client\"\n") "<20150424150022.GC25205@suse.de>" ("<20150424150022.GC25205@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32424 invoked by uid 550); 25 Apr 2015 03:22:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32406 invoked from network); 25 Apr 2015 03:22:32 -0000
In-Reply-To: <20150424150022.GC25205@suse.de>
Message-Id: <20150425032220.EB99F6C0032@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, xorg_security@x.org
Date: Fri, 24 Apr 2015 23:22:20 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: X server crash by client
To: meissner@suse.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> We got notified that the fix for CVE-2014-8092 introduced the possibility
> of a division by 0 when the "height" for the PutImage call is 0, leading
> to X server abort.
> 
> This was already fixed in January in X git.
> http://cgit.freedesktop.org/xorg/xserver/commit/?id=dc777c346d5d452a53b13b917c45f6a1bad2f20b
> 
> As this is a local denial of service, but might be triggerable by images with 0 height
> supplied externally, it might need a CVE.

Use CVE-2015-3418.

> https://bugzilla.novell.com/show_bug.cgi?id=928520

This currently doesn't seem to be a public bug - we don't know whether
that's intentional.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVOwe3AAoJEKllVAevmvms170IALWrHYmuCpdiUYi5wSfexpd2
3YhS+UQTpZnhxYbZSF3kfM++MVXE5SuOen+5sfXNum2Y1ekbLTRbGEj7ausfzVI9
JouLh7UV7L3Eu/1JCyFBua3RLPyiPAJI0+XakQa4byK1FJn4ltsdntH+fwoVyk5t
uILMXDj6EA5n4gSokRJRm01gDvmeTw55HtQe57DZSRt48zCwv+BgIm8+JhpFsTFU
LmH4DtbAUyYWi1eWYDrLE7HBkE6hXtX2flPoxRHi48Ery+nNwX63pL2Qt077bgd8
W329vXc8fSkDpHzd5d6SlSQ5oaA9aSwVdWVPoqV397+wyTCpH1fZT/YdaN4XiZs=
=+GPK
-----END PGP SIGNATURE-----
