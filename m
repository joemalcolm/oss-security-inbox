Received: (qmail 26195 invoked by uid 550); 30 Jan 2024 18:37:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26165 invoked from network); 30 Jan 2024 18:37:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	from:to:subject:date:message-id:content-type:content-id
	:content-transfer-encoding:mime-version; s=qualyscom; bh=ggbg0kF
	iCwh2fFdiDxtgbQUFd1+jyl0nWjpkN9SWm5Q=; b=ILd4suukC/Xkfvgxxby8hJo
	JHRbsdWKTIQU8Mr+5RgCcFTZf/ZQ7+yLnMlhAx1/PQVPJbqdgRSWX2t9S82H/ggy
	GdJAj+ELQNjouW+KknO1T3sAJqZhkJ5qCbUJJCF7FUWt14xIMYgUJV+t/DhwUELz
	cn4NqwnuD1W9AS53WKhkel4Eh0j9Z1YEJI98xlH25+Cjeclh2cyIn+sudBql/VEd
	y4diKG2up5u9p7bf6eFCxXOOhJUDoWwSKd6CudHLRgurX8J1oZb0/28JGTp76sxg
	uKDbI63mn2mhDO9TffPQjFAlQex94+yY8H1TNZ4O4zBfXGq/xRaqSjqrg5BoRSA=
	=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FVKQFlFacxD/yadTGB+1aSj+ixedFn3sX/uNUsY/F+kuiWIxogShph3LfqgdyWfd8JgPu5sh5pyeQxdGoczCaadpOfAEAvvFlSakXAsumtUKP4y6Ljdo6Gv9qomFowFuaSepW5EERyOCIzBdiX5On+ZlScw3etQEm8F1lGMIskDXaL9XnXiB5bPJrd/+8xotNW8RiJWUGKZ0J08A7CqyU3yIDxTkh3e+AM94V4XdiLtJX7wzV/gPRhMYZX0EvJrmkuklsljorn7l211dDISY+2oNdZmfdLwDN2jB3DI7jtBB8TdMt+jtjhhMv0aXNJJDOQRPaxX8XYJORvF+xVzUUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ggbg0kFiCwh2fFdiDxtgbQUFd1+jyl0nWjpkN9SWm5Q=;
 b=WGBF6/qzE5BlhU/Rji5BBwhBwiceJP+Y5NHl+LVdt7i47mvyhIWfpyXLALXcJ94YxxFyGkMAoFq9rLqO2ofx73Hghxm9OjWsSFdGZQ+OEm8de34ZF341GGfoHWshgKaDakbEOiqbj4bBBHqMhB4aaFzPepG5XJpD0VJbvvCJWswkjbGaNKlbQ7q16HMFM9Se4j+rDYVqtp0l9m2brCAralz0XGa0PFma2dHsZ+FcQ1W2XrCLLsn1G3Tw8f7ZfX4m6hOn6+5HM+nGZYkECijeR5MPAzS0c9Yh1tj4NvP1I3PTqDRk2YU8V/UtE8Biox+ezwQUVUjbtaP6jWlS6c0ReQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ggbg0kFiCwh2fFdiDxtgbQUFd1+jyl0nWjpkN9SWm5Q=;
 b=glFueTG2l0bTmvzBUWnYACqeeJ9/swSdxaB5TBuTASmU45VZU1vM/dfi2JGokBET5Mv3Ys/QzLPYe9p+xOZ9x7sc9ZvnKLaxLHXzv4L+ReNXAvW+jqX/mGxFpoHa+Z8od3gzTwHAe59P6PlmIk4EY3COeKbfEjUWlylpdPrVT26ix48btLO0ULVOrhMj+nS29m6h2UBuxdGI85RfVanxxFPMJL7Hy1jU0/qGrxKlbj+Kxjd1D+9IkBB5K3iQ1wWke5Myh6bVjpXGpAB2JlBwotwNH50TX3QhyaocfJHR4ptk4F/KSwU4Y3WX0INK8wgV2M2btMXGsZ2KuEMCfOol4w==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Out-of-bounds read & write in the glibc's qsort()
