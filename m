X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2820" "Saturday" "5" "March" "2016" "22:28:05" "+0100" "=?iso-8859-1?Q?Ren=E9_Rebe?=" "rene@exactcode.de" "<1F770735-1836-4A8A-B8E2-14B39E77EB78@exactcode.de>" "89" "[oss-security] Re: [exact-image] Missing fixes for CVEs in upstream dcraw" nil nil nil "3" "2016030521:28:05" "[oss-security] Re: [exact-image] Missing fixes for CVEs in upstream dcraw" (number mark "U       rene@exactco Mar  5   89/2820  " thread-indent "\"[oss-security] Re: [exact-image] Missing fixes for CVEs in upstream dcraw\"\n") "<CAFGhKbxmdh=rjvzWE2QRh_c_Wwq7mVm2JYhN=Q_LTw1USq-XeA@mail.gmail.com>" ("<CAFGhKbyhOpRC-P6EEJuiWNz5Fb46GiYzrSNGaouy0-0hV5_b2Q@mail.gmail.com>" "<20160305023423.GA20136@shell.cybercom.net>" "<CAFGhKbxmdh=rjvzWE2QRh_c_Wwq7mVm2JYhN=Q_LTw1USq-XeA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28424 invoked by uid 550); 5 Mar 2016 21:33:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25603 invoked from network); 5 Mar 2016 21:29:16 -0000
Content-Type: text/plain; charset=iso-8859-1
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: =?iso-8859-1?Q?Ren=E9_Rebe?= <rene@exactcode.de>
In-Reply-To: <CAFGhKbxmdh=rjvzWE2QRh_c_Wwq7mVm2JYhN=Q_LTw1USq-XeA@mail.gmail.com>
Date: Sat, 5 Mar 2016 22:28:05 +0100
Cc: rawstudio-users@rawstudio.org,
 =?iso-8859-1?Q?G=E1bor_Horv=E1th?= <ghorvath@hit.bme.hu>,
 Anders Brander <anders@brander.dk>,
 dcoffin@cybercom.net,
 darktable-dev@lists.darktable.org,
 ExactImage developers mailing list <exact-image@exactcode.de>,
 xbmc-addons@lists.sourceforge.net,
 ufraw-devel@lists.sourceforge.net,
 oss-security@lists.openwall.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <1F770735-1836-4A8A-B8E2-14B39E77EB78@exactcode.de>
References: <CAFGhKbyhOpRC-P6EEJuiWNz5Fb46GiYzrSNGaouy0-0hV5_b2Q@mail.gmail.com> <20160305023423.GA20136@shell.cybercom.net> <CAFGhKbxmdh=rjvzWE2QRh_c_Wwq7mVm2JYhN=Q_LTw1USq-XeA@mail.gmail.com>
To: Charlemagne Lasse <charlemagnelasse@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
Subject: [oss-security] Re: [exact-image] Missing fixes for CVEs in upstream dcraw

Hi Charles,

I do not remember adding anything special to just disable dcraw.

The most straight forward would be to comment it out in the Makefile via NO=
T_SRCS while building.

If you the CVE has a test case I can include the test case and fix in the e=
xact-iamge source tree.

Greetings,
	Ren=E9

On Mar 5, 2016, at 21:49, Charlemagne Lasse <charlemagnelasse@gmail.com> wr=
ote:

>=20
> Thanks for the answer.
>=20
> It is a rather odd decision to ignore an existing fix for
> CVE-2013-1438. This also means that dcraw cannot be used when any
> untrusted person has access (or he can DoS a service).
>=20
> Rene Rebe, is it possible to disable dcraw support in the
> perl/php/python bindings of exactimage to work around this problem on
> webservices?
>=20
>=20
>=20
> 2016-03-05 2:34 GMT+00:00  <dcoffin@shell.cybercom.net>:
>> Hi Guys,
>>=20
>>     CVE-2015-3885 was fixed in v9.26 and CVE-2015-8366 will
>> be fixed in v9.27.  Overrunning an automatic array is how most
>> hijacks happen, and overrunning a malloc'd buffer is probably
>> not good either.
>>=20
>>     CVE-2013-1438 seems designed to prevent dcraw from entering
>> an infinite or very time-consuming loop.  I'm not interested in
>> this because there are infinitely many ways to create a loop in
>> a TIFF file, and solving the Halting Problem is beyond the scope
>> of dcraw.
>>                                Dave Coffin  3/4/2016
>>=20
>> On Sat, Feb 27, 2016 at 02:28:18PM +0000, Charlemagne Lasse wrote:
>>> Hi,
>>>=20
>>> it looks like there are a number of CVE against dcraw. All of them were
>>> fixed in the downstream project libRAW but none of them were fixed by
>>> you in the upstream project dcraw. When can we expect that these are
>>> fixed in dcraw? The list of CVE's I know about are:
>>>=20
>>> CVE-2015-8366
>>> https://github.com/LibRaw/LibRaw/commit/89d065424f09b788f443734d4485728=
9489ca9e2
>>>=20
>>> CVE-2015-3885
>>> https://bugzilla.redhat.com/attachment.cgi?id=3D1027072
>>>=20
>>> CVE-2013-1438
>>> https://sourceforge.net/p/ufraw/bugs/361/attachment/0001-CVE-2013-1438-=
fix-various-security-issues.patch
>>>=20
>>> Several other downstream projects may still be affected. I've Cc'ed the
>>> ones which I know
>>>=20
>>> darktable
>>> exactimage
>>> kodi/xbmc
>>> rawstudio
>>> rawtherapee
>>> ufraw
>>>=20
>>> Thanks
>=20
>=20
>=20
> -----------------------------------------------------------=20
> If you wish to unsubscribe from this mailing, send mail to
> lists@exactcode.de with a subject of: unsubscribe exact-image

--=20
 ExactCODE GmbH, Lietzenburger Str. 42, DE-10789 Berlin
 DE Legal: Amtsgericht Berlin (Charlottenburg) HRB 105123B, Tax-ID#: DE2516=
02478
 Managing Director: Ren=E9 Rebe
 http://exactcode.com | http://exactscan.com | http://ocrkit.com | http://t=
2-project.org | http://rene.rebe.de

