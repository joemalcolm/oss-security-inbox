X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3221" "Monday" "17" "August" "2015" "13:55:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150817175548.8641052E00E@smtpvbsrv1.mitre.org>" "68" "[oss-security] Re: CVE request - simple-php-captcha - captcha bypass vulnerability" nil nil nil "8" "2015081717:55:48" "[oss-security] Re: CVE request - simple-php-captcha - captcha bypass vulnerability" (number mark "        cve-assign@m Aug 17   68/3221  " thread-indent "\"[oss-security] Re: CVE request - simple-php-captcha - captcha bypass vulnerability\"\n") "<55C7AEF2.1070908@gmail.com>" ("<55C7AEF2.1070908@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28259 invoked by uid 550); 17 Aug 2015 17:56:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28239 invoked from network); 17 Aug 2015 17:56:00 -0000
In-Reply-To: <55C7AEF2.1070908@gmail.com>
Message-Id: <20150817175548.8641052E00E@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 17 Aug 2015 13:55:48 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - simple-php-captcha - captcha bypass vulnerability
To: olivier@bottomlesspit.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/claviska/simple-php-captcha/issues/16

Use CVE-2015-6250 for the original issue that the "srand(microtime() *
100)" call is counterproductive because, especially in cases of good
time synchronization, the client is able to run the same srand call as
the server.


>> Date: Mon, 10 Aug 2015 00:14:38 +0300
>> From: Solar Designer <solar@openwall.com>

>> And you think removing the srand(microtime() * 100) fixes this?  Well,
>> it does appear to fix the most straightforward and easiest attack, and
>> captchas are bypassable in general, but does this raise the bar high
>> enough for the "fixed" version not to be CVE-worthy?  Or are you going
>> to be requesting a second CVE ID for it then?
>> 
>> The "fixed" code relies on PHP's automatic seeding for rand() (which is
>> typically dependent on system time anyway, adding only a process id to
>> the mix), and, what's probably worse, it uses rand() so many times that
>> it leaks its tiny internal state via properties of the captcha that are
>> easy for a computer to analyze.

>> OCR isn't rocket science, but it's the
>> intended level of "security" of this captcha, while being able to infer
>> the text through even easier analysis of "metadata" is a captcha bypass,

As far as we can tell, neither
https://github.com/claviska/simple-php-captcha nor
http://labs.abeautifulsite.net/simple-php-captcha/ has any statement
of what the intended level of security is. The basic situation seems
to be that someone has written a few hundred lines of code, produced a
CAPTCHA-related product that is described as "simple" and has a set of
security-relevant behaviors that are quite different from those of
more advanced CAPTCHA code, and needs to be given a reasonable level
of latitude in deciding what bug reports will be accepted as
vulnerability reports rather than suggestions for enhancements.

Our guess is that using the PHP rand function, given that
http://php.net/manual/en/function.rand.php says "Caution ... This
function does not generate cryptographically secure values, and should
not be used for cryptographic purposes" (and given that the properties
of rand are otherwise somewhat well known), might be unintended and
might be considered an obviously valid vulnerability report.
Alternatively, one might consider it a PHP problem that the
documentation is phrased in that way, and not phrased as something
like "This function does not generate secure values, and there are
many, many cases in which it should not be used at all."

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJV0h+dAAoJEKllVAevmvmsLu4H/2tiyghDT0idZ9PclV6dR1NR
B4SK1WZFIMVPtYPFmAwWPzmYkpXwycRv3Hi3BmwI2DJTk4Ln8Fdu/EfCYdLOWyRQ
2oSfe/qbJv0d9Hwnh4oP7G1mAWWu7VktAkf2R0YkZjrAK9Lxn9/sXw/T/6n3ds/W
nBzGCjC5TQXZfOoGIhm4pgnGTM5/EJBNYmklRunq5o2EGY+XUs8KNECwyI2/u4OJ
dkzR3GV7dexS73jdBShap5265QFpP1985ecR5MFXpKsxmqodZjoEjCa4aif/gJBK
qYrSOR572CFcpI/qIe58uJfkHtWVO4ZuHIUUNdFSo+2lRhMdj3qjqg8Ccu4qm3c=
=s0+G
-----END PGP SIGNATURE-----
