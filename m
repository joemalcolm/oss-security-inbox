X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2761" "Thursday" "15" "September" "2016" "00:58:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160915045824.7C28F8BC36E@smtpvmsrv1.mitre.org>" "64" "[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" "^Cc:" nil nil "9" "2016091504:58:24" "[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" (number mark "        cve-assign@m Sep 15   64/2761  " thread-indent "\"[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection\"\n") "<nqpirj$fvm$1@blaine.gmane.org>" ("<nqpirj$fvm$1@blaine.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11540 invoked by uid 550); 15 Sep 2016 04:58:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11504 invoked from network); 15 Sep 2016 04:58:36 -0000
In-Reply-To: <nqpirj$fvm$1@blaine.gmane.org>
Message-Id: <20160915045824.7C28F8BC36E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 15 Sep 2016 00:58:24 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection
To: dregad@mantisbt.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> ADOdb 5.x, qstr() method,
> improperly quoting strings resulting in a potential SQL injection attack
> vector.

> Note that it is not recommended to write SQL as per the above ...

> https://github.com/ADOdb/ADOdb/issues/226
> https://github.com/ADOdb/ADOdb/commit/bd9eca9f40220f9918ec3cc7ae9ef422b3e448b8

>> SECURITY: ADODB qstr does not quote properly with PDO

>> labels
>> security

>>> Should I assume from the silence that no CVE is required for this ?

It only means that the CVE Team at MITRE is not in an optimal position
to decide whether a CVE ID should exist for a specific library issue
that's exploitable only when application code has used that library in
a "not recommended" way. It's best for a maintainer to suggest what
outcome they prefer, e.g., "it's not recommended but people still can
use ADOdb that way; thus, we consider this a required security fix."

Because "security" is still present in the title and labels of 226,
we're making the conclusion that this is a security problem and
assigning an ID, CVE-2016-7405.

>>>> That's true, but I never did in the past, as this mailing list is (or was?)
>>>> monitored by mitre, so posting here has been sufficient until now.

The current situation is that the CVE Team at MITRE receives both the
oss-security messages and the https://cveform.mitre.org form output.
We let people choose either method for obtaining a CVE ID from us,
depending on their disclosure goals, their perspective about open
pre-assignment discussion, or other factors. People using
https://cveform.mitre.org are free to forward our replies to
oss-security if they're relevant to the list, e.g.,
http://www.openwall.com/lists/oss-security/2016/09/08/14 did this.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX2indAAoJEHb/MwWLVhi2YqoQAIYLL1M8cHumDhNP7YH3uBaP
QTsrzO2a2XF51eB4o+bgnht9lLI5eGeOqRdcsT1LfviSH4D/cIRwDTCn3lhykgI0
bWdypB/Pkni2rlHaiIcxB8T9Qxcy/BI4JGjEv8BTJZ68YfN7I64PXkUKEGXDb5L3
0t/vOhzILU+9M2nep50LMeehPIVxyvBla7EIhhVN1fiV6cZAaTSb9MfG/0nBC8xo
EmipAxQmFX6l/5O46cB9jt81rlWdVTt5t3grhlFn0N0VQvHGVX+kW5kYz391wZMS
bEmDQDQRkvPdJQHEws8lzCGql1eX+cFuiptHLWjMIQZ7FxXQultR+ECVgd6i3q1L
HjKoHin1x/LqRyWp3pQMnnvqyjV4o/MUpMC5KPZdZalCcFLqenc/pboKugBa2pkT
weop+fXTS9fadfd9WSgMLCWXWu/OyseszqSGM74JJu1IJXlwa8cb24/GHjIrjvsC
FZfk5u8xE4zaV+I8y5Dq/pDwSG6nH/AcZT51c44k+vpEl/kXPuhwPEcZTzmnknKw
S5K9NLksiD0jqogHf595Okt0FopH+86aPwePye1JvmXFBfQf26DCswRg+1/p3g09
GXYT9leG+v8lFMXf9g3tzL5yq+ENlSKlkFbJq7k1uGdsKUOdMrGhqToWkeJYSp0D
SNkQDCDU0zfiY/s8xutp
=Gaft
-----END PGP SIGNATURE-----
