X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1923" "Friday" "10" "April" "2015" "23:29:36" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5528B140.9080708@redhat.com>" "53" "Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions" nil nil nil "4" "2015041105:29:36" "[oss-security] Re: [CVE Requests] rsync and librsync collisions" (number mark "        kseifried@re Apr 10   53/1923  " thread-indent "\"Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions\"\n") "<CACYkhxjCZOq_yxpn2C9PHRdZVxfs7HMM5K2Af4k-zURqTfeydw@mail.gmail.com>" ("<540E7816.90001@redhat.com>" "<20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>" "<CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>" "<CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>" "<CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>" "<20150410092652.GA27909@blema.cz>" "<CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com>" "<552897A1.7040504@redhat.com>" "<CACYkhxjCZOq_yxpn2C9PHRdZVxfs7HMM5K2Af4k-zURqTfeydw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7779 invoked by uid 550); 11 Apr 2015 05:29:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7755 invoked from network); 11 Apr 2015 05:29:50 -0000
Message-ID: <5528B140.9080708@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <540E7816.90001@redhat.com> <20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org> <CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com> <CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com> <CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com> <20150410092652.GA27909@blema.cz> <CACYkhxi5OpJ_RBHMC8Eyx514Pd_DuhNUr3pkWB3DjVG=Jx6XNA@mail.gmail.com> <552897A1.7040504@redhat.com> <CACYkhxjCZOq_yxpn2C9PHRdZVxfs7HMM5K2Af4k-zURqTfeydw@mail.gmail.com>
In-Reply-To: <CACYkhxjCZOq_yxpn2C9PHRdZVxfs7HMM5K2Af4k-zURqTfeydw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="O2Xh09HSl9XvmJJXjod1D5pOBMF5J6Kjd"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Fri, 10 Apr 2015 23:29:36 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions
To: oss-security@lists.openwall.com

--O2Xh09HSl9XvmJJXjod1D5pOBMF5J6Kjd
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/10/2015 11:07 PM, Michael Samuel wrote:
> Hi Kurt,
>=20
> Murray McAllister handled the response to this when I reported it to seca=
lert@
> but it's currently languishing in BZ#1126713

Murray is sadly no longer with Red Hat (he didn't die, he just moved on
to another company).

> If you want I can send my patch as a starting point - it got really
> nasty because
> nobody considered that strong sums would be >16 bytes when writing rsync.

Please do. So one caveat: Red Hat Enterprise Linux is generally
committed to API/ABI stability, however Fedora is not. Just saying.

> Regards,
>   Michael

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--O2Xh09HSl9XvmJJXjod1D5pOBMF5J6Kjd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVKLFBAAoJEBYNRVNeJnmT9yUP/RU7teNwK2V5+7NgQBKePm1t
n3J3YaT5Y3Ia04cIwbxoic1W0I1jgIAB15B/2egQlVS15oaQQvDExhVgLXEevw2f
IS3riAHleyNRKaHqxfUE5cM6Q6GNMEJXWOd7hJsn9/qg80EsSimL5udDNavtZZ5I
7c7fQnx1h265cEf4ZbKgMbyzjoiYojy55Gmym4pOLksWNy8olJvGrKz0Upx+Rdln
34O5OyEVSvCAKPN8N9DHr2nIEH5aBNDNSPPn/WX+5wCjV/3Kl3VBhrdy8ERTFMe/
Bzjv1FM2EICtmRNirVlInG6cOAH7hLnmA4khBmFnri5SZs2xQsl60RJ9bGsLuvAs
8FH2CwnjoYG4TMlECDiQWeqTNTEIlJBmw3BdiQUatF80HFLr5tfpM/HRVR/FIZ08
fPsfMVgYbuJUjBCFzkkOvumqSYRzTvMEfuxryZygLNcTlRQaXEQBsGjQrYB97H4o
1QXhSpiVVK2jmH5aj9PkijWTV8q4Edsl6mfzO7S6bVux8ZdOGMkhFH9f/nnv+gff
XdoG/8lgOp6qk09ZKXjPfa5Ip7FNSDcdaSQnjV+d2ftDcAz/Fih3PeHIPBzj/uks
u5kMP49esMb381G74mcUy885o1/eTrkE//lZOB1B2OhEQ1pq2iTbmS4U456LWfRw
qVOwI044hTMiCAWTJ8tg
=IujZ
-----END PGP SIGNATURE-----

--O2Xh09HSl9XvmJJXjod1D5pOBMF5J6Kjd--
