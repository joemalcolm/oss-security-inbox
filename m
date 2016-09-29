X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2589" "Thursday" "29" "September" "2016" "13:54:53" "+0000" "Mario Pirker" "mpirker@linux.com" "<VI1PR06MB1087A485F2E0965FAFE79083A9CE0@VI1PR06MB1087.eurprd06.prod.outlook.com>" "73" "Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" "^CC:" nil nil "9" "2016092913:54:53" "[oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" (number mark "        mpirker@linu Sep 29   73/2589  " thread-indent "\"Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call\"\n") "<20160929134526.GA24474@kroah.com>" ("<F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>" "<20160929134526.GA24474@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26141 invoked by uid 550); 29 Sep 2016 14:15:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27739 invoked from network); 29 Sep 2016 13:55:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=eSFGqvpVX03m6u1aAgoyzpK+R1RTVdDY8H5p4MM99Ds=;
 b=C0IoEUEJrPOHCMQTI2bAVxCYwi9ZC9UdIG+6sbL0CXyiysnTuPaH05OwHsywLtx9GKnairKndX/uqYyqyWtD6P/14u6wqqbD2ITCdSBOEFWh7aQu3qy/C/SBRHMgtVU5NZ1Is1Rt7iPcKLeKUkqcm3TH6qn+5jJHvKmr+AYcwl8fHsbuAquNsj9M3NdoXKs0j3r16eFdDMCWv02tmUlja6vN25ftSSRBIjuyZoLo1oNn9BvfGzPYiEAouVDJwUhSDmjjtZUf7zR2R1FuZsKgjcnf/eUgbYbcvyNk+7SRipHzn0SKSq6qqm7K+mJ79CqxphNsWLiCWKLRBjKQAHlhJw==
Thread-Topic: [oss-security] CVE request - Linux kernel through 4.6.2 allows
 escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call
Thread-Index: AdIaInl2paxVCiDHSfSl/A53v/BrjQANUIwAAABTJgA=
Message-ID: <VI1PR06MB1087A485F2E0965FAFE79083A9CE0@VI1PR06MB1087.eurprd06.prod.outlook.com>
References: <F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>
 <20160929134526.GA24474@kroah.com>
In-Reply-To: <20160929134526.GA24474@kroah.com>
Accept-Language: de-AT, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
authentication-results: spf=softfail (sender IP is 10.152.12.56)
 smtp.mailfrom=hotmail.com; mitre.org; dkim=none (message not signed)
 header.d=none;mitre.org; dmarc=none action=none header.from=linux.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
 hotmail.com discourages use of 10.152.12.56 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 2
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1;VE1EUR02HT067;6:u6ZDUJ1oIX9CHpHcQykWibrSwfmArmp1PBxUOjsF5dItViv0/eKVaBXrXNoyC9xXCScfxzd7lA4XN1JpbWeixIe3SMl2IHeXD0uZkJpQmVzxJ/g2BwvA7OVgQgOlRkY4ku5/ueaoCSrJzpqUno2Se0H5Fl9Wdd8JNI/TZiCAVF3xNkzF/rBhwPt8H/I5gqLPgJWGV1FY6r4QLV707RRgTuzahmd0QqFJzfWca+co2ElWsiXrZEMGCb9BKVYPucYjPt4ZiE4K3OuUebIYDdVVp6HXzYyVG2qkRw1ew1eZ+x8=;5:7s9qtfhXVVQHYS5SW6QTunsw32/lixsMXgwSVPjrFLcMbaFkg2BqCUj2no4HLEn9WP+Wv4ahd0OVezAMsCbT8tNRMsA58waXlc9CVUGhpWEYaUfuWwqbrrFvIKPpLzCqPKKZqTJ3nVnBxEGHY6egVQ==;24:PN/BfLkQNEdtlzxPbFfVynLJW35HUvxMJRFrw3ZUeHhWXeLM0PgLdyBpl6TCeOHE74aqzIGWUMHz4Nd/rcaJWJLp0gAcQ/DmkhmWe/Z520A=;7:eUWErGRijpUpc17IXgcaWnNiC6JrP2dQ9klaCC9/upahPVdSo7Ee114Clzo0jed9Hj13Ft1aP+IZ4dSzNEGQ6OQHAmXDWH9hTQAH+3R9PQ+khc/ogzNkuVKTxiPmFI4I7taye+wlL7ZhhdQX2VvdMseBbN+f0Ye1GRHGpJgVpHKCHm+PbYjEumxsdJM8Zp3TWg7SQzSWefujiAY1wxtg5u3Fb3melcnUlPGEiGrtB5zK7zJnRoN/SMLfQx9x31iQuNclj1g3hLztBFvzGbxQ+RM6cjabjB/rd56DdziPJF4qPlDAd2ZZzTegP9sx4Haa
x-forefront-antispam-report: EFV:NLI;SFV:NSPM;SFS:(10019020)(98900003);DIR:OUT;SFP:1102;SCL:1;SRVR:VE1EUR02HT067;H:VI1PR06MB1087.eurprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;
x-ms-office365-filtering-correlation-id: 181cdb51-70c6-4d5b-1cce-08d3e8702f2b
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(1601124038)(1603103081)(1601125047);SRVR:VE1EUR02HT067;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(432015012)(102415321)(82015046);SRVR:VE1EUR02HT067;BCL:0;PCL:0;RULEID:;SRVR:VE1EUR02HT067;
x-forefront-prvs: 00808B16F3
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/signed;
	boundary="Apple-Mail=_93B5127A-4D50-4FFB-B325-2D0AB59597AB";
	protocol="application/pgp-signature"; micalg=pgp-sha512
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2016 13:54:53.2033
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT067
X-OriginalArrivalTime: 29 Sep 2016 13:54:59.0015 (UTC) FILETIME=[11334570:01D21A59]
CC: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Thu, 29 Sep 2016 13:54:53 +0000
From: Mario Pirker <mpirker@linux.com>
Reply-To: oss-security@lists.openwall.com
Sender: Mario Pirker <mariopirker@hotmail.com>
Subject: Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows
 escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--Apple-Mail=_93B5127A-4D50-4FFB-B325-2D0AB59597AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

For completeness - here is a link to the advisory released by NCC Group:
https://github.com/nccgroup/TriforceLinuxSyscallFuzzer/tree/master/crash_re=
ports/report_compatIpt

Thanks.
Mario

> Am 29.09.2016 um 15:45 schrieb Greg KH <greg@kroah.com>:
>=20
> On Thu, Sep 29, 2016 at 07:43:35AM +0000, =E5=BC=A0=E8=B0=A6 wrote:
>> Hi there,
>>=20
>> I found a memory corruption vulnerabiliry in Linux kernel through 4.6.2,=
 and I
>> have a working exploit to escalade privileges which requires the ip6_tab=
les
>> module to be loaded, that it is properly blocked on all up-to-date versi=
ons.
>>=20
>> Due to the number of users running vulnerable code(not update to 4.7 or
>> higher), and that this exploit is only available to security researchers=
 and
>> kernel packagers upon request but that I don't want it to spread.
>>=20
>>=20
>>=20
>> I have reported this issue to Linux kernel official and they have alread=
y fixed
>> this.
>=20
> Note, this was fixed many months ago, in May of 2016, and went into the
> stable kernel updates in June, 2016.  Any distro that updated to the
> stable kernel updates received this fix then.
>=20
> Any distro that hasn't updated their kernel since then, well, you need
> to revaluate your trust of such a distro :)
>=20
> thanks,
>=20
> greg k-h



