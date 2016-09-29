X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1931" "Thursday" "29" "September" "2016" "15:58:28" "-0400" "Chet Ramey" "chet.ramey@case.edu" "<5c9fe5e0-1e15-2e7f-4c7d-1df4968b6525@case.edu>" "59" "Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" "^Cc:" nil nil "9" "2016092919:58:28" "[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "        chet.ramey@c Sep 29   59/1931  " thread-indent "\"Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<20160927205512.GA25156@jasmine>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "<a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>" "<160916195601.AA66726.SM@caleb.ins.cwru.edu>" "<20160927205512.GA25156@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9836 invoked by uid 550); 29 Sep 2016 19:59:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9811 invoked from network); 29 Sep 2016 19:58:59 -0000
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
 <a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>
 <160916195601.AA66726.SM@caleb.ins.cwru.edu> <20160927205512.GA25156@jasmine>
Message-ID: <5c9fe5e0-1e15-2e7f-4c7d-1df4968b6525@case.edu>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20160927205512.GA25156@jasmine>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="HCO6NUOBLDkv7GMuBVi90GBpxRWqlTQ1i"
X-Junkmail-Whitelist: YES (by domain whitelist at mpv1-2015.case.edu)
Cc: chet.ramey@case.edu, john.haxby@oracle.com
Date: Thu, 29 Sep 2016 15:58:28 -0400
From: Chet Ramey <chet.ramey@case.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding
 $HOSTNAME
To: Leo Famulari <leo@famulari.name>, oss-security@lists.openwall.com

--HCO6NUOBLDkv7GMuBVi90GBpxRWqlTQ1i
Content-Type: multipart/mixed; boundary="fh1iXPsJiXajkjrWPSpEfkSA5Wj2NK65e";
 protected-headers="v1"
From: Chet Ramey <chet.ramey@case.edu>
Reply-To: chet.ramey@case.edu
To: Leo Famulari <leo@famulari.name>, oss-security@lists.openwall.com
Cc: chet.ramey@case.edu, john.haxby@oracle.com
Message-ID: <5c9fe5e0-1e15-2e7f-4c7d-1df4968b6525@case.edu>
Subject: Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding
 $HOSTNAME
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
 <a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>
 <160916195601.AA66726.SM@caleb.ins.cwru.edu> <20160927205512.GA25156@jasmine>
In-Reply-To: <20160927205512.GA25156@jasmine>

--fh1iXPsJiXajkjrWPSpEfkSA5Wj2NK65e
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

Yes, I plan to.


--=20
``The lyf so short, the craft so long to lerne.'' - Chaucer
		 ``Ars longa, vita brevis'' - Hippocrates
Chet Ramey, UTech, CWRU    chet@case.edu    http://cnswww.cns.cwru.edu/~che=
t/


--fh1iXPsJiXajkjrWPSpEfkSA5Wj2NK65e--

--HCO6NUOBLDkv7GMuBVi90GBpxRWqlTQ1i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iFsEARECABsFAlftcm4UHGNoZXQucmFtZXlAY2FzZS5lZHUACgkQu1hp8GTqdKtt
BwCggWNPnQ7tP+COjRvE6BC9mnr6OZkAnRX4c6d/OvM1MkUQWMH9wgPlX0mo
=aQk+
-----END PGP SIGNATURE-----

--HCO6NUOBLDkv7GMuBVi90GBpxRWqlTQ1i--