Thread-Index: AQHaU6ut2YcF6TZwMUOBFY7sDqdUxA==
Date: Tue, 30 Jan 2024 18:39:37 +0000
Message-ID: <20240130183915.GB16546@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|DS7PR06MB6918:EE_
x-ms-office365-filtering-correlation-id: 8f8d4cc8-d119-4c79-1a99-08dc21c2cfa5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ffLwhlk+39BLZrKle2AIxx/MbW2pRccTA1nQLQp7MHE/XSipHTPsSCcQ3ux0VS1uMyYuR2mUzVXj/SP63KCH5gZuITTp2d7H2dn1tXdVOP7IG5S08X2SNGIl5t8qly3LOzm8/kJhRBQLanEu34wy8zd4/7YA7d3WEUxuoM8HiK0MSQJD54P4DunxeH6JfJvNqcUhbE99NVDL4C3nd0GdJn/dm5hIE/y4O/RBKArhxZFwq0HYQoh6YGOrP5kQ+ol7+JY6NENNbdC4RxqjGeUJd2s3iQhoCvAJrz25n53mhGdgQwx2fHF2SuTyAH98Pt+uI9eqrZoF3J7pQAu6W8AQpY8FAXary0AA+kGINmcQh8eSoK748wahq1/+L/7Xy1gCz1iW6lgRNIPZluvqUd6nSbpPHX4u8Gov1yaei4wUH996Hawm+zUjMaJI8R1TqeIBYDUedmeOFC5BEo7YmlkJaIC8n5CA77/a6/3KcT89NwK/rO//K0VHfesPVHXTLRgs6MrRncrLHYgVVn7REX29WNnBQ19roLF+zyf6yQRwyvXaCoUj5h4OCPidPvxDoEnjcud/lx0vsh4koHllDIm8fA4d5sh61iLLoNx1d1cLIdE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(136003)(366004)(346002)(396003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(91956017)(8676002)(5660300002)(30864003)(2906002)(8936002)(66446008)(33656002)(86362001)(6916009)(66476007)(66556008)(66946007)(64756008)(76116006)(71200400001)(83380400001)(4001150100001)(966005)(38070700009)(316002)(122000001)(38100700002)(6512007)(55236004)(6486002)(9686003)(478600001)(6506007)(26005)(41300700001)(1076003)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Pk2g86XBZmvWLtbSKecuAVB81kg83crzOwt7y3stw85+2pQ7AbqITxhpuHb+?=
 =?us-ascii?Q?ot8qzAB+ccZZqt9hOhJK/GoZZflAT6dH2BQFSLy4doMvDJUvs62ZMaWt1xtr?=
 =?us-ascii?Q?Akasv0YO8+aquymY6CGZUIfVVKg56qt0mfwmn8agEZfCB7DFss0LzDuOKdaz?=
 =?us-ascii?Q?NzSqlY3CARjiaQowGvl0ReDUEHohve+BdueNpy/HRgRJ/+m5YoyhrlbvtXRf?=
 =?us-ascii?Q?p+MjibwSNT85nfQPzJjf1HtvhbO0zwD10z1dUXIROnp3Vh5VQEXY220MD8e1?=
 =?us-ascii?Q?F41pSAniAIIk817+C6UlKFIcmmS03rIiJILK5djSPP72hEO3fPYMsGFSJ4iE?=
 =?us-ascii?Q?bKtlU63xK3BkrtYWClAPyEPPMcCZMpsjxiobXtoKmfwESFrAgFjOp6vhuy/1?=
 =?us-ascii?Q?TZN3ep3LTnSLopdwNgZMpYht/6oRARwXIPKcCNVJYdtMu0nD70wF2Xw56Z3x?=
 =?us-ascii?Q?og55Nv/u/2DCNjXEPjVKiH80S3B8zBVy+yCw7sqF6Nl7f5l8VOXBPiuq+WQx?=
 =?us-ascii?Q?TDZgfFBvLM34gBk9ZbJWbswKZ3PkL2Q6cQUMj2O7loDmgXZSEH25BYJMyCxE?=
 =?us-ascii?Q?erb8dWC+mzGSLT13dwRi2m020XJWL8Ka7AKypiJQoRUTRgo+rOu6nYVhVsXz?=
 =?us-ascii?Q?EaNaoZrJwiGbB40ZdHSOEVLYpGdALDKAT+J//+/5yddKkbKeYxMB/a40gJew?=
 =?us-ascii?Q?cPKvhkfgiz4tcQZOJ+b3mwc4vRWh+OsiSuu5PmggyYeNVBtDsjT5dowCj8rU?=
 =?us-ascii?Q?cL0Yu872xr64v2QZUFbUg7x/WWGcllU2xyaC7/YdiF3JrdOIYpfQP/t9jIkc?=
 =?us-ascii?Q?CXCm48vXLLqB6ttjoSxTK8k0/0amgvpZ+ibciPyRNtegnq6gBGq4Sf3xj15v?=
 =?us-ascii?Q?9Z1MxoJLg2xpxh1yBwCVWvijrhDhnZV3XPrXOA9BMF6IfY/ZLikROelE5eFI?=
 =?us-ascii?Q?gjSkFMuOYKXqR96qVJrqNFpH20b0QU6l3OwuU/VrraOLawuY5RmjZslYT+D3?=
 =?us-ascii?Q?G3TzxutdKWWIE+X+6q7/2JY6sZ6rAFOJAoCqmQ8YQ/r+gxZ0nZ18rMzhtZWv?=
 =?us-ascii?Q?MiqG8THpSbM+aqdashX78PbzE7eKBYwYjmiOHQgaNX0EcoMsLDVXomQ8Zep3?=
 =?us-ascii?Q?Ka05NWndjIjMKiRy3nMOupH+LAywuBJyZPu5OQi8MJdE7zGc3k89U+Jnc8hO?=
 =?us-ascii?Q?5b6rQMX72aW8SSpDKCVRHy7PDQ3zYeAJ0QKuODdRXBF5EZZDVn+l8wRW5AmO?=
 =?us-ascii?Q?V+ytxTYEPC+aNUyHhrbfljIEG3q70Mv0jjXEpXQqET5uK2FbDBcNb/46inoo?=
 =?us-ascii?Q?woHeh3r07fwxTzzWymsWTAxEdpalP43zRl5wvwRoxXDxepel44ig7axjmycg?=
 =?us-ascii?Q?XYk86IB8LiZV7+mbiCGqizOLkSadpvKWOJQqa9E+HsXL2acLwTckyXeC0LKW?=
 =?us-ascii?Q?JFUlIgYDeBCFnG9REyub3N7GU+8l1rDcz8+6m7VA4H0s0qVbTEwMsLxjrdbz?=
 =?us-ascii?Q?I0zIz8jtdUC/7nw0Jsquz171XqVoxJ88V3E4li8/fYiaFKbmpabb7yfRkatu?=
 =?us-ascii?Q?Ch1D4Ql91tQqbhw9QS26bhmtgkAkUodTaDNbKbljo4RVuD3F3n8NHq6umqlX?=
 =?us-ascii?Q?Pg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <BFD850FA3606524D88962BE1DD222BD0@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f8d4cc8-d119-4c79-1a99-08dc21c2cfa5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2024 18:39:37.0541
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GOD0tQFRPEEdVB8HrbwK0r9+QRXCK2144vnEaB7qilZBzSge9EWThrjRsTFOLxPvH9h7wInb3bsYmGbYEuY4EBPUEVQnl9lFf3+Nt+sraOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR06MB6918
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-30_09,2024-01-30_01,2023-05-22_02
Subject: [oss-security] Out-of-bounds read & write in the glibc's qsort()


