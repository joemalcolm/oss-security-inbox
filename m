Received: (qmail 26341 invoked by uid 550); 24 Apr 2025 23:22:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26286 invoked from network); 24 Apr 2025 23:22:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=vXfZwkFrJMZP3IptVToO8mh5AV4TGGggRhnOr7Ak4C4=; b=Xs
	L0McfbhKQqZlLcnxR1aozTDm/tAmB3EaGOXvblwugTxNYRhXLbEv3X2BjajHXeXs
	jA4RdBN6CjlBYNQfmHOLMsgpC8wF14mzRTFebsSpcLjc4ehkmwL0vZMyWP8Iwoiq
	vci+oXcg/8dv4BqEfo2OOix6rYkaTQyLbJhTI4aNRGHtUbNpbn0Tyu+/okm9+19d
	uUvM3uU/VIqk/jwV9zR7o61PgyA2sA7ywgYYT5srHuuA49txMbRp9f3QwFrmRdAR
	1KHU5ZT/J/4uKiuPwx1bYhEPdJT/5IoGxtFJqXCYBQp02wL7u3Rrwv7BXY5Hmlbv
	9k0GINtkfrd277yWVizw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eNC3fYqxIgIROYwXYnfdxovnOXucyDOliYZIvKbXAd5JJS+IinFl0ultbobc+nN1XlAMV/hQE+wkQ6AE8zbERr1aypI026KVnOst2jFz2nhsu3f6NnX8Q9kGEfmogWbvjXU6hVwivXzfrJrORKuFxQtDMyXpjIiVnES0S5KsfHuSSAiI83Fe+cVAUCbPISOk5SlMFfqblBItcirGieNxLt9nHFzC0F0SziyASWkCpQ/0dgdRs6mIltV/gQ52dRGtacgH1TSLzXSpi8ssoYneb3CaGuaHyKP37kGUNjxhiCVDS0E7PXhiCZ8yhZWzX/vHkESz3uIsRQCYpFpXGlL37g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vXfZwkFrJMZP3IptVToO8mh5AV4TGGggRhnOr7Ak4C4=;
 b=tfDH7wm5XHdU2EHpg5JJwpsUQ41y3X4zOQ0l+sYAfAVtNjR1eZWGD3J2daRFiE62Bkqp1QgaVCKzwcPQ3p8+aARvAUAQoetevRXhLQEes1ExwZ29K2krWTwNVvCJ5iLfqnHqE0LD0BHckEVsOWn2120x3mttZ7y3vyNcW/rVyu2u97RmyXAB3Zl0+wiUJSfUOItpwn1Z7K1STdWhHy0TR8Z1bC4aBM+rJAqtNhYBwgPmlcYZ2idhOaC8PNM4VlgVV9//HV6QGL0RolUYJKz6XF5AMxl29CRamSozqyqsoacw8HBcirEQaza8+pSV64JdWalUU0zlQTZDtww5ZCazrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vXfZwkFrJMZP3IptVToO8mh5AV4TGGggRhnOr7Ak4C4=;
 b=C87DNjmspVo4SlDUmVQVGJykLT7nHvEOBfev/kf4Z7gLj8rnnp/kQwFY2d6jub98hMnr2VUcr8JUscr+gwfrgVolCaUip8Uj3wOSTx1QDg9GZGci5Qt2ioMre+Q40bWPbLe0oLR+Q7Q26lgOOKhN5povCCArb7J0K8PdUdyWlFCDTJIT6bszkHYjvoWG1XNu54Em7N9JMAPXgBNiI7Xlm1wVozdKW9lrOIwaHGpYaKDPnQW9VM8BP7+nr8JFBBIM3C0KDHYwMZ4XhNfRZ7/H0VPYsWNVT68W3Hvofka89jMBCTkr7VF46cPnonWcPJt2CUqriNYr2XhOhtcnUWJRRg==
From: Qualys Security Advisory <qsa@qualys.com>
To: Solar Designer <solar@openwall.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2025-0395: Buffer overflow in the GNU C
 Library's assert()
Thread-Index: AQHbbNNbZRguQNWsWkGl8AAXT8Ti0bOhSGgAgBK8+wA=
Date: Thu, 24 Apr 2025 23:21:47 +0000
Message-ID: <20250424232052.GA3372@localhost.localdomain>
References: <20250122134128.GA29327@localhost.localdomain>
 <20250413011148.GA16814@openwall.com>
