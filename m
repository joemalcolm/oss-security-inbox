X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1951" "Friday" "7" "October" "2016" "10:45:16" "-0400" "Chet Ramey" "chet.ramey@case.edu" "<5d16b9c9-b7e7-eb73-bf90-21162a84d791@case.edu>" "59" "Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" nil nil nil "10" "2016100714:45:16" "[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "U       chet.ramey@c Oct  7   59/1951  " thread-indent "\"Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<20160927205512.GA25156@jasmine>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "<a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>" "<160916195601.AA66726.SM@caleb.ins.cwru.edu>" "<20160927205512.GA25156@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14227 invoked by uid 550); 7 Oct 2016 14:45:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14209 invoked from network); 7 Oct 2016 14:45:50 -0000
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
 <a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>
 <160916195601.AA66726.SM@caleb.ins.cwru.edu> <20160927205512.GA25156@jasmine>
To: Leo Famulari <leo@famulari.name>, oss-security@lists.openwall.com
Cc: chet.ramey@case.edu, john.haxby@oracle.com
From: Chet Ramey <chet.ramey@case.edu>
Message-ID: <5d16b9c9-b7e7-eb73-bf90-21162a84d791@case.edu>
Date: Fri, 7 Oct 2016 10:45:16 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20160927205512.GA25156@jasmine>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="UDg9nvLdbQGTGLhwnXfsHWRpHSsgp5WxX"
X-Junkmail-Whitelist: YES (by domain whitelist at mpv1-2015.case.edu)
Subject: Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding
 $HOSTNAME

--UDg9nvLdbQGTGLhwnXfsHWRpHSsgp5WxX
Content-Type: multipart/mixed; boundary="iIp418B9KCdRJm7F2nedqlXXmKuVD89GQ";
 protected-headers="v1"
From: Chet Ramey <chet.ramey@case.edu>
Reply-To: chet.ramey@case.edu
To: Leo Famulari <leo@famulari.name>, oss-security@lists.openwall.com
Cc: chet.ramey@case.edu, john.haxby@oracle.com
Message-ID: <5d16b9c9-b7e7-eb73-bf90-21162a84d791@case.edu>
Subject: Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding
 $HOSTNAME
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
 <a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>
 <160916195601.AA66726.SM@caleb.ins.cwru.edu> <20160927205512.GA25156@jasmine>
In-Reply-To: <20160927205512.GA25156@jasmine>

--iIp418B9KCdRJm7F2nedqlXXmKuVD89GQ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 9/27/16 4:55 PM, Leo Famulari wrote:
> On Fri, Sep 16, 2016 at 03:56:01PM -0400, Chet Ramey wrote:
>>>> I believe the fix in parse.y is this (Chet, please correct me if I'm w=
rong):
>>>
>>> Yes, that is the current fix for this.  There are other ways to do it.
>>
>> Here's a patch to bash-4.3 that will fix this.
>=20
> Hi Chet,
>=20
> Thanks for the patch! Do you plan to add it to the bash-4.3-patches
> series [0]?

This went out as bash-4.3 patch 47.


--=20
``The lyf so short, the craft so long to lerne.'' - Chaucer
		 ``Ars longa, vita brevis'' - Hippocrates
Chet Ramey, UTech, CWRU    chet@case.edu    http://cnswww.cns.cwru.edu/~che=
t/


--iIp418B9KCdRJm7F2nedqlXXmKuVD89GQ--

--UDg9nvLdbQGTGLhwnXfsHWRpHSsgp5WxX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iFsEARECABsFAlf3tQYUHGNoZXQucmFtZXlAY2FzZS5lZHUACgkQu1hp8GTqdKsT
kgCZATfC92rmHfUvyvrEydhrkMEdZKYAn3eCpXL3QaZbjqQqxQRykthAyEqJ
=ST5z
-----END PGP SIGNATURE-----

--UDg9nvLdbQGTGLhwnXfsHWRpHSsgp5WxX--