Qualys Security Advisory

For the algorithm lovers: Nontransitive comparison functions lead to
out-of-bounds read & write in glibc's qsort()


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Background
Experiments
Analysis
Patch
Discussion
Acknowledgments
Timeline

    CUT MY LIST IN TWO PIECES
    THAT'S HOW YOU START QUICK SORT
        -- https://twitter.com/QuinnyPig/status/1710447650112438710


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We discovered a memory corruption in the glibc's qsort() function, due
to a missing bounds check. To be vulnerable, a program must call qsort()
with a nontransitive comparison function (a function cmp(int a, int b)
that returns (a - b), for example) and with a large number of attacker-
controlled elements (to cause a malloc() failure inside qsort()). We
have not tried to find such a vulnerable program in the real world.

All glibc versions from at least September 1992 (glibc 1.04) to the
current release (glibc 2.38) are affected, but the glibc's developers
have independently discovered and patched this memory corruption in the
master branch (commit b9390ba, "stdlib: Fix array bounds protection in
insertion sort phase of qsort") during a recent refactoring of qsort().

About our advisory, the glibc security team issues the following
statement:

------------------------------------------------------------------------
This memory corruption in the GNU C Library through the qsort function is
invoked by an application passing a non-transitive comparison function, whi=
ch
is undefined according to POSIX and ISO C standards.  As a result, we are of
the opinion that the resulting CVE, if any, should be assigned to any such
calling applications and subsequently fixed by passing a valid comparison
function to qsort and not to glibc.  We however acknowledge that this is a
quality of implementation issue and we fixed this in a recent refactor of
qsort.  We would like to thank Qualys for sharing their findings and helping
us validate our recent changes to qsort.
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Background
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

While browsing through Postfix's HISTORY file, we stumbled across a
puzzling entry from February 2002:

------------------------------------------------------------------------
        Bugfix: make all recipient comparisons transitive, because
        Solaris qsort() causes SIGSEGV errors otherwise. Victor
        Duchovni, Morgan Stanley. File: *qmgr/qmgr_message.c.
------------------------------------------------------------------------

Segmentation faults in qsort()? Transitive comparison functions?

As explained in the manual page for qsort(), "The comparison function
must return an integer less than, equal to, or greater than zero if the
first argument is considered to be respectively less than, equal to, or
greater than the second." Of course, such a comparison function cmp()
must be transitive:

- if a < b (i.e., if cmp(pointer_to(a), pointer_to(b)) < 0);

- and if b < c (i.e., if cmp(pointer_to(b), pointer_to(c)) < 0);

- then necessarily a < c (i.e., cmp(pointer_to(a), pointer_to(c)) < 0).

For example, the following comparison function (which compares integers)
is transitive (and perfectly correct):

------------------------------------------------------------------------
int
cmp(const void * const pa, const void * const pb)
{
    const int a =3D *(const int *)pa;
    const int b =3D *(const int *)pb;
    if (a > b) return +1;
    if (a < b) return -1;
    return 0;
}
------------------------------------------------------------------------

A shorter and more efficient version of this comparison function could
simply "return (a > b) - (a < b);" and still be transitive and perfectly
correct:

- if a > b, it returns 1 - 0 =3D +1;

- if a < b, it returns 0 - 1 =3D -1;

- if a =3D b, it returns 0 - 0 =3D 0.

The question, then, is: how can a comparison function be nontransitive?
A comparison function cmp() is nontransitive if there exist a, b, and c
such that:

- a < b (because cmp(pointer_to(a), pointer_to(b)) < 0);

- b < c (because cmp(pointer_to(b), pointer_to(c)) < 0);

- but a >=3D c (because cmp(pointer_to(a), pointer_to(c)) >=3D 0 by
  mistake).

Although the following comparison function seems correct at first, it is
in fact nontransitive, because the subtraction in "return (a - b);" is
prone to integer overflows:

------------------------------------------------------------------------
int
cmp(const void * const pa, const void * const pb)
{
    const int a =3D *(const int *)pa;
    const int b =3D *(const int *)pb;
    return (a - b);
}
------------------------------------------------------------------------

For example, if a =3D INT_MIN, b =3D 0, and c =3D INT_MAX, then:

- a < b (because cmp(pointer_to(a), pointer_to(b)) returns INT_MIN - 0,
  which is correctly negative);

- b < c (because cmp(pointer_to(b), pointer_to(c)) returns 0 - INT_MAX,
  which is also correctly negative);

- but a > c by mistake (because cmp(pointer_to(a), pointer_to(c))
  returns INT_MIN - INT_MAX =3D +1, which is incorrectly positive because
  this subtraction overflows).

Unfortunately, such nontransitive comparison functions are extremely
common, as discussed in this excellent blog post from Ted Unangst:

  https://flak.tedunangst.com/post/subtraction-is-not-comparison

and as hinted at in OpenBSD's manual page for qsort(): "It is almost
always an error to use subtraction to compute the return value of the
comparison function."

Fortunately, when passed to a robust qsort() implementation, these
nontransitive comparison functions should (at the worst) result in an
incorrectly sorted array; certainly not in a memory corruption. However,
the aforementioned entry from Postfix's HISTORY file suggests that not
all qsort() implementations are robust.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Experiments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We therefore decided to assess the robustness of the glibc's qsort()
implementation, by calling it with a nontransitive comparison function:

------------------------------------------------------------------------
  1 #include <limits.h>
  2 #include <stdlib.h>
  3 #include <sys/time.h>
  4=20
  5 static int
  6 cmp(const void * const pa, const void * const pb)
  7 {
  8     const int a =3D *(const int *)pa;
  9     const int b =3D *(const int *)pb;
 10     return (a - b);
 11 }
 12=20
 13 int
 14 main(const int argc, const char * const argv[])
 15 {
 16     if (argc !=3D 2) return __LINE__;
 17     const size_t nmemb =3D strtoul(argv[1], NULL, 0);
 18     if (nmemb <=3D 0 || nmemb >=3D (1<<28)) return __LINE__;
 19=20
 20     int * const pcanary1 =3D calloc(1 + nmemb + 1, sizeof(int));
 21     if (!pcanary1) return __LINE__;
 22     int * const array =3D pcanary1 + 1;
 23     int * const pcanary2 =3D array + nmemb;
 24=20
 25     struct timeval tv;
 26     if (gettimeofday(&tv, NULL)) return __LINE__;
 27     srandom((tv.tv_sec << 16) ^ tv.tv_usec);
 28=20
 29     const int canary1 =3D *pcanary1 =3D (random() << 16) ^ random();
 30     const int canary2 =3D *pcanary2 =3D (random() << 16) ^ random();
 31     array[random() % nmemb] =3D INT_MIN;
 32=20
 33     qsort(array, nmemb, sizeof(int), cmp);
 34     if (*pcanary1 !=3D canary1) abort();
 35     if (*pcanary2 !=3D canary2) abort();
 36     return 0;
 37 }
------------------------------------------------------------------------

- at lines 5-11, cmp() is the nontransitive comparison function
  introduced in the previous "Background" section;

- at lines 16-18, the number of elements to be sorted (simple integers)
  is read from the command line;

- at lines 20-23, the array of elements to be sorted is calloc()ated,
  along with a canary element below this array, and a canary element
  above this array;

- at lines 29-30, these two canary elements are randomized, and copied
  to the stack for later comparison;

- at line 31, one random element of the array is initialized to INT_MIN
  (all other elements are initialized to 0 by calloc());

- at line 33, the elements of this array are sorted by qsort();

- at lines 34-35, the two canary elements (below and above the sorted
  array) are checked against their stack copies, and if they differ (an
  out-of-bounds write in qsort()), abort() is called.

We chose the array elements a =3D INT_MIN and b =3D 0 because they directly
exhibit the problematic behavior of this cmp() function:

- a < b, because cmp(pointer_to(a), pointer_to(b)) returns INT_MIN - 0,
  which is correctly negative;

- but b < a by mistake, because cmp(pointer_to(b), pointer_to(a))
  returns 0 - INT_MIN =3D INT_MIN (the "Leblancian Paradox"), which is
  incorrectly negative (because this subtraction overflows).

We then executed our test program in a loop, on Fedora 39 (which uses
the latest glibc version, 2.38):

------------------------------------------------------------------------
$ while true; do n=3D$((RANDOM*64+RANDOM+1)); ./qsort $n; done
------------------------------------------------------------------------

Unsurprisingly, nothing happened: our program did not crash or abort().
While this loop was still running (and not crashing), we started to read
the glibc's qsort() implementation; to our great surprise, we discovered
that the glibc's qsort() is not, in fact, a quick sort by default, but a
merge sort (in stdlib/msort.c).

Most likely, merge sort was chosen over quick sort to avoid quick sort's
worst-case performance, which is O(n^2); on the other hand, merge sort's
worst-case performance is O(n*log(n)). But merge sort suffers from one
major drawback: it does not sort in-place -- it malloc()ates a copy of
the array of elements to be sorted. As a result, if this array is very
large (lines 212-217), or if this malloc() fails (lines 219-229), then
the glibc's qsort() falls back to a quick sort (in stdlib/qsort.c),
because quick sort does sort in-place:

------------------------------------------------------------------------
163 void
164 __qsort_r (void *b, size_t n, size_t s, __compar_d_fn_t cmp, void *arg)
165 {
166   size_t size =3D n * s;
...
170   /* For large object sizes use indirect sorting.  */
171   if (s > 32)
172     size =3D 2 * n * sizeof (void *) + s;
173=20
174   if (size < 1024)
175     /* The temporary array is small, so put it on the stack.  */
176     p.t =3D __alloca (size);
177   else
178     {
...
212       /* If the memory requirements are too high don't allocate memory.=
  */
213       if (size / pagesize > (size_t) phys_pages)
214         {
215           _quicksort (b, n, s, cmp, arg);
216           return;
217         }
218=20
219       /* It's somewhat large, so malloc it.  */
220       int save =3D errno;
221       tmp =3D malloc (size);
222       __set_errno (save);
223       if (tmp =3D=3D NULL)
224         {
225           /* Couldn't get space, so use the slower algorithm
226              that doesn't need a temporary array.  */
227           _quicksort (b, n, s, cmp, arg);
228           return;
229         }
230       p.t =3D tmp;
231     }
...
299 }
------------------------------------------------------------------------

We therefore decided to assess the robustness of the glibc's quick sort
(instead of its merge sort, which was clearly not crashing), by forcing
qsort() to call _quicksort(). Locally, forcing the malloc() at line 221
to fail is very easy: we simply execute our program with a low RLIMIT_AS
("The maximum size of the process's virtual memory", man setrlimit); and
this works even when executing a SUID-root program. So we executed our
program in the following loop instead:

------------------------------------------------------------------------
$ while true; do n=3D$((RANDOM*64+RANDOM+1)); prlimit --as=3D$((n*4/2*3)) .=
/qsort $n; done
Aborted (core dumped)
Aborted (core dumped)
Aborted (core dumped)
...
------------------------------------------------------------------------

Incredibly, we almost immediately observed crashes of our test program:
calls to abort(), because one of our canary elements (below or above the
sorted array) was overwritten (i.e., an out-of-bounds write in qsort()).
To understand these crashes, we examined one of them in gdb:

------------------------------------------------------------------------
$ gdb prlimit
(gdb) run --as=3D8104854 ./qsort 1350809
Starting program: /usr/bin/prlimit --as=3D8104854 ./qsort 1350809
...
Program received signal SIGABRT, Aborted.
__pthread_kill_implementation (threadid=3D<optimized out>, signo=3Dsigno@en=
try=3D6, no_tid=3Dno_tid@entry=3D0) at pthread_kill.c:44
44            return INTERNAL_SYSCALL_ERROR_P (ret) ? INTERNAL_SYSCALL_ERRN=
O (ret) : 0;

(gdb) backtrace
#0  __pthread_kill_implementation (threadid=3D<optimized out>, signo=3Dsign=
o@entry=3D6, no_tid=3Dno_tid@entry=3D0) at pthread_kill.c:44
#1  0x00007ffff7e698a3 in __pthread_kill_internal (signo=3D6, threadid=3D<o=
ptimized out>) at pthread_kill.c:78
#2  0x00007ffff7e178ee in __GI_raise (sig=3Dsig@entry=3D6) at ../sysdeps/po=
six/raise.c:26
#3  0x00007ffff7dff8ff in __GI_abort () at abort.c:79
#4  0x0000555555555334 in main (argc=3D2, argv=3D0x7fffffffe338) at qsort.c=
:34