In-Reply-To: <20250413011148.GA16814@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|LV3PR06MB9524:EE_
x-ms-office365-filtering-correlation-id: c1c3491e-5256-424b-b4ea-08dd8386c8d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?hARnvBzV/KruWqcsBThnHhPBmuxFytiPNdQohJ/m2BmHq1Sp3SeEXD5JPWnh?=
 =?us-ascii?Q?JfDdgHs+zrT5jkRFUptg0suFyITUfjNfOh2ztTlkuz8ppR0tyy1+91yO2vMO?=
 =?us-ascii?Q?H0YuZpjlN+u5kAtwzLeyQslE5WMgTSTA0bTkbL4BtVdNI52Ku0QbjQf75txP?=
 =?us-ascii?Q?sbFNZw7y4aql744Joe27hXQXYjVC8WqcKyY4Ik0KvZa/o8eRB8BFIwVCId4E?=
 =?us-ascii?Q?d7z2OIL/OoQBguf1dci4A+ilPCShcAlSjMZKP8QVcsR6yyiYqLX3HE2T7Sq3?=
 =?us-ascii?Q?OPta1L8Dzvwi+4SjeBVIGZGxNA2jxPoxzzDr9LJ3gDW2aJ3/vF1h+bKWb91T?=
 =?us-ascii?Q?/VAq2l7EoM36kQFjr0ls0vjbUiuDMW1LZzPZb0IkpNdNDnDEOvI96uuurWeX?=
 =?us-ascii?Q?rhFQVEptO1eR1rml8+wHqPfurONExou4iDLv29BHalnHoVjMaaw7tN73aNfF?=
 =?us-ascii?Q?005ccmHYNSqiv59NogwfkZUB7g1CqIrZ5ZvsJtIW0KemqmM0QZU99rTrvt9k?=
 =?us-ascii?Q?DloiWauOqan2PLEPjG/jyxmLc1XtAGeNzhQ2wWUzck+exlGlrb6lTus+x9Sn?=
 =?us-ascii?Q?YOKw9an9KJ/yy9FRVWq13SpcnVEiFQEbGuINDG48+XnI3UvbfMHivxwULxl7?=
 =?us-ascii?Q?VPR364GhGFyXewKRxGhU2WlA0eRG3P5zKYuWeL8py3oOqyUVHglVedL6VwO2?=
 =?us-ascii?Q?i46v1aZW+8ppgN1p2b3uSGR6vsgdDytPj7YXjfeErIP1tIIq1Ep5xJSf2zCK?=
 =?us-ascii?Q?pgs0PJQL+OXr5Mrh1HeHKPksHm/02X861WmqhLvQYzrjxpL/fElRhCVZUtUR?=
 =?us-ascii?Q?CWrn1fc2bIkYyUphhcsGbEy9HsHQLz0o30PJEDiw0QChPlL0vOovirC+/DxL?=
 =?us-ascii?Q?0hYIizFkCM1pvbvg3iz9zfIXbFvv5z4D1BsEIDszLZJ6BczudRJLvxtFudbp?=
 =?us-ascii?Q?mmb5SfeQPO7zCTmpjSb4BDO3K3VfyXrKGUHrCwwHUiLsZ5vlPeATot+VumRR?=
 =?us-ascii?Q?qrSVPZKRTSwluDn8sxEtJYm30IlHfZshmYVISAjsr1SGDp2fzqq7DC/3NFAU?=
 =?us-ascii?Q?nmf3QapvtunJx2Hzq/dHTb+VDGXsI4StQCypla6Mlx77q/52ijwcf5nkel5e?=
 =?us-ascii?Q?yyM3qlH5h9AoqoKamXn+F6wHZ82plv8qvlQSRkf7bU3/16cFRIVmVKtG2/QR?=
 =?us-ascii?Q?PG0kD5iYKxIHm3r0PHkWNm782hOft+n1Y4jwzqznImufUrcD7bJrdhPcV6Ku?=
 =?us-ascii?Q?PalGRqIwvWNWbZfr0zNuVDPY3KKaeJECGmSyUMhgrr3OSWZhR40tUuPVGoU0?=
 =?us-ascii?Q?WgPJ6z5OwVuzjW3zex3LKAUSs1TRtpcB4QoimsA2j7wVxyu/edWEIkTio4B5?=
 =?us-ascii?Q?BkbX2tKp7wJYs9GaRzLv2572O18W0yGwq56c6BuiobwY+LNCcwBtgLU+CIRR?=
 =?us-ascii?Q?Ox2IKWVraQpfENvGpMJLuoUpNVycV8dfdFFhU4DDWuDuu/IuKyL9DlYN9LR7?=
 =?us-ascii?Q?xvnzkZaNtl9QZZY=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?ngDWTciBedmkAK3SSnPT7XR46+UvwHym9JfWSRWtafcUq58oCcLCn+kMmnSB?=
 =?us-ascii?Q?b6xMzduGrqPPjoPR5Y9XYZNVRDP0Z0lzg8N0YUR5/lQOXlZbrt9XhAmvOrCc?=
 =?us-ascii?Q?upUd46e6eJ6AmAwkP2oMfzB+oMRCCnlZpbpWUYdXkiz2lpLEUUBG7KI1bSkK?=
 =?us-ascii?Q?cr3YIOY3W5RSW46kfvN2Xb75EEEwwF/a1WveecxyUXGCfjjKhAn//63XJFq3?=
 =?us-ascii?Q?2BL5W33aB5zCi6RkMIr26q7brIYmXvfonM0ONWLaH3SzaMKm89e+3a1XXIb0?=
 =?us-ascii?Q?rHsALpOwH3DAv2/KW6v7aRklJlLGDNmM4b5e9PsAHWWvIH4So5cmHxBbNc6T?=
 =?us-ascii?Q?fs3aHBsU9MJL3dBgiv2stfF8RDhRhnZkzzBVl0XEZbb+UdBabl891k9Hr0L8?=
 =?us-ascii?Q?PptbN9XVqmHG06SKG6ny/dDuGavQfC9ehLLT0zSBqfbm70M7e2VAfN/eLiCH?=
 =?us-ascii?Q?sFoLAe8VBNZH+TFK718Ln9nDEkjS3sEJe7qG00fICjf1auWlt35z3w78+ChK?=
 =?us-ascii?Q?6lbIbXuosT/01ofTy7VzwzNndy4htHWd/ACg26sfaclDmRW1MQPEeCC4fPf3?=
 =?us-ascii?Q?JyeXazoSsQGmAv6QqBdiQTi7lSr0EOL/O7fPrJ/39AYVf4BxZxhUSdQsWKRf?=
 =?us-ascii?Q?87al9Pzf2RReevdmNfPgVTZBBjiJrFMNz1w48aHht1igtiLitOtV5iA3pF/1?=
 =?us-ascii?Q?9B48vnIpan9e3/FVtnsLY50H+46Z03JRxrYTmalLwmN9F/xgoNhy7hgNOj/K?=
 =?us-ascii?Q?Zi2EZFWgsATa9MiodJdJ5TpfjTrFdw88STSODlzzgCxjTmBEtRnrvjL5+592?=
 =?us-ascii?Q?sEzbpGGUS1hVRl3Luc14ShHEkWza9vpdy8uZj7HdRZvMja09oz2F6SjOcen+?=
 =?us-ascii?Q?z1cge2hnCfllZd5i/+iSiLccZ8Wm7KUSoxCB5InuVmY28lhbb8gVEfQbAuTo?=
 =?us-ascii?Q?4rdEQA37FTwfQMtgx7A3E17YeymvxFG2V+kxzgwVQpOTB+y45/MnjteJqmuA?=
 =?us-ascii?Q?LMxRVzO2BvnqvPFdEgxmA7Tup5E4iik+juXAySDDXkYnfpemumRr3y4tiBeM?=
 =?us-ascii?Q?8QhwG/BxX+mL1UQ6We+Ykb4zSOfG5+k6UJsI7iDw001Nrym+9XjLElQAutuV?=
 =?us-ascii?Q?HfBQIA48wZdS4AHLDCtZmOD4Ml+WMKLGa6H1bJ1S+BHCRfiuWh6RcShuzO6n?=
 =?us-ascii?Q?Kn5FbtixIWOxc9NZBcIcQtykUdVjcZoPP3D/K79Kbs88+meOMwwGO7zrRJXA?=
 =?us-ascii?Q?FIrvASOHLHqFgzLWNNE64BW5iY9jlXIMdWRZQOs9y5xbuhEdNDM9/oIQlTI5?=
 =?us-ascii?Q?iyoI4Bi7lSUQ4KDpz5o95FuJ5rZXFo9NDFaZ1Y+yt2F72evEYdka1FQaD+7S?=
 =?us-ascii?Q?0wHW6c77OaovA/uwQZG0L/B040aGyOeagXdXWtDxcaShC7752z57DXdd0GPs?=
 =?us-ascii?Q?XIq0/2qoZtq5MF7o0WRvXN6O9jOoOp9ra6Erxb1F3ToooMgLaULMKGbKETZV?=
 =?us-ascii?Q?M6oO9xXniQwVtfGLaQdnPjwUu1EGQLGM6ygst8IgfS4tSHjmpYvWUIxSEcdD?=
 =?us-ascii?Q?GVkNcJJb496rn2YV/g1JgW9LCE53SBzojd0Vr5kLDN3eBrZ6b3fLW5pHU+PU?=
 =?us-ascii?Q?zMKet1TL3qOibbQpSEYaVWI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <44328802E6890145A237277480D219D7@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1c3491e-5256-424b-b4ea-08dd8386c8d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2025 23:21:47.4502
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wxFDxgcFUZjM7zQh3dUf8DzWClIgPR94OtG91x73432lq8UKkhLZvkHfmo6ThiwOTqZEQNGM5aq85bAcNAziBIRB8dQC68tDwOqwfBrn8WU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR06MB9524
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-24_09,2025-04-24_02,2025-02-21_01
Subject: Re: [oss-security] CVE-2025-0395: Buffer overflow in the GNU C
 Library's assert()

