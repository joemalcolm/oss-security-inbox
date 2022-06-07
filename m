Received: (qmail 15990 invoked by uid 550); 7 Jun 2022 19:04:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15960 invoked from network); 7 Jun 2022 19:04:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : content-type : mime-version;
 s=corp-2021-07-09; bh=t6Zf7xPWBvMmEUgzx8qRrAaBgXXakTezaB9R8EP+V1o=;
 b=BJMdHohtUrP8dvylZvbW9WZ5RzzrqfFIUra3wmw0vZhggdQyCILnwBT/lPBj8x80cFx+
 YJlc0dmoTEHDVfmspOQ68ieJMpjB1GjUfV0R/YMzXXCTX78HEttuhjDXSt46Qe4Tw8yj
 P7bIerYw9os6l7PIh6CXxSNf1p3kwnQrxSA7Rvpu/b5ptrf96WiJQiO7ibnOwWLgXKmy
 Osp3gouNTr6l7VBBgVPqLQ9BdwC0t709D1yrSz72mp4a48M/Sq3Sy4cXrFFcfL7HAjEO
 7PT5YoMm2WKGDKiGxbyVpK2VoAUXA1HkNZUGS0xENyF6T7RWsvIcvQjBwGr1rG/gpjVj 6g== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SC89DlbYyHp+GBHU9ndTkIfjqQjWWbZJ2nX0VrdjgR5rXibFBzYHMIpW7g0SeN5ghOOPMItx+rTLJBXB/ilddFvkZbyPy3nLDA2l1MpjS4vz79015lI4Dg7poOqbsRY3LmqRZvsjugZznbKxNi7Er/YQk7DM10Gp29toeEJTwwbuP5mttgsQFbBp+FLjD7Zp4R9A7xgp9rhq7qHXevdwGCwOftiokL3fqst+9tMi0PygkHFwZCZ0V/B+WeiAruuMj2xyEDTIhOE6QGyz/ZVhSXDsWFl2Wiz0iCwhT21Lnbal7LHbIfGm4ZMNCRmgjyZ1m+sYEvplETRLsWaeIWRg7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t6Zf7xPWBvMmEUgzx8qRrAaBgXXakTezaB9R8EP+V1o=;
 b=V80NN4vBqloefA4fLT5a9jrD+XMzkX+5BKR6d71NMZUM46tPSeFQjjJQ8F1FS+bLpkk9dQL23IWKsRE+lXYTw9yk6q6hbG+b7YwX8K2YcbItp8e8fZc5jwq6/yna9bTBtckf1EVo7etskmlMCo89EH24o+yWWPdm12FY3AyPJ7gf56lzOi2y6X11u1JQrJmftOSZnt4pCV6bUEhoHWVqQAoE0u28xHlC2xOFrk2fTMzCNJ6zSUtYR++UODkm6tnsSjYaXHaIGP3zTLMf2ISi7VW0hxKO4xnLICxyivF5doyn4aMo2V7CQFN8ic0/f1qbCl33Rct0Y8/YKVX7O5nGDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t6Zf7xPWBvMmEUgzx8qRrAaBgXXakTezaB9R8EP+V1o=;
 b=c5ciZmqb/pP0/Ntvk/bbzZy/msPniHXAQ75ODzfYHzNaxkAmiW22L3s/qFmSAr5j6i2zpf92mTrMta/Tp1fg1yvcZizl6Zm7nkaks/ELO6DwpCqnMvGJD+XfHbmptH6Z4wseDXnu1ydVLPSzVPm9B1ozA08KZ1Pz8dC5kjKb/pg=
From: John Haxby <john.haxby@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Daniel Kiper <daniel.kiper@oracle.com>
Thread-Topic: [SECURITY PATCH 00/30]  Multiple GRUB2 vulnerabilities -
 2022/06/07 round
