X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2153" "Tuesday" "5" "May" "2015" "08:24:42" "+0000" "mancha" "mancha1@zoho.com" "<20150505082442.GB14223@zoho.com>" "59" "Re: [oss-security] PHP and some == wonkiness" nil nil nil "5" "2015050508:24:42" "[oss-security] PHP and some == wonkiness" (number mark "        mancha1@zoho May  5   59/2153  " thread-indent "\"Re: [oss-security] PHP and some == wonkiness\"\n") "<554874C0.509@redhat.com>" ("<55479C75.3070000@redhat.com>" "<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>" "<554868F6.1070305@redhat.com>" "<20150505072248.GA14223@zoho.com>" "<554874C0.509@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1859 invoked by uid 550); 5 May 2015 08:25:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1841 invoked from network); 5 May 2015 08:25:08 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=vNrPB6uCtuKYNR6QF3wqOcpHdxl/70BTLhmYLmFsyeRLSzx6QPtrSq3Ez2RiHCaobuT8Eu9hjJjA
    G+lGIWbf2xaOBdNvK52koiZoPOOCzGhrrtPDKYV0niJsJaPmSbUx  
Message-ID: <20150505082442.GB14223@zoho.com>
References: <55479C75.3070000@redhat.com>
 <CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>
 <554868F6.1070305@redhat.com>
 <20150505072248.GA14223@zoho.com>
 <554874C0.509@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0lnxQi9hkpPO77W3"
Content-Disposition: inline
In-Reply-To: <554874C0.509@redhat.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: fweimer@redhat.com
Date: Tue, 5 May 2015 08:24:42 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PHP and some == wonkiness
To: oss-security@lists.openwall.com

--0lnxQi9hkpPO77W3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 05, 2015 at 09:44:00AM +0200, Florian Weimer wrote:
> On 05/05/2015 09:26 AM, mancha wrote:
>=20
> > Taking sha1 as our reference hash and "=3D=3D" as our equivalence relat=
ion:
> >=20
> > All [a-f][0-9a-f]{39} are in equivalence class A.
> >=20
> > All 42[a-f][0-9a-f]{37} are in equivalence class B.
> >=20
> > Note: those regexes aren't representative of the full equivalence
> > classes because prepending 0s doesn't alter the value (i.e.
> > 0[a-f][0-9a-f]{38} is in equivalence class "A" as well..
>=20
> I cannot reproduce this.  Or you use =E2=80=9Cequivalence class=E2=80=9D =
in a
> non-standard way.
>=20
> -- Florian Weimer / Red Hat Product Security

I was using "equivalence class" in a standard way but mis-understood
PHP's casting rules when comparing strings so never mind that comment.

To raise the SNR back up, I agree with your assessment if we account for
prepended 0s. So out of the 16^40 total hashes, I believe
10^38+10^37+...+10^1 of them will evaluate to float(0). A bit higher
than your estimate (which only considered 10^38 of them). Same order of
magnitude though.

--mancha

--0lnxQi9hkpPO77W3
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVSH5KAAoJEB4VYy8JqhaDrzIP/0idAs+iFrjUStwnZHUm4smt
Z1e/Q80L605Q28f8PkrS1kOx2313UsICs00NeHnhAIZ8dkbjfFHx0J2xqIK8j4I7
eK9cZgx4yOTX/craIFnX3qGTIx/zKpCOS1OaBZKmEVV3h/YTVPTO4ELN+d+Xsi8m
bmMrVUCtNAmhywCXC+BfSeQy78vNTAysAUWdFVRFuYrpewxtBcS/6r0knFQaK1vi
U3Ouxz3yZoqS43XJA+ahFZ+XGrNaIXwBFQij9nuazwnKVCouW8bonSyCJXcHw9Yh
CfCIsukCwYj5LCmApj20NC9ahSZn+8SbTYcFhJxVp0HAWIoHFnYiMODnYwGbYYJf
jfwMecxNrev19TZXbGgsrX8WMuvgfo5FDOQFh4+Rf8sGdnXorZ+MwmXO0DUaIe6V
2yfGLOSK26hug/zMNhlMymbMXz5kVlNLzerShDuhkdhzG/FyvzDeu2GyzFrIV9hO
1DUUhghq50saVI+bNyEBggY+6bVPpuqKwfyKg371BAECGFZPpczBniZcC233M0z4
tMd6er9q16C3mvF4fUgqBpMzFFSMoBqf+4rZMxbdfYLYUKpQZ28SI8Y1wy6GALNz
sQpYIjtiQ3fazf2mTud5MUrhDPeKA8/qLVB0oTP+2qQZazFLR27hSTT/V4YS5VvH
WtNN9lwdTYUb2Ll2+FbQ
=fDmc
-----END PGP SIGNATURE-----

--0lnxQi9hkpPO77W3--

