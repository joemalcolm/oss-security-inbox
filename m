X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1962" "Friday" "4" "November" "2016" "03:10:21" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>" "46" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^CC:" nil nil "11" "2016110407:10:21" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        cve-assign@m Nov  4   46/1962  " thread-indent "\"[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<20161102115304.GA11945@hurricane.linuxnetz.de>" ("<20161102115304.GA11945@hurricane.linuxnetz.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6138 invoked by uid 550); 4 Nov 2016 07:10:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6104 invoked from network); 4 Nov 2016 07:10:33 -0000
In-Reply-To: <20161102115304.GA11945@hurricane.linuxnetz.de>
Message-ID: <40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<daniel@haxx.se>
Date: Fri, 4 Nov 2016 03:10:21 -0400
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host
To: <robert@fedoraproject.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> translated into `strasse.de` using IDNA 2003 but
>> is translated into `xn--strae-oqa.de` using IDNA 2008. Needless to say, those
>> host names could very well resolve to different addresses and be two
>> completely independent servers.

> Maybe
> MITRE (or somebody else) could share their thoughts about this, too?

In some situations, this would be a site-specific problem at a
registry. Although domain names can have a variety of uses of '-'
characters, the presence of a '-' as both the third character and the
fourth character is often recognized as a special case. Trying to
specify xn--strae-oqa.de directly when seeking a registration is very
different from trying to specify (for example) x--strae-oqa.de or
xn-strae-oqa.de.

Various other types of bugs (not necessarily security-relevant) have
been reported for this general concept, e.g., see:

  https://framework.zend.com/issues/browse/ZF-6133

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYHDHrAAoJEHb/MwWLVhi2lDEQALqezzjWHt+/S1xi8LoS/Bnm
R+2pJxpHLUjYo4FMoQxUqZnZYyJ/NsGEIL3xwoS4Mr4r7JdhEIx6Ud6P++9Oavqd
AiwvY1F9ZL3KtjGOZ2j5DLX78vm2HYaNyP/sMQSgY+hZIiR9PaR7PcDsSJpr7egE
DXm8gnCIbvA+8TsJsRCOA2nKHjCKcQrWe16OYI7tehT4X1R7CE71u0T2aaOGZu8t
GvMfTMU93evZwocrbgkinN351CC9z4hUnF0Tn56aHkYZMQyDCKseMlWjmBAQQXCY
J/E03r2MKL823s7vG3d01cBsFBrxB/7JtvGXwPmDuTEoJfdCiRgjJoN3WzphJyFQ
xcc7FTExJE3Y6Vk9l+7G2qrvHVppjNOaphKBKIUyzsnuT67oVPIqJAr1Qg9O8UFV
ynluEUtNY7g8yVW9WFlR19paq9Kc4uHI6AIROAmGIjx/7Mi52s8CAR2Ce2QIAOXC
jRh05Y1uaTaXxMCaH3zZC3Y6JlPkXnrh9C8OuzkVI954FxMwtWWnbhSuy/D8i01D
BeY3YPcHwKtzhXS+bAhUCNl0ZWiYf879bwncCFArDk7HOnpD6Wq5I0dDajfRbMUR
ugIgJmMVAfNmkdVhstFqPQtg/WOJ4BeqAB1x/iqu5Ow0bwiZzouum597ZsakwKPJ
gSZTC7tJDeD5rTUINLaZ
=ki00
-----END PGP SIGNATURE-----
