X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2237" "Tuesday" "3" "October" "2017" "11:34:09" "-0400" "Joel Esler" "joel.esler@me.com" "<FBF3AE41-DB79-43A7-A4FB-806C3702EC7E@me.com>" "54" "Re: [oss-security] clamav: Out of bounds read and segfault in xar parser" "^Cc:" nil nil "10" "2017100315:34:09" "[oss-security] clamav: Out of bounds read and segfault in xar parser" (number mark "        joel.esler@m Oct  3   54/2237  " thread-indent "\"Re: [oss-security] clamav: Out of bounds read and segfault in xar parser\"\n") "<1e5a78ac-a93f-f4cf-b8a2-25fde5189a63@ehuk.net>" ("<20170929150922.15b800f8@pc1>" "<1e5a78ac-a93f-f4cf-b8a2-25fde5189a63@ehuk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19694 invoked by uid 550); 3 Oct 2017 15:40:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4033 invoked from network); 3 Oct 2017 15:34:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1507044851; bh=cPMFv0DoFiOmMB+sYd5tA1D+l2Z6C+pcD4ohxvCIJxQ=;
	h=From:Message-id:Content-type:MIME-version:Subject:Date:To;
	b=3BMRwoXyRiIqZBvCFfhOLMnI6AE3Wn9/wuhzhOSw3sU8/WD5eLIictIL95j5ThYK7
 97M6bxvpQ8PEXzpszVk6jaDg3Os9rR77CeMVM9dV9JQq8YDKlh3IKaif3+AQPYNbG2
 Dm4iy6UUz5WW+NEm+sQv0y0RC78ghIc4O943Gv3xlVqYN4e3X6JUFw0l4a/VKCJ837
 DE2YjSwXy3RwY1lzE7Paq/THjenL8mSLZfxmavFLzsc/fyNf1YMEBOQnM9etyfrjoC
 ifqI7z/A6XuY14rNo10IZaswMwvlrnBOIZpwnwHerdYkYxocdOWlXsN1JnDt900vU4
 DOh6WdF6+HFkQ==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-10-03_06:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1011 suspectscore=4 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1710030221
Message-id: <FBF3AE41-DB79-43A7-A4FB-806C3702EC7E@me.com>
Content-type: multipart/alternative;
 boundary="Apple-Mail=_12DADF60-AA64-420C-87F0-F041DDF7ABD6"
MIME-version: 1.0 (Mac OS X Mail 11.0 \(3445.1.6\))
In-reply-to: <1e5a78ac-a93f-f4cf-b8a2-25fde5189a63@ehuk.net>
References: <20170929150922.15b800f8@pc1>
 <1e5a78ac-a93f-f4cf-b8a2-25fde5189a63@ehuk.net>
X-Mailer: Apple Mail (2.3445.1.6)
Cc: =?utf-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>
Date: Tue, 03 Oct 2017 11:34:09 -0400
From: Joel Esler <joel.esler@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] clamav: Out of bounds read and segfault in xar
 parser
To: oss-security@lists.openwall.com

--Apple-Mail=_12DADF60-AA64-420C-87F0-F041DDF7ABD6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello =E2=80=94 My name is Joel Esler, I=E2=80=99m the Open Source lead her=
e for ClamAV at Cisco.  A few comments here on list inline below:



> On Oct 1, 2017, at 3:37 AM, Eddie Chapman <eddie@ehuk.net> wrote:
>=20
> On 29/09/17 14:09, Hanno B=C3=B6ck wrote:
>> Meta-level comment:
>> It seems to me clamav development has mostly stalled. Detection rates
>> are very low and I'm considering to stop using it for mail filtering.
>> (also there's of course the whole AV debate, however I never saw
>> clamav as a security tool, more as something like a spam filter that
>> prevents crap in my inbox. Still of course it needs to have secure
>> parsers.)
>=20
> I agree with much of this, and I think you're right that the effectivenes=
s of Clamav in mail filtering contexts can be debated, though maybe more in=
 terms of the AV debate, as you say.  As a user myself with it deployed fil=
tering multi-user domains, I agree that detection rates are low.

Something we were working on.  To be honest, shipping detection in the meth=
od that we currently ship detection is not going to scale.  We are thinking=
 about ways to change this.

>=20
> However, checking just now on Github I do not get the impression at all t=
hat development has stalled. Judging purely by number of commits, every mon=
th there are consistently a very healthy number. But what has stalled is st=
able releases; the last one being 0.99.2 on 22nd April 2016, so something i=
s not quite right. But I've seen many open source/free software projects st=
alled over the years and definitely Clamav does not, IMO, fit that descript=
ion (at least not yet).



It=E2=80=99s not dead.  At all.  99.2 as a stable release was released in 2=
016, yes.  We have been working on 99.3 since, and are planning 99.4 and 99=
.5 now.  99.3 has been in beta for a couple months now, and the fix for thi=
s issue has been in git since the date mentioned earlier in the thread.  It=
=E2=80=99s also obviously in 99.3.

--
Joel Esler
Manager
Talos Group
http://www.talosintelligence.com=

--Apple-Mail=_12DADF60-AA64-420C-87F0-F041DDF7ABD6--