--Apple-Mail=_93B5127A-4D50-4FFB-B325-2D0AB59597AB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJX7R0kAAoJEBE5xphsyhv4IXsP/R7YWfYQiCNFW2PR64WdpxpK
DzvWbTZpJKUi9fnS3uvf5iXLaB4pFO/g+dyLQHBEx2oN7ZLTbCy3W6sArAw0+KeI
BloVb867NxKpaqazOhcELlg/r3x90gf4Z0mRdCs6o8hE7EzuXAprTH5eh2cagqgX
fTZ1Hvuyg+5U69qdVEMjriBX6FSBFUxanydQ0F8DrZav91kFkcdvFmkHMmVBQxtZ
zebweZGfHe0/x8ANuvDBRlG4ZlDKVuD5xt7OFl8MdNjfZDsj2RG6KcSCmWL8y0nS
He/O81qGoyJXgvhKx6D3WA7ZGLPl0AL7CYXIz5hFcaXmUiUMnsi3diUiB0eQFhCW
O+71DCyIv83i0EvDGXQk4A+lu4xRVOC3aEoSdwZRt9XoxMKSwgVWQeaIJte8SstA
WP6wTABYhOdFwPKNYR4sBSW7h/vIV+rxdQ+oalDbVbgNtQM5bbqJjgmdsLIZjiR0
7Y1geIDGzJw43/JZOXB9A/eV+EzEgXr09jRf14bbJVgSYhySZDUMGaRwxCwYgkiQ
iw3rX0jiperAtkSKna79MKJFYUswbOHHYHcv2x3/KOfaGHxpYSMj8Hf8c9MQGjkt
Ou5cpmvs+h2mjX5yoLCi1kiQ9yE5fyviQ6MS7WWY+MywaP9vr21dU4pnAd6jA6mN
efssfqHOQx7Fu33KFfLi
=K6JD
-----END PGP SIGNATURE-----

--Apple-Mail=_93B5127A-4D50-4FFB-B325-2D0AB59597AB--
