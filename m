X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2790" "Wednesday" "11" "January" "2017" "11:54:13" "+0100" "Andreas Stieger" "astieger@suse.com" "<7ff4a100-60f7-1772-f552-511af05970e5@suse.com>" "71" "Re: [oss-security] Docker 1.12.6 - Security Advisory" "^Cc:" nil nil "1" "2017011110:54:13" "[oss-security] Docker 1.12.6 - Security Advisory" (number mark "        astieger@sus Jan 11   71/2790  " thread-indent "\"Re: [oss-security] Docker 1.12.6 - Security Advisory\"\n") "<CANO=Ty3C4kfhp=A6zQksNzmNRgUBpUk4M__mhkcez=_RA8_Dew@mail.gmail.com>" ("<CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>" "<CANO=Ty3C4kfhp=A6zQksNzmNRgUBpUk4M__mhkcez=_RA8_Dew@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9802 invoked by uid 550); 11 Jan 2017 10:54:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9781 invoked from network); 11 Jan 2017 10:54:47 -0000
References: <CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>
 <CANO=Ty3C4kfhp=A6zQksNzmNRgUBpUk4M__mhkcez=_RA8_Dew@mail.gmail.com>
Organization: SUSE Linux GmbH
Message-ID: <7ff4a100-60f7-1772-f552-511af05970e5@suse.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <CANO=Ty3C4kfhp=A6zQksNzmNRgUBpUk4M__mhkcez=_RA8_Dew@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="67hHQffWdcFVliKmpMArk1dK2mfPNoVP3"
Cc: docker-user@googlegroups.com, docker-dev@googlegroups.com,
 fulldisclosure@seclists.org, vuln@secunia.com, bugtraq@securityfocus.com
Date: Wed, 11 Jan 2017 11:54:13 +0100
From: Andreas Stieger <astieger@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Docker 1.12.6 - Security Advisory
To: oss-security@lists.openwall.com

--67hHQffWdcFVliKmpMArk1dK2mfPNoVP3
Content-Type: multipart/mixed; boundary="KjBXLFMKfcfGdnWDlcAo7a3RAoISRLNfJ";
 protected-headers="v1"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com
Cc: docker-user@googlegroups.com, docker-dev@googlegroups.com,
 fulldisclosure@seclists.org, vuln@secunia.com, bugtraq@securityfocus.com
Message-ID: <7ff4a100-60f7-1772-f552-511af05970e5@suse.com>
Subject: Re: [oss-security] Docker 1.12.6 - Security Advisory
References: <CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>
 <CANO=Ty3C4kfhp=A6zQksNzmNRgUBpUk4M__mhkcez=_RA8_Dew@mail.gmail.com>
In-Reply-To: <CANO=Ty3C4kfhp=A6zQksNzmNRgUBpUk4M__mhkcez=_RA8_Dew@mail.gmail.com>

--KjBXLFMKfcfGdnWDlcAo7a3RAoISRLNfJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 01/11/2017 03:29 AM, Kurt Seifried wrote:
> On Tue, Jan 10, 2017 at 6:58 PM, Nathan McCauley <nathan.mccauley@docker.=
com
>> [CVE-2016-9962] Insecure opening of file-descriptor allows privilege
>> escalation
>>
>> [...]
>> Credit for this discovery goes to Aleksa Sarai from SUSE and T=C3=B5nis =
Tiigi
>> from Docker.
> Can you post a link to a patch for this issue, or to a bug entry with
> additional details, or the download site at a minimum? Thanks!

https://bugzilla.suse.com/show_bug.cgi?id=3D1012568
https://github.com/docker/docker/compare/v1.12.5...v1.12.6
https://github.com/opencontainers/runc/commit/50a19c6ff828c58e5dab13830bd3d=
acde268afe5

Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)



--KjBXLFMKfcfGdnWDlcAo7a3RAoISRLNfJ--

--67hHQffWdcFVliKmpMArk1dK2mfPNoVP3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEELRFTXKGyY4WwZ7oiLNapVeFZRUYFAlh2Dt8ACgkQLNapVeFZ
RUaflBAAqE/xpBMXQm+4vfGQj3k0WgBlOgRc9adZhk+D4lNL5QKT0iorX5Qn82Ru
tHakBBvRatBDAV9T4rt65jIVyGZTc/i4MewftxlNVZqLfpQRfh5gFE6aAtaRnCoC
u1W3EfqTezKKZeJ5BOR4As9mZEY3Svc4wzxsVPg+2Q+bLqINOg9CWAkJQryCboZi
2PtTcSLMfSoiWzMRlTguz4pzxQ12mrUpk4cowo96r8e6UX7iR5xsqD3bwsIes+rA
v2IfrWyqNMRcpHWydo6fbiNY9d+Zrd/fysFFKJLOawIT0el4JqU6CsobjbKx/JDd
B5ZnpU74C3K8t2V0t8WtaiE5dPQ7gnxyQIkFm8fkq6fIoBTgsDFbrKjgyvCUPsHD
Tkq8Kz1RyjG2XPGvW2tKXWqxCFR4YvCEkdNT3hRSMNq8EGMflZzjc3LfwI/TfK/k
PEmo3NyoDi/YFYuxX+AAwQje+GsiFqkqSWC/C/BOyjxWCJDIT5Mr0xS1wbQ9q7BX
N0qnNE4rySue85pnu9nY9eJ6Vv07nwZ3Pbl+SUXLN8aTiL39pbF1a/rU3AWDn1hR
wh9jmopeQbzUUOQnAQNaU7buBrZCBXD3lovcgfOx1H2U/JbkVhFFILTqt2Qfv+ws
lauTnDrrV7Ws35YDDM2VDX6U3uCK8H6J6edCa/OjoMTAMl4qxhI=
=i32s
-----END PGP SIGNATURE-----

--67hHQffWdcFVliKmpMArk1dK2mfPNoVP3--
