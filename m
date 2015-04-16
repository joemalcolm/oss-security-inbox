X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2699" "Thursday" "16" "April" "2015" "13:17:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150416171713.BB27072E029@smtpvbsrv1.mitre.org>" "65" "[oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" nil nil nil "4" "2015041617:17:13" "[oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" (number mark "        cve-assign@m Apr 16   65/2699  " thread-indent "\"[oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1\"\n") "<000001d07826$8acee690$a06cb3b0$@gmail.com>" ("<000001d07826$8acee690$a06cb3b0$@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11351 invoked by uid 550); 16 Apr 2015 17:17:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11330 invoked from network); 16 Apr 2015 17:17:25 -0000
In-Reply-To: <000001d07826$8acee690$a06cb3b0$@gmail.com>
Message-Id: <20150416171713.BB27072E029@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 16 Apr 2015 13:17:13 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1
To: hannes.trunde@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>>> 3) WP Symposium plugin SQL injection vulnerability
>>> Affected version: 15.1 (and likely all versions below)
>>> Fixed version: Not yet available, author is working on a fix
>>> Plugin URL: https://wordpress.org/plugins/wp-symposium/  (still disabled by
>>> WordPress.org team)

>> Is this different from
>> 
>>   http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-8810

> it's definitely a different vulnerability, as CVE-2014-8810 regards a SQL
> injection vulnerability in ajax/mail_functions.php whereas the problem I
> discovered exists in a forum function.

Use CVE-2015-3325.


> By the way - what would be the best way to publish the vulnerability
> details? A reply to this thread or posting it to Exploit-DB, Packet Storm or
> other mailing lists like Fulldisc or Bugtraq?

MITRE doesn't have any role in establishing the policies for use of
the oss-security list. The types of information you sent earlier --
references with vague changelog entries "Fixed for SQL injection
vulnerabilities" and "Fix SQL injection vulnerabilities" -- are
normally considered valid reports of open-source vulnerabilities,
e.g., a person who is neither the discoverer nor the vendor might
notice such a changelog entry and send it here. However, it is
somewhat unusual for a discoverer to choose a multi-stage approach in
which that level of a vague information is provided in one
oss-security post and full details are sent in a later post.

Our only suggestion for this case is that, given that the multi-stage
approach is already in progress, it would probably be best to
establish a link in at least one direction, e.g., either:

  - your full advisory should include a link to
    http://openwall.com/lists/oss-security/2015/04/14/5
    so that this previous discussion can be found

  or

  - you should make a later oss-security post in this thread, with a
    link to the public URL(s) for your full advisory, which might
    be in any of the four locations that you proposed

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVL+4XAAoJEKllVAevmvmsSRIIAL1P3iPwL+r5WzeumB+X11Ry
4KnNwj/qDbXYHQNHlBov9cG5vwPfk/Z7GR3lJW67Q1Ow9HBthZ9HWRVBytM8far9
aMls9vZ3evFkPYLDjmRsrcHSX7uFC2E7FPnHdhD+ee4dYQYebz5655EFQHvcc3hS
AwqTZBGva7qi/kRz+O2UqFsgOIUivhtx84BFW7NqaLSARwcXpBIXF4hc1mPiA1cQ
u2IKsn+Pnxi8cgCpQtvK4crMPhDznQiCzIIHoynqylgInHNiwL4AjgDYQrJQe6un
SAr2stOjdAsNQeF2OA0m4ajF46v5Kls2tfvbDwmlIrq8xieN3+e9OY8oNf4xl5s=
=5gid
-----END PGP SIGNATURE-----