Thread-Index: AQHYeqFgK1AKcpvTuEiJX61SoyWabw==
Date: Tue, 7 Jun 2022 19:04:13 +0000
Message-ID: <190D2985-BF59-4CF2-BBC4-305C8F192A55@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d656043d-feee-4aa1-0265-08da48b8832c
x-ms-traffictypediagnostic: SA1PR10MB5687:EE_
x-microsoft-antispam-prvs: 
 <SA1PR10MB5687D7C688B3044F92289439E4A59@SA1PR10MB5687.namprd10.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4Udo5BOQgjIMRwOe42JEis7xD3PRvKZ3xbTaZW04aAqFvWizLQlIUk9r4e4y8yd92smiyknt6lfQuY+x4OFwkx/5puRRKMntRtNJaxrlwiMHkwpeByu5jUKbCXhu/nxybj5nRCOF62Lx7pc1qJdoISkgBPvD5Ma124Xf+fSs+PRGoJnSY0vUc5vV9rMHcTfkp7yKUhvcEVLZ6A7ojnqraSSGUUlUc2WMCv/8MprWvZC2lRr65lSz9slyFOq+HjLgnXwqSoEPAo5Y3zz16bVv5kY9RtGfT5IhUjzUr8ynUzMepu8t9Q5ore7ljfFT2N4cKsQPubZ8ynUuaHrvZZmEo48ckxScd+GNtRS+0y0E8+SF4DtEhQQM40ixUPzayokembwwh1bWkqvHhG0dJDSxKHTFLgtzPvsLjElS+9SEqomrCBAKow24wEVkUVl4q1/C0u3pg4TSf0piuZyUjmmALAUriv1sVv2Z1cMqmmdNdo+Om/o/FdXCxnH/IEK656cWrEyRt6pqDXeBWlSa0LLaT/bbb0RMgTvb4Y4J34ThwaBtbdL4HSzOCrZhtXLmcoa67HrGz9eyvyXdhQ0AkRaIbl8QeQryDfzYxnyB+YqpmnlOZql8dfj2uC7j4vjffnYJrdQWpOCPNPQrCvzw9mz4fksh7xvq6Z+oIF+1Db2n3kaMlbA04e9z3/SwAFZV2J1KWNzdG6pobEAmK4fD3HF8gj/VvX9ZeWMy30NRDahyG/AbW6b4bcbAlEbYfXkj7Rs1cfcui06US9JEixZ+/MaoATYSbEXO6ag4JSGommPOwbzRBB1ACdsGcZPiPHgcRMIuxplPYRnqfJsTrF1dUE1GyFQB7nvagyFLLitc+mHRPD0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR10MB5649.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(8676002)(4326008)(66446008)(66946007)(66476007)(15650500001)(966005)(64756008)(2616005)(44832011)(76116006)(6486002)(45080400002)(71200400001)(38070700005)(99936003)(8936002)(33656002)(38100700002)(6916009)(508600001)(30864003)(36756003)(316002)(2906002)(66556008)(91956017)(122000001)(107886003)(186003)(83380400001)(6506007)(86362001)(6512007)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?TiU3y9BI3V+9IEgiWhTdqijA7yGPBZIOlNpEpC+pvZNpJtYg/ouCtEwnhW10?=
 =?us-ascii?Q?JLCVbKLUbO40+rvbdbMaOYLjt3HmjH7xlFQAOOqaq9SEcqZpY6cutdTlL765?=
 =?us-ascii?Q?FO89yjzNw2wali+Mvep/WKLy/htJeNyHUV8puB7CjOEXQO2LAk6I2xXdCEZy?=
 =?us-ascii?Q?39K0yl9hyQzC72tuCTzCHqfoCqPyTtaDTgaI7qYcH+k6OXl28o6osTvp1Qtt?=
 =?us-ascii?Q?1tu5CasCcZj/B7Oh7KwneHx/98gvaUkh/5S6wC1vE4SQcg0b5pn8L6OzG6H/?=
 =?us-ascii?Q?jMqb9vLYZllcEHjC2V3UxQbg9m2wQN53/JUBwgFTBG0aeO+k/Cwdlda6BiVF?=
 =?us-ascii?Q?EKVQRgiEE9AsETnGosHilHFg/MxKAP9u+zGBcE7BYQCl8Pk+5ji0+7c8X7pY?=
 =?us-ascii?Q?BZJnNK5E7/VrdFvrHH16AwIJDpwgXaKTzRAZgmytprBmnwm+2pGPylDwYMDS?=
 =?us-ascii?Q?oKy5sCZLM7EDx9hSlSN6I+OaIUGyc+wG5KU0LvtsA5tLuYDjDkvscrjiZCXv?=
 =?us-ascii?Q?ZBAwicUgNCMQXNFkFO/UU/qZjsTJLM+wE3ps3Bo4Zk0+8AYU017XrBmGhB5t?=
 =?us-ascii?Q?r4zPj0wRqrwLz5dff3/25etRjOtgtcyjSX55u5MEur2LQjs1xIiQo8d7CMJo?=
 =?us-ascii?Q?qSwn3924T1bg+sU1tKAE8kGTY07JDEwdYpWOGx0vY7JehZpc5bCHmjcuM8zD?=
 =?us-ascii?Q?Vu8HrEjTy3Vi+OFT+dlWG5lYOTwJShM1oGhOM44zko3WVfyUmeAaFviGbRFl?=
 =?us-ascii?Q?sS+352hSIb+JKwhCSzlJc5GnjlM/zOo9K3yTXAvrO34gfLg6EMZOeePcYr02?=
 =?us-ascii?Q?ZRBZP7OJpJsuOjhjUniuTOOMkk+UFTvn0JiCgHVltQWCMyilLlpq6hsdaP5F?=
 =?us-ascii?Q?T2DcMRmuRxGu4KgzECFN9cbq7WEpBg9prkWEsjNP2rPlyCul1IIxMOZz+lcH?=
 =?us-ascii?Q?pyRP8Z3lxLwMXT85vtIGRf7zVR1UgVxj1xkolTsiEKHWjab+eNHCJfwCFq8Z?=
 =?us-ascii?Q?oZm3k+Ipcl52j2RzMc7xJkJvJb2G4vSgMwwepgSPu6FUdbj73xSThnKbRNDX?=
 =?us-ascii?Q?Y929r4r72R2rxQPwVra5UermC6ikxponxexmZpgnazI9KkelsewIPKkQfl95?=
 =?us-ascii?Q?+Bvgpf+gJKdGICUhKhGUcKfsGkKM2TtRcP87rfsTFcaa3HSdZ9WPws/Bh2Bk?=
 =?us-ascii?Q?5TgXk+SKCJmSrL+ZS4F3SAHoa1zAGY/DeylpvMWHiLBJb+AqBv1ZkqM2yfOe?=
 =?us-ascii?Q?70k1Wk7DH7hMHvKjJFcCcOoqMWQYVy+psfd4cN6PyPxti7RXHK1UexdphqAS?=
 =?us-ascii?Q?8F8B7EnZBaHk8V977o+TFTf/U+OcnqBKrFXFnqPXoAiZLXLw0uv8+Xe9B7NH?=
 =?us-ascii?Q?o155Nmd2CsfLxJZ8/96W8sDF6BMMRfKPc98A/UOmUcRxjK6TbXrrFIRtwkjZ?=
 =?us-ascii?Q?gD/p945f2b4lmhGGheqwDljz/V5hV2W3gzCrR62WWs7Xy1NSy9iwVlWXPdsH?=
 =?us-ascii?Q?CLyJ0NDr+pHYfBWLtoJIgssRP8IVUnggG/wyClX9U9X9kBDMfN0qN5gdEehp?=
 =?us-ascii?Q?LZN1JYWgQpv5onSfv60acAVebZSLLPsUDGparPnGpbxZW9YrZCr0frHJhkjG?=
 =?us-ascii?Q?V7W7xdxY33eZ0PnlPu1fJDLcGzSWSINDPiiAy+63Va7uHRioEIYT0IcgZxE+?=
 =?us-ascii?Q?sVRlh1Qu30gGH8OdslhpMvQYCjQo/aJJTQXVsyPtNrRCMfBCtMpd6X40MWyY?=
 =?us-ascii?Q?fQgXw5W/FPd4SeDBdSEgkXR3wYKjKynKvq1ayJep7IO/Fv8G/aM0?=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_DAAB7FC3-E445-44AF-A14A-309AA15B20A3";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR10MB5649.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d656043d-feee-4aa1-0265-08da48b8832c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2022 19:04:13.7603
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gqN4DsxxAbCdciJQF8jRI94GjTs3Tlt/JtOwESR2Fsb67s4tPhIOjxPVU28jNwGcDjOnzK3xzXq42EoWZ+8gkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5687
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-07_08:2022-06-07,2022-06-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 adultscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206070079
X-Proofpoint-GUID: tgIW_Hs_7JzRCBohujsocPHflxF5iHSc
X-Proofpoint-ORIG-GUID: tgIW_Hs_7JzRCBohujsocPHflxF5iHSc
Subject: [oss-security] [SECURITY PATCH 00/30]  Multiple GRUB2 vulnerabilities - 2022/06/07
 round