(gdb) select-frame 4
(gdb) p/x canary1
$1 =3D 0xc6109e4c
(gdb) p/x *pcanary1
$2 =3D 0x0

(gdb) x/xw pcanary1 - 2
0x7ffff78af008: 0x00528002
0x7ffff78af00c: 0x80000000
0x7ffff78af010: 0x00000000
0x7ffff78af014: 0xc6109e4c
0x7ffff78af018: 0x00000000
------------------------------------------------------------------------

- at address 0x7ffff78af010 (pcanary1), the original value of the canary
  (0xc6109e4c) was overwritten with 0x0 -- an out-of-bounds write;

- at address 0x7ffff78af00c (below pcanary1), the most significant word
  of an mchunk_size (heap metadata) was overwritten with 0x80000000
  (INT_MIN) -- another out-of-bounds write;

- at address 0x7ffff78af014 (above pcanary1), the first element of the
  array was overwritten with 0xc6109e4c (the original value of the
  canary), which was therefore read out-of-bounds beforehand (from
  pcanary1).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To identify the root cause of these out-of-bounds memory accesses, we
must analyze the implementation of the glibc's quick sort:

------------------------------------------------------------------------
 87 void
 88 _quicksort (void *const pbase, size_t total_elems, size_t size,
 89             __compar_d_fn_t cmp, void *arg)
 90 {
 91   char *base_ptr =3D (char *) pbase;
...
108       while (STACK_NOT_EMPTY)
109         {
...
193         }
...
206     char *tmp_ptr =3D base_ptr;
...
214     for (run_ptr =3D tmp_ptr + size; run_ptr <=3D thresh; run_ptr +=3D =
size)
215       if ((*cmp) ((void *) run_ptr, (void *) tmp_ptr, arg) < 0)
216         tmp_ptr =3D run_ptr;
217=20
218     if (tmp_ptr !=3D base_ptr)
219       SWAP (tmp_ptr, base_ptr, size);
...
223     run_ptr =3D base_ptr + size;
224     while ((run_ptr +=3D size) <=3D end_ptr)
225       {
226         tmp_ptr =3D run_ptr - size;
227         while ((*cmp) ((void *) run_ptr, (void *) tmp_ptr, arg) < 0)
228           tmp_ptr -=3D size;
...
246       }
...
248 }
------------------------------------------------------------------------

