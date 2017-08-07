X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2481" "Monday" "7" "August" "2017" "13:22:46" "-0400" "Jesse Hertz" "jesse_hertz@apple.com" "<A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com>" "70" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080717:22:46" "[oss-security] Cve issue discussion" (number mark "U       jesse_hertz@ Aug  7   70/2481  " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<6651351.AxBd7pCpa9@wanheda>" "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>" "<20170807123756.GA27766@suse.de>" "<CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>" "<c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>" "<CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30575 invoked by uid 550); 7 Aug 2017 19:20:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24035 invoked from network); 7 Aug 2017 17:23:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s; c=relaxed/simple;
	q=dns/txt; i=@apple.com; t=1502126568;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+tfy4jntDWUHVduuPYyzH1p9Gpr5rkOphan6vZPdnMc=;
	b=vns3fZhfZ2kCLtboGVNptSTOGhUSDvIfZ6Ul7zkZWRGO/0BDg/8Qtf+fcV5Z5+AD
	GeP9YlUOG7Y1kuYTCZtmhtcVMPqw5ImzLzzIQD3NVx4pVn5XDft1lpOUO4c5aiq/
	hZmgGDNIkRTQXuRRmfnYqtBOT8G65gV0vUNHFcqlSdON+3FFxW9jOXHe4A1vEH3T
	5Fjt3QI1MX0KiA77CWZF+/Z1fMiLnJwv3bRtLyYR6mVYMaBguULtOnwY2HEAW022
	T7kALCDLWwKe6WfJO+IifIWA5vIMoEPi9cHvnIDyJA8YbrE4eTcqP0ZIDPt/T2JY
	lS8UVT6v2JDEus7JF3mRQw==;
X-AuditID: 11973e16-8b5f19c000001833-3f-5988a1e89285
MIME-version: 1.0
Sender: jesse_hertz@apple.com
From: Jesse Hertz <jesse_hertz@apple.com>
Content-type: multipart/signed;
 boundary="Apple-Mail=_EAA6D613-0706-4346-93AA-4D766CB55144";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Mon, 07 Aug 2017 13:22:46 -0400
References:
 <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <6651351.AxBd7pCpa9@wanheda>
 <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>
 <20170807123756.GA27766@suse.de>
 <CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>
 <c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>
 <CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>
To: oss-security@lists.openwall.com
In-reply-to:
 <CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>
Message-id: <A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com>
X-Mailer: Apple Mail (2.3273)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGLMWRmVeSWpSXmKPExsUiuLohR/fFwo5Ig6kzBCyW/XdzYPRY2fmY
	LYAxissmJTUnsyy1SN8ugStj6b6rbAVtIhXb276zNTAuFexi5OSQEDCReLj4JmMXIxeHkMA6
	JolXvw6wwSQeH7rNBJE4zCgxu3E/C0iCV0BQ4sfke2C2kMAsJonJz4NBbGEBWYnXO56CxdkE
	NCWmrnzHDtLMLDCDUWLhlX+MEEUGErNX7gYrYhFQlZi6eT0rxIYWFomzzw6BFYkIKEvc2H2R
	CcTmFAiWOHvqEhvEZhuJJ6v+MEGcJytxa/YlZgh7DZvEiS1lExgFZyE5cBay5SAJZgFtiWUL
	XzPPYuQAsnUkJi+ECstLbH87hxnCtpRYPPMGC4RtK3GrbwEThG0gMad5MtMCRo5VjEK5iZk5
	upl55nqJBQU5qXrJ+bmbGEERMd1ObAfjw1VWhxgFOBiVeHgZMjsihVgTy4orcw8xSnOwKInz
	1r1ujRQSSE8sSc1OTS1ILYovKs1JLT7EyMTBKdXAeOD/nBXL+t577X3c4vHdZk/061y/Nsvq
	/ZLzT9eW5loezo44sfP/FJ8VN9OOzRV70Hr1eayX5Df2p1ETDf2fJBVXLAtqaXf5l6nA9cVZ
	Y/Ll7/ErUnlj9she7HqdIftPcqljeukak3bj0tacW8+v2ry+b/LAztvyZuSkJU8Xaxrt2n9c
	r7NmvRJLcUaioRZzUXEiAHVmdkdpAgAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOLMWRmVeSWpSXmKPExsUiuLphg+7zhR2RBhNabCyW/XdzYPRY2fmY
	LYAxissmJTUnsyy1SN8ugStj6b6rbAVtIhXb276zNTAuFexi5OSQEDCReHzoNlMXIxeHkMBh
	RonZjftZQBK8AoISPybfA7OFBGYxSUx+HgxiCwvISrze8RQsziagKTF15Tt2kGZmgRmMEguv
	/GOEKDKQmL1yN1gRi4CqxNTN61khNrSwSJx9dgisSERAWeLG7otMIDanQLDE2VOX2CA220g8
	WfWHCeI8WYlbsy8xT2Dkm4XkqFnIFoIkmAW0JZYtfM08i5EDyNaRmLwQKiwvsf3tHGYI21Ji
	8cwbLBC2rcStvgVMELaBxJzmyUwLGDlWMQoWpeYkVhqZ6yUWFOSk6iXn525ihARxzg7GOzfN
	DjEKcDAq8fAyZHZECrEmlhVX5h5iVAGa8WjD6guMUix5+XmpSiK8V2YDpXlTEiurUovy44tK
	c1KLDzFKc7AoifMm/WyPFBJITyxJzU5NLUgtgskycXBKNTBa/03tO3l1G6OIoOeqsz9T+Z+0
	slloz9AVvOJUJ+los1huasWvI+HmHh+1vmb1m/yo7u/8v96k4dgeLZMyKWvmU+3zmk+1erTW
	vCpYxvz87qJuhj2OOR6896ZmfTv28mTl9QN8Xnd0Zln1Tmfwnuiy0OLa9x6OfycDQzYvDeVV
	7Y6UFHsoelOJpTgj0VCLuag4EQDjAc2QagIAAA==
