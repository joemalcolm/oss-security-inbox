X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["786" "Wednesday" "11" "January" "2017" "11:36:27" "+0000" "=?utf-8?B?Q2FybG9zIE1hcnTDrW4gTmlldG8=?=" "cmn@dwim.me" "<A6967F04-154F-41FF-A7A3-1D227B4BF6D7@dwim.me>" "30" "[oss-security] Re: CVE Request: two security fixes in libgit2 0.25.1, 0.24.6" nil nil nil "1" "2017011111:36:27" "[oss-security] Re: CVE Request: two security fixes in libgit2 0.25.1, 0.24.6" (number mark "U       cmn@dwim.me  Jan 11   30/786   " thread-indent "\"[oss-security] Re: CVE Request: two security fixes in libgit2 0.25.1, 0.24.6\"\n") "<f361a068cd454d81a00f00b0ed6bbd1b@imshyb02.MITRE.ORG>" ("<f361a068cd454d81a00f00b0ed6bbd1b@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5393 invoked by uid 550); 11 Jan 2017 14:01:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24247 invoked from network); 11 Jan 2017 11:36:44 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=dwim.me; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=Nkb0XliBydRcp4g
	js69p7dPLnH4=; b=Z52CScbUW0Eh3zU8D7FFlfYJAeLjCN2KvhHKSHlN4+95tDX
	gBD2KIe8Sh9wzodttoW6deHsxRJ8o/FUnzBrQsTg2QT+OPZD8Tbb3ODy2Su6+hsh
	vIpploAULHtE6e3ofEvpAd7IFq0Z/fg22JInYlK+4f3680+Ivb3ybo1yQlag=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	smtpout; bh=Nkb0XliBydRcp4gjs69p7dPLnH4=; b=mWVK3cVfX70+yreqGYlN
	TYoSUFqgr5BiiUyjLfLr2bcFTiKGiKLpRu3/buioDX7/WysOc/IXbOYfL3c2cyEn
	WfcbwgibArh11B/HHccBB4QlYFvZYCohxc6k00gibvhbCg9ti9oNnWbR9lnBC7bP
	SGdVA0skh+OG+Ef2WemICIg=
X-ME-Sender: <xms:vhh2WPxytxZnY35yO6wz-JUjY0HyNzEXnKj_dc6KHFr18gUf6YnawQ>
X-Sasl-enc: SiVM3X/EXgH9nStERnVtsgoEVOlJAy5D//HeWAB6wtiQ 1484134589
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
From: =?utf-8?Q?Carlos_Mart=C3=ADn_Nieto?= <cmn@dwim.me>
In-Reply-To: <f361a068cd454d81a00f00b0ed6bbd1b@imshyb02.MITRE.ORG>
Date: Wed, 11 Jan 2017 11:36:27 +0000
Cc: Andreas Stieger <astieger@suse.com>,
 oss-security@lists.openwall.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <A6967F04-154F-41FF-A7A3-1D227B4BF6D7@dwim.me>
References: <f361a068cd454d81a00f00b0ed6bbd1b@imshyb02.MITRE.ORG>
To: cve-assign@mitre.org
X-Mailer: Apple Mail (2.3259)
Subject: [oss-security] Re: CVE Request: two security fixes in libgit2 0.25.1, 0.24.6


> On 11 Jan 2017, at 03:41, cve-assign@mitre.org wrote:
>=20
>=20
>=20
>> https://github.com/libgit2/libgit2/commit/98d66240ecb7765e191da19b535c75=
c92ccc90fe
>=20
> Use CVE-2017-5338.
>=20
>=20
>> https://github.com/libgit2/libgit2/commit/3829ba2e710553893faf6336cc6b2f=
3fc17a293e
>=20
> Use CVE-2017-5339.
>=20
>=20
>> https://github.com/libgit2/libgit2/commit/2ac57aa89bde788173b54bd1534303=
69deec64c0
>=20
> This has no CVE ID; it does not seem to be a vulnerability fix.

CVE-2017-5338 and CVE-2017-5339 were also assigned to commits which are not=
 fixing a vulnerability but adding tests to prevent a regression in this ar=
ea. They=E2=80=99re different commits mostly as an artefact of the timing o=
f the flaw being detected and when we were able to deal with it.


   cmn