--Apple-Mail=_DAAB7FC3-E445-44AF-A14A-309AA15B20A3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

[ This message was sent to grub-devel@gnu.org.   It's archived at.    ]
[ https://lists.gnu.org/archive/html/grub-devel/2022-06/msg00035.html ]
[ and the 30 individual patches are linked from there as well as in.  ]
[ the git repo. These issues were previously brought to the.          ]
[ linux-distros list.                                                 ]


Hi all,

This patch set contains a bundle of fixes for various security flaws discov=
ered
in the GRUB2 during last year. The most severe ones, i.e. potentially explo=
itable,
have CVEs assigned and are listed at the end of this email. Additionally, t=
he list
of CVEs contains a CVE assigned for the shim vulnerability. It has been add=
ed
for completeness.

Details of exactly what needs updating will be provided by the respective
distros and vendors when updates become available. Here [1] we are listing =
at
least some links to the messaging known at the time of this posting.

Full mitigation against all CVEs will require updated shim with latest SBAT
(Secure Boot Advanced Targeting) [2] data provided by distros and vendors.
This time UEFI revocation list (dbx) will not be used and revocation of bro=
ken
artifacts will be done with SBAT only. For information on how to apply the
latest SBAT revocations, please see mokutil(1). Vendor shims may explicitly
permit known older boot artifacts to boot.

Updated GRUB2, shim and other boot artifacts from all the affected vendors =
will
be made available when the embargo lifts or some time thereafter.

I am posting all the GRUB2 upstream patches which fix all security bugs fou=
nd
and reported up until now. Major Linux distros carry or will carry soon one
form or another of these patches. Now all the GRUB2 upstream patches are in
the GRUB2 git repository [3] too.

I would like to thank, in alphabetical order, the following people who were=
 working
really hard on the GRUB, shim and other things related to these issues:
 - Alec Brown (Oracle),
 - Alexander Burmashev (Oracle),
 - Andrew Cooper (Citrix),
 - Chris Coulson (Canonical),
 - D. Jared Dominguez (Red Hat),
 - Daniel Axtens,
 - Darren Kenny (Oracle),
 - Eric Snowberg (Oracle),
 - Ilya Okomin (Oracle),
 - Jagannathan Raman (Oracle),
 - Jan Setje-Eilers (Oracle),
 - Jeremiah Cox,
 - John Haxby (Oracle),
 - Julian Andres Klode (Canonical),
 - Lidong Chen (Oracle),
 - Marco A Benatto (Red Hat),
 - Marcus Meissner (SUSE),
 - Marta Lewandowska (Red Hat),
 - Michael Chang (SUSE),
 - Peter Jones (Red Hat),
 - Petr Janda (Red Hat),
 - Robbie Harwood (Red Hat),
 - Robert Truxal (Microsoft),
 - Ross Philipson (Oracle),
 - Steve McIntyre (Debian),
 - Sudhakar Kuppusamy (IBM),
 - Tamas K Lengyel (Intel),
 - Todd Cullum (Red Hat),
 - Vikram Narayanan (University of California Irvine).

We would not be able to succeed without all your hard work.

It was very big pleasure to work with you all.

Thank you!

Daniel

[1] Red Hat: https://access.redhat.com/security/security-updates/#/
   SUSE:    https://www.suse.com/support/kb/doc/?id=3D000020668

[2] https://github.com/rhboot/shim/blob/main/SBAT.md

[3] https://git.savannah.gnu.org/gitweb/?p=3Dgrub.git
   https://git.savannah.gnu.org/git/grub.git

***************************************************************************=
****

CVE-2021-3695 grub2: Crafted PNG grayscale images may lead to out-of-bounds=
 write in heap
7.5/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:C/C:H/I:H/A:H

A crafted 16-bit grayscale PNG image may lead to a out-of-bounds write in t=
he
heap area. An attacker may take advantage of that to cause heap data corrup=
tion
or eventually arbitrary code execution and circumvent secure boot protectio=
ns.
This issue has a high complexity to be exploited as an attacker needs to
perform some triage over the heap layout to achieve significant results, al=
so
the values written into the memory are repeated three times in a row making
difficult to produce valid payloads.

Reported-by: Daniel Axtens

***************************************************************************=
****

CVE-2021-3696 grub2: Crafted PNG image may lead to out-of-bound write durin=
g huffman table handling
5/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:C/C:L/I:L/A:L

A heap out-of-bounds write may happen during the handling of Huffman tables=
 in
the PNG reader. This may lead to data corruption in the heap space.
Confidentiality, Integrity and Availability impact may be considered Low as=
 it's
very complex to an attacker control the encoding and positioning of corrupt=
ed
Huffman entries to achieve results such as arbitrary code execution and/or
secure boot circumvention.

Reported-by: Daniel Axtens

***************************************************************************=
****

CVE-2021-3697 grub2: Crafted JPEG image can lead to buffer underflow write =
in the heap
7.5/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:C/C:H/I:H/A:H

A crafted JPEG image may lead the JPEG reader to underflow its data pointer,
allowing user controlled data to be written in heap. To be successfully
performed the attacker needs to do some triage over the heap layout and cra=
ft
an image with a malicious format and payload. This vulnerability can lead to
data corruption and eventual code execution or secure boot circumvention.

Reported-by: Daniel Axtens

***************************************************************************=
****

CVE-2022-28733 grub2: Integer underflow in grub_net_recv_ip4_packets
8.1/CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H

A malicious crafted IP packet can lead to an integer underflow in
grub_net_recv_ip4_packets() function on rsm->total_len value. Under certain
circumstances the total_len value may end up wrapping around to a small int=
eger
number which will be used in memory allocation. If the attack succeeds in s=
uch
way, subsequent operations can write past the end of the buffer.

Reported-by: Daniel Axtens

***************************************************************************=
****

CVE-2022-28734 grub2: Out-of-bounds write when handling split HTTP headers
7/CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:H

When handling split HTTP headers, GRUB2 HTTP code accidentally moves its
internal data buffer point by one position. This can lead to a out-of-bound
write further when parsing the HTTP request, writing a NULL byte past the
buffer. It's conceivable that an attacker controlled set of packets can lead
to corruption of the GRUB2's internal memory metadata.

Reported-by: Daniel Axtens

***************************************************************************=
****

CVE-2022-28735 grub2: shim_lock verifier allows non-kernel files to be load=
ed
6.7/CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H

The GRUB2's shim_lock verifier allows non-kernel files to be loaded on shim=
-powered
secure boot systems. Allowing such files to be loaded may lead to unverified
code and modules to be loaded in GRUB2 breaking the secure boot trust-chain.

Reported-by: Julian Andres Klode

***************************************************************************=
****

CVE-2022-28736 grub2: use-after-free in grub_cmd_chainloader()
6.4/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H

There's a use-after-free vulnerability in grub_cmd_chainloader() function. =
The
chainloader command is used to boot up operating systems that doesn't suppo=
rt
multiboot and do not have direct support from GRUB2. When executing chainlo=
ader
more than once a use-after-free vulnerability is triggered. If an attacker =
can
control the GRUB2's memory allocation pattern sensitive data may be exposed=
 and
arbitrary code execution can be achieved.

Reported-by: Chris Coulson

***************************************************************************=
****

CVE-2022-28737: shim: Buffer overflow when loading crafted EFI images
6.5/CVSS:3.1/AV:L/AC:L/PR:H/UI:R/S:U/C:H/I:H/A:H

There's a possible overflow in handle_image() when shim tries to load and e=
xecute
crafted EFI executables. The handle_image() function takes into account the=
 SizeOfRawData
field from each section to be loaded. An attacker can leverage this to perf=
orm
out-of-bound writes into memory. Arbitrary code execution is not discarded =
in
such scenario.

Reported-by: Chris Coulson

***************************************************************************=
****

grub-core/commands/boot.c          |  66 ++++++++++++++++++++++++++++++++++=
+++++++++++++-------
grub-core/fs/btrfs.c               | 105 ++++++++++++++++++++++++++++++++++=
++++++++++++++++++++++++++++++++++++++++++++++++++++
grub-core/fs/f2fs.c                |  58 ++++++++++++++++++++++++++++++++++=
++-----------
grub-core/kern/efi/sb.c            |  39 +++++++++++++++++++++++++++++---
grub-core/kern/file.c              |   2 ++
grub-core/loader/efi/chainloader.c |  46 ++++++++++++++++++++--------------=
----
grub-core/net/dns.c                |  25 ++++++++++++++++-----
grub-core/net/http.c               |  17 +++++++++-----
grub-core/net/ip.c                 |  10 ++++++++-
grub-core/net/net.c                |  11 +++++++--
grub-core/net/netbuff.c            |  13 +++++++++++
grub-core/net/tftp.c               |   3 ++-
grub-core/normal/charset.c         |   2 ++
grub-core/video/readers/jpeg.c     | 106 ++++++++++++++++++++++++++++++++++=
++++++++++++++++++++++++++++++++++++----------------
grub-core/video/readers/png.c      | 158 ++++++++++++++++++++++++++++++++++=
+++++++++++++++++++++++----------------------------------------------------=
--------------------
include/grub/loader.h              |   5 +++++
include/grub/net.h                 |   1 +
include/grub/verify.h              |   1 +
18 files changed, 501 insertions(+), 167 deletions(-)

Chris Coulson (3):
     loader/efi/chainloader: Simplify the loader state
     commands/boot: Add API to pass context to loader
     loader/efi/chainloader: Use grub_loader_set_ex()

Daniel Axtens (20):
     kern/file: Do not leak device_name on error in grub_file_open()
     video/readers/png: Abort sooner if a read operation fails
     video/readers/png: Refuse to handle multiple image headers
     video/readers/png: Drop greyscale support to fix heap out-of-bounds wr=
ite
     video/readers/png: Avoid heap OOB R/W inserting huff table items
     video/readers/png: Sanity check some huffman codes
     video/readers/jpeg: Abort sooner if a read operation fails
     video/readers/jpeg: Do not reallocate a given huff table
     video/readers/jpeg: Refuse to handle multiple start of streams
     video/readers/jpeg: Block int underflow -> wild pointer write
     normal/charset: Fix array out-of-bounds formatting unicode for display
     net/ip: Do IP fragment maths safely
     net/netbuff: Block overly large netbuff allocs
     net/dns: Fix double-free addresses on corrupt DNS response
     net/dns: Don't read past the end of the string we're checking against
     net/tftp: Prevent a UAF and double-free from a failed seek
     net/tftp: Avoid a trivial UAF
     net/http: Do not tear down socket if it's already been torn down
     net/http: Fix OOB write for split http headers
     net/http: Error out on headers with LF without CR

Darren Kenny (3):
     fs/btrfs: Fix several fuzz issues with invalid dir item sizing
     fs/btrfs: Fix more ASAN and SEGV issues found with fuzzing
     fs/btrfs: Fix more fuzz issues related to chunks

Julian Andres Klode (1):
     kern/efi/sb: Reject non-kernel files in the shim_lock verifier

Sudhakar Kuppusamy (3):
     fs/f2fs: Do not read past the end of nat journal entries
     fs/f2fs: Do not read past the end of nat bitmap
     fs/f2fs: Do not copy file names that are too long

--Apple-Mail=_DAAB7FC3-E445-44AF-A14A-309AA15B20A3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCYp+hLQAKCRBFC7t+lC+j
yCzJAP9Rr/5XjABq2i0/hE0956teidhpMf3bBlN7onZLwQ8qFwD+LLsIyxFRcoSa
Mkn6k059usLABw4prvs14QDttZN2OHo=
=w+ve
-----END PGP SIGNATURE-----

--Apple-Mail=_DAAB7FC3-E445-44AF-A14A-309AA15B20A3--