Subject: Re: [oss-security] Cve issue discussion

--Apple-Mail=_EAA6D613-0706-4346-93AA-4D766CB55144
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

fwiw, double check and make sure the issue occurs in libpng without ASAN. S=
ometimes ASAN can cause "heisenbugs" which only happen if ASAN is used.

> On Aug 7, 2017, at 9:57 AM, Glenn Randers-Pehrson <glennrp@gmail.com> wro=
te:
>=20
> OK I'll request a CVE for this libpng issue.
>=20
> Glenn
>=20
> On Mon, Aug 7, 2017 at 9:05 AM, John Haxby <john.haxby@oracle.com> wrote:
>> On 07/08/17 13:47, Glenn Randers-Pehrson wrote:
>>> It's not causing a crash, just a delay.  You'll safely get either an OOM
>>> message or an EOF message.and no memory leak.
>>>=20
>>=20
>> That's scant comfort when your browser is the one hit by the OOM killer
>> and then again when you restart it.  And also while you're wondering
>> what's going on because your laptop is basically completely
>> non-responsive ...
>>=20
>> So yes, it's a remote DoS and definitely worth a CVE.  We have had other
>> similar CVEs in the past with image handling libraries not being
>> sufficiently paranoid.
>>=20
>> jch
>>=20
>>> Glenn
>>>=20
>>> On Mon, Aug 7, 2017 at 8:37 AM, Marcus Meissner <meissner@suse.de> wrot=
e:
>>>> Hi,
>>>>=20
>>>> if it could crash the image reader I would consider it "remote denial =
of service"
>>>> classed and CVE worthy.
>>=20


--Apple-Mail=_EAA6D613-0706-4346-93AA-4D766CB55144
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZiKHmAAoJEOrWiA5UGP7onD4P/1Bciktyn7QvqkQKf4h9LR4Z
1lh1CCwXbDl3hyWSXWpt2w3HmyZ2G+KI/lYJBez4+pS9xm8+5WFYBz2CutDxDuSA
DHX6CPiLMRNPohHFazZE6VCAcGAHwSNx/3eqdsjQwn5zRstnqWUr4AseDkF4dEcX
CKltYjT1hH2x/2Rz7E6er9zkznkeQ8rLjlSOWI6/rv2eSBEWeIHqqih2GiDAEP9k
qyiltzlA5CBGpqfMZui0xzuRQbr5kAqssfIencKyJnJPsEc2D1QHvK4t0w7SBYue
nfEqwCPqySftxNjfVheauKvorbrneYs7Rfj1EL2PVP0VPBisV0PUDQDs6ebIafXY
UcBVlkOq8ePjuV7R3d4OPGjiGMoUXJFfH7SQqPX8MfxtfDXRvqGukBRuRyRBOSwB
TWsvD0IOBHAZICkyVlFvb7NZoXSgdOUJ3fyslr7wKvB+nmapCiOlZQlglY4cgDZt
6sLNVMBzwRlqIXki5IEbtpz9Z1JrznILWfP8VUsrwcinWPi62UoEAbI9r+rCmMHt
xjS8GJdgb7oUUi9tt07OMhU5q2z2Srg+FiYuLKrvrirNYU1qtK3AhltPqcMLmHD4
Lv8EeLAfGnfKB3vilvPuiO7yMZU7j+Su2teGrBwMeHNn3fkjkp6iAbOngfvYszz4
6jimPZWQB8kOFe5wwPWT
=aVLq
-----END PGP SIGNATURE-----

--Apple-Mail=_EAA6D613-0706-4346-93AA-4D766CB55144--
