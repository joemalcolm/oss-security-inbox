X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1715" "Tuesday" "18" "August" "2015" "01:57:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150818055736.210EF6C001F@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: CVE Request: Request Tracker: cross-site scripting in cryptography interface" nil nil nil "8" "2015081805:57:36" "[oss-security] Re: CVE Request: Request Tracker: cross-site scripting in cryptography interface" (number mark "        cve-assign@m Aug 18   44/1715  " thread-indent "\"[oss-security] Re: CVE Request: Request Tracker: cross-site scripting in cryptography interface\"\n") "<20150813190946.GA31347@eldamar.local>" ("<20150813190946.GA31347@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25612 invoked by uid 550); 18 Aug 2015 05:57:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24564 invoked from network); 18 Aug 2015 05:57:47 -0000
In-Reply-To: <20150813190946.GA31347@eldamar.local>
Message-Id: <20150818055736.210EF6C001F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, dom@earth.li, shawn@bestpractical.com
Date: Tue, 18 Aug 2015 01:57:36 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Request Tracker: cross-site scripting in cryptography interface
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Could you please assign a CVE for the second cross-site scripting
> issue mentioned in
> http://blog.bestpractical.com/2015/08/security-vulnerabilities-in-rt.html
> 
> > RT 4.2.0 and above are vulnerable to a cross-site scripting (XSS)
> > attack via the cryptography interface.  This vulnerability could
> > allow an attacker with a carefully-crafted key to inject JavaScript
> > into RT's user interface. Installations which use neither GnuPG nor
> > S/MIME are unaffected.
> 
> Fixed by:
> https://github.com/bestpractical/rt/commit/36a461947b00b105336adb4997d1c7767d8484c4
> 
> According to Shawn M. Moore (Cc'ed) for this second issue there was
> not requested a CVE.

>> Escape message crypt status as we insert it into the DOM

>> The ->{'Value'} part of each message is inserted into the DOM with no
>> escaping (to accommodate MakeClicky and callbacks using HTML). Values RT
>> receives from other systems must be escaped or they leave us vulnerable to
>> an XSS injection attack.

Use CVE-2015-6506.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJV0siQAAoJEKllVAevmvmsVZsIAIs5LowTk+7CE+Yenbu8LpB7
+t4iA5AEbUNm5IvTO4DUDzbfMoYCRC1q8NFESf1yNNpGp5xZfxMPO5SMOP6IYOEW
LIl5jQYTvInesIL+vLlceUY2Y85aiGEOWSite8iKTkHLL/PnYBPsSva+uhVkbd51
JKqA1VFmlA4Y7gML+bhn8sJwB5q6XhI55IjvW6oxzypGtQf96odMgvmluqg7oF8R
f/y5KsWl4GZbHgyOhQt6FMy/SFYMPaZfDeDd5XVaWgBRO2NyOVfCKrnYmxrCO0Z+
Sfdncx7S4bvaUvKLcLRgO813qrBNaKW87qwwMQ5eZ8WqtTz+dCE8U7M6Q6PYNg4=
=3olU
-----END PGP SIGNATURE-----
