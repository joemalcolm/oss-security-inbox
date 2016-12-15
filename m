X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1639" "Thursday" "15" "December" "2016" "12:44:23" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<1a39cb5556d74c7e989d1b728b6c7eaa@imshyb02.MITRE.ORG>" "42" "[oss-security] Re: CVE Request: SimpleSAMLphp: SSPSA 201612-02: Incorrect signature verification" nil nil nil "12" "2016121517:44:23" "[oss-security] Re: CVE Request: SimpleSAMLphp: SSPSA 201612-02: Incorrect signature verification" (number mark "U       cve-assign@m Dec 15   42/1639  " thread-indent "\"[oss-security] Re: CVE Request: SimpleSAMLphp: SSPSA 201612-02: Incorrect signature verification\"\n") "<20161214144822.cfn2zv4s2bdlbdvi@eldamar.local>" ("<20161214144822.cfn2zv4s2bdlbdvi@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8099 invoked by uid 550); 15 Dec 2016 17:44:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8075 invoked from network); 15 Dec 2016 17:44:35 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161214144822.cfn2zv4s2bdlbdvi@eldamar.local>
Message-ID: <1a39cb5556d74c7e989d1b728b6c7eaa@imshyb02.MITRE.ORG>
Date: Thu, 15 Dec 2016 12:44:23 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: SimpleSAMLphp: SSPSA 201612-02: Incorrect signature verification

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> SimpleSAMLphp has released (another) update fixing an incorrect
> signature verification issue (different from SSPSA 201612-01 /
> CVE-2016-9814). It affects versions of SimpeSAMLphp before 1.14.11.
> 
> https://simplesamlphp.org/security/201612-02
> https://github.com/simplesamlphp/simplesamlphp/commit/a2326d75dd14accaac162dd2cb30aaefcc1f9205

> -1 in case an error occurs. PHP allows translating numerical values to
> boolean implicitly
> 
>     Non-zero equals true.

> - if (! $objXMLSecDSig->verify($objKey)) {
> + if ($objXMLSecDSig->verify($objKey) !== 1) {

Use CVE-2016-9955.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYUtTlAAoJEHb/MwWLVhi27IwP/jG+Zl6XCV9GayTZO3AmZIdC
hP3AI4irrLKNtUGifIYuAs7PRrxvqlolx6Frm9u5W7KUTtHZLnVN06lpLdhi5RdZ
7YWrdjEe3Oay5QfE4W6jy+OaTWui8J7w3/nAwUg/O30GqKdY1YTwcWFmDHfR29fG
jI5SlZV6CQAzODqlm1dvmJxzvWGwItzKgV6JHK12rs3ODo/qiS0w3Z8lnOlEZyEb
c00d9S7y6iYIp1yIXEb2CWnn+CS0tb9JEqKCtwXvlF9/vzfMGCSv2HIXlOUYesPn
b8BqdFJn7zSTjaDTIGv2GqEdTZE0gnWkQDuikYg7EF+Eux58wDbCz8eS1dhf8WHq
07vJ5259VJb2JV5Fxlmz9wZpyhWptD6oHMCJZtmS4vk0/WwcLQCoJ0RaMtiW+i1p
f7eo+tC3JjFmMmMmsUSXhUGnja9nHs7RtTDRR+S1LdZP2T09otsj53HpuqAgNUyk
N68ym2WDCgp6qBmZGZFRbx31Kqtp3IXnfXrgAKOTciRilDI3SEqb1M/jJbX8rw47
qdZomwgSFr1DRX6SZFxbQpxhcTHIT+XxT4m3B9g6b0FF22e6e3IEmotnEYqV0KFi
m6UEaYWWfEnKuu/Tz8nHt0Gh2ab8PLvd9aJPNCl3mmULSwVPcrTSnvWRYu3YrCmy
hPphYVM98RRx+cSFwh8h
=W5cm
-----END PGP SIGNATURE-----
