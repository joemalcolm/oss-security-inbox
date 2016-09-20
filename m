X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1688" "Tuesday" "20" "September" "2016" "09:29:55" "+0100" "John Haxby" "john.haxby@oracle.com" "<92B9C3B6-236F-44BF-951C-2E3B3C6D466B@oracle.com>" "50" "Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" nil nil nil "9" "2016092008:29:55" "[oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "U       john.haxby@o Sep 20   50/1688  " thread-indent "\"Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<20160919183201.GA29516@hunt>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "<20160916173838.GL8683@netmeister.org>" "<7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu>" "<E82F2B4A-DBD5-4B21-A526-0DCC26093A38@oracle.com>" "<20160919183201.GA29516@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17642 invoked by uid 550); 20 Sep 2016 08:30:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17618 invoked from network); 20 Sep 2016 08:30:08 -0000
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-Type: multipart/signed; boundary="Apple-Mail=_53F22133-C8D3-4448-97D4-A7696B011AA4"; protocol="application/pgp-signature"; micalg=pgp-sha256
X-Pgp-Agent: GPGMail
From: John Haxby <john.haxby@oracle.com>
In-Reply-To: <20160919183201.GA29516@hunt>
Date: Tue, 20 Sep 2016 09:29:55 +0100
Cc: Jan Schaumann <jschauma@netmeister.org>,
        "chet.ramey" <chet.ramey@case.edu>
Message-Id: <92B9C3B6-236F-44BF-951C-2E3B3C6D466B@oracle.com>
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com> <20160916173838.GL8683@netmeister.org> <7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu> <E82F2B4A-DBD5-4B21-A526-0DCC26093A38@oracle.com> <20160919183201.GA29516@hunt>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3124)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Subject: Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME

--Apple-Mail=_53F22133-C8D3-4448-97D4-A7696B011AA4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On 19 Sep 2016, at 19:32, Seth Arnold <seth.arnold@canonical.com> wrote:
>=20
> On Sun, Sep 18, 2016 at 08:06:57PM +0100, John Haxby wrote:
>>>>> A little while ago, one of our users discovered that by setting the
>>>>> hostname to $(something unpleasant), bash would run "something
>>>>> unpleasant" when it expanded \h in the prompt string.
>>>=20
>>> This issue has been public since October, 2015 in Ubuntu's bug tracking
>>> system.
>>>=20
>>=20
>> Yes, the message was more to let people know that CVE-2016-0634  had
>> been assigned for this issue.   Do you have a link to the Ubuntu issue
>> and a different CVE number?
>=20
> Hello John; we did not assign a CVE number for this issue.
>=20
> Bernd Dietzel reported it at:
> https://bugs.launchpad.net/ubuntu/+source/bash/+bug/1507025

Thanks.   CVE-2016-0634 can stand then.

[The internal process we follow for acquiring CVEs is heavily oriented towa=
rds closed source so my apologies for not bringing this forward sooner.]

jch

--Apple-Mail=_53F22133-C8D3-4448-97D4-A7696B011AA4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iF4EAREIAAYFAlfg84MACgkQRQu7fpQvo8jUkAEAo/a9dP6ss7soYP+m2+/XTr/V
scjqjtOqLd+I0xQ9goUBAKzFhdlP3yk7wO5OklgErv6HddTTVf48YtncVMKiFBa8
=rgNo
-----END PGP SIGNATURE-----

--Apple-Mail=_53F22133-C8D3-4448-97D4-A7696B011AA4--