- at lines 108-193, when quick sort's partitions become smaller than
  MAX_THRESH (4 elements), _quicksort() switches to a final insertion
  sort (at lines 206-246), which is faster than quick sort for small or
  mostly sorted arrays;

- at lines 206-219, this insertion sort makes sure that the very first
  element of the array (base_ptr) is the smallest element of the array;

- at lines 226-228, this first element acts as a natural barrier that
  prevents tmp_ptr from being decremented below the array (because if
  tmp_ptr reaches base_ptr, then necessarily cmp(run_ptr, tmp_ptr) >=3D 0
  because tmp_ptr is base_ptr, the smallest element of the array);

- unfortunately this does not hold true if cmp() is nontransitive, in
  which case cmp(run_ptr, tmp_ptr) can be < 0 even if tmp_ptr is
  base_ptr, so tmp_ptr can be decremented below the array, where
  out-of-bounds elements are read and overwritten.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Patch
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To patch these out-of-bounds memory accesses in _quicksort(), a simple
check "tmp_ptr > base_ptr &&" can be added in front of the cmp() call at
line 227 (of course this does not magically result in a correctly sorted
array if cmp() is nontransitive, but at least it does not result in a
memory corruption anymore).

In fact, while drafting this advisory, we discovered that such a check
("tmp_ptr !=3D base_ptr &&") has already been added to the glibc's master
branch (which will become glibc 2.39 in February 2024), by the following
commit ("stdlib: Fix array bounds protection in insertion sort phase of
qsort"):

  https://sourceware.org/git?p=3Dglibc.git;a=3Dcommit;h=3Db9390ba93676c4b1e=
87e218af5e7e4bb596312ac

Indeed, the glibc developers have recently refactored qsort() and
replaced the merge sort (and its fallback to quick sort) with an
introspective sort (a combination of quick sort, heap sort, and
insertion sort):

  https://en.wikipedia.org/wiki/Introsort
  https://sourceware.org/pipermail/libc-alpha/2023-October/151907.html

During this refactoring, the glibc developers have proactively
discovered (and patched) the out-of-bounds memory accesses in the
insertion sort (probably because these out-of-bounds memory accesses
became directly exposed to the misbehavior of nontransitive comparison
functions, instead of being safely hidden behind a malloc() failure in
the merge sort).

Last-minute note: in January 2024, the glibc developers have reverted
this refactoring of qsort(), back to the original merge sort, plus a
fallback to heap sort instead of quick sort; for more information:

  https://sourceware.org/pipermail/libc-alpha/2024-January/154051.html


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Discussion
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We have not tried to find a vulnerable program (i.e., a program that
uses a nontransitive comparison function to qsort() attacker-controlled
elements); however, vulnerable programs are certain to exist in the real
world:

- calls to qsort() are extremely common;

- nontransitive comparison functions are also common;

- all glibc versions from at least September 1992 (glibc 1.04, the first
  version that we could find online) to the current release (glibc 2.38)
  are affected by this memory corruption.

Locally, forcing a malloc() failure in qsort() (which is necessary to
reach the memory corruption) is easy: either execute the target program
(e.g., a SUID-root program) with a low RLIMIT_AS, or allocate a large
amount of memory with another program on the same machine.

Remotely, forcing this malloc() failure is harder: either allocate a
large amount of memory (e.g., a memory leak) in the network service that
is being targeted, or in another network service on the same machine.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank the glibc security team and the linux-distros@openwall.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2023-12-12: We sent a draft of our advisory to the glibc security team.
They immediately acknowledged receipt of our email.

2023-12-19: The glibc security team decided to not treat this memory
corruption in qsort() as a vulnerability in the glibc itself, as
explained in the "Summary" of our advisory.

2024-01-16: We backported commit b9390ba to all current and past stable
versions of the glibc, and sent this patch and a draft of our advisory
to the linux-distros@openwall (to piggyback on the glibc embargo for
CVE-2023-6246). They immediately acknowledged receipt of our email.

2024-01-30: Coordinated Release Date (18:00 UTC).