Hi Solar, all,

Sorry for the late reply, and thank you very much for looking into this
and for asking all the good questions! What follows is mainly based on
scrappy notes from January, but hopefully it will still be useful.

On Sun, Apr 13, 2025 at 03:11:48AM +0200, Solar Designer wrote:
> On this system, the above triggered the bug presumably in the same way
> Qualys had observed (segfault instead of abort) only after I changed 32
> to 64, so with page counts in the range of 32 to 63.  Yet a similar page
> count (44 in gdb examples above) works very differently in my standalone
> test.  I don't know why the difference.

There are probably two reasons that can explain all these differences:

1/ Difference between our command-line POC loop and a self-contained C
program: on the command line, the kernel limits the size of an argument
(including argv[0] and hence __progname) to 128KB, so anything larger
than 32 pages will result in an exec failure (Argument list too long)
and will break out of the POC loop; but not because of a segmentation
fault. In a C program that sets __progname manually, there is no such
size limit.

2/ Differences between distributions: depending on the number, size,
alignment (2MB versus 4KB) of the loaded shared libraries, plus ASLR,
the mmap space can contain holes of various sizes (random sizes, really)
which in turn can vary the nature of the memory mapping that follows the
overflowed buffer. If it is followed by a read-only mapping, it results
in a segmentation fault; if followed by an mmapped chunk, it results in
an abort from free(); if followed by a writable mapping, it results in
an abort from the original assert(); etc.

> More importantly, can those fixed 4 bytes (or 3 or 2 or 1 of them) cause
> such malloc metadata corruption that it'd be exploitable?  This may also
> be affected by what original values are overwritten by those, which
> could vary due to ASLR.  I haven't looked into that.  Maybe Qualys will?

The only exploitation opportunity that exists after the buffer overflow
seems to be the call to "free (str);", so we have to distinguish three
cases:

a/ The target is a SUID program on a little-endian system, and "str" is
an mmapped chunk that immediately follows the overflowed buffer: the 1-4
bytes that overflow the buffer only allow us to corrupt the prev_size of
the "str" chunk, not its size (which also contains its IS_MMAPPED bit),
so "free (str);" will always call munmap_chunk(). And because we do not
control the 1-4 bytes that overflow the buffer ("d.\n"), we cannot pass
the alignment checks in munmap_chunk() (on a little-endian system), so
we believe that this case is not exploitable.

b/ The target is a SUID program on a big-endian system, and "str" is an
mmapped chunk that immediately follows the overflowed buffer: this case
is similar to a/, but it may be possible to pass the alignment checks in
munmap_chunk() (on a big-endian system). We have not investigated this
case any further.

c/ The target is a multithreaded SUID program on a little-endian system,
and "str" is mallocated in the thread's heap that immediately follows
the overflowed buffer: the 1-4 bytes that overflow the buffer allow us
to corrupt the first field of this heap_info, ar_ptr, and this corrupt
ar_ptr may then point into our own data in the thread's heap, which in
turn may allow us to control various fields of the malloc_state during
the call to "free (str);". This case may very well be exploitable, but
we have not investigated it further for now because we do not know any
multithreaded SUID program that contains a reachable assertion failure.

Thanks again, and hopefully this helps! With best regards,

--=20
the Qualys Security Advisory team=
