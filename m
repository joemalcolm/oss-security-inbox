Received: (qmail 12128 invoked by uid 550); 21 Jul 2023 12:10:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12102 invoked from network); 21 Jul 2023 12:10:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:content-id:content-transfer-encoding:mime-version;
	 s=qualyscom; bh=U7AQofR3q3OS+s99f322DaWAl71iTOY6UQt6kBqnjZ0=; b=
	FvKghx4pgyID7rjn9MrISK/jvTTS2K0HTtvHdopExc01/bweVIMWn+y2H5SxZHJx
	ru3CjvVFQ8yhY82VDX8/5XwWMmxu9EIFhQvU0TK9yLNRepLnuQBuOPsDa5l+2C0s
	5j6bREgVtnQvMovgCsXDCqTWeEYxva5EdA2vxboszyA0b9A09ZpaBoALbRMoUL/V
	B4PLSDvj4q7Px8E5YLVGL3ZcFK3Z03RTfGFIWaE/eD1nNCJgL90zLG4iTwOGGV1F
	VWUXM59GBLHkhkIAj92vBioAEfUWs4+1rhfS1I9I1hhz0KCHSuK6RPr/nyh8+IaV
	hd4VzLEOsJoARjNTy6AQcg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IkXqpx2DbW9zENpqppqTNLUNUCRh4tpLmztV3nxMCYoSogyweFOXcdMM1fx13vEqZ0nAM9WeO7BO2UwvW03PHHkDQJJ6ybGqjJGPRVlXbGorSdTYApHcK4ubUS+/aDNWQnn9fV4aul+sZfJT6RZ0OoIMErBUnZN6en7DRNWvJl9N7r77UpnIvUIehZlNvX/nYApaPdKu+OXuBSICdVU5emL1q0c1ETrjrTPvGaIRTn2kl8dmLvp1BoXePOKhAWsEdkkrooiBZGARSSihLhO6BYQZitc1ME6X+XxSg5bIZfNP52LGmMWqLdzA3wePGPIb+pGV5P7D7OgmEpOQBw0MFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U7AQofR3q3OS+s99f322DaWAl71iTOY6UQt6kBqnjZ0=;
 b=KJXArRbgKNl05rWoS5Pd1MIAjpdrETQRyL+G+Sy7rPRAWorR2bQroSFRpFZDtj+oMtr+RGn2Bx9H5936ldbpN6JA2tMqG407SsJFiz127SWPdx6Tc2+kLt8bXVIJB7dAEBK25PJxJsxM7fidW9R3TBH1DWCyDeUbdUNZi1w0WMiO7F+rnUq2ME6sxyfFIv6UOA18q+f8q1sOxspBlmpmVo7C4oODbpEgM/+UR0FTYkIQ52b9ekXHDAhc/ymHbgOg1eQHqcVW1R3hBN5NDB/9Ae+323Q2ERghb0fXaSkkXm342gByhGaieCYKsLEThp5aCKZVWUy5Ai/mg6PfJjA1SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U7AQofR3q3OS+s99f322DaWAl71iTOY6UQt6kBqnjZ0=;
 b=H0Ht67VMVGBsXA/NamT1DMI/7l0jM8+6nzHp52Q20SqlzSoyr1iZGTNXDR/wi+D+8f87v7bXJAKlGqRBYU8BppEbRaY23jizcupRE4kNeyK+MBy/X47ItDlHD5dny2U1ewLON8StLwBqh4Kbz/hMdZ5AI7wsDRA0QYcRO+MPM5lv7uyqhG0hYLC/EvysOzOsvLC7xyyeCSHi3pQ8WZQFY/G1neeCG1KW0RcDVOXnyusk/pdn9GKUhUEN/1NyNrNBCwaXU6VXYCsyy0bQJCiQm6P3RI/QxIKM8R1KYmT1OpUxx9wp+ozdz3r+eTrq42BQNcyB1/5cCCxRjRccJIEXhQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: Demi Marie Obenour <demi@invisiblethingslab.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Announce: OpenSSH 9.3p2 released
Thread-Index: AQHZuk8U2Ar+gXQ/lUayw123SA0zm6/EF0zngAAMt4A=
Date: Fri, 21 Jul 2023 12:10:31 +0000
Message-ID: <20230721121019.GB25354@localhost.localdomain>
References: <e9c022742fc07cee@cvs.openbsd.org> <ZLk1hSUEt00caovk@itl-email>
 <1c005469-a540-5cd1-642e-5aebc35dd17b@geeklan.co.uk>
 <633ff42d-052a-df7b-dc34-6264e9d4eb77@gmail.com> <ZLndwziGSn83SBUM@itl-email>
In-Reply-To: <ZLndwziGSn83SBUM@itl-email>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|MW4PR06MB8233:EE_
x-ms-office365-filtering-correlation-id: ea07a6a1-8d82-4ad0-b8fb-08db89e37aef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hucDOYixpM+JXzWz6SXE7ZvnkZYzYIWGt3VJZexZOJxGLYHAsQ3/LxA1xE45kK1QgBO+HIPEZOvdr+t+8weOlmLxgcSUjKLbZTOLiTPt7/YXl0nOOKkXEXFYRC44YbOMermjESrWNCk0NWiYJNDkMTTTxsgopfYBXXcnVYLOol8KywPtlfzKDznDllLPBT7kozfJWkF7uLR9OeWhYqB1tf7ZgZMSJZNS/ggsshR82Uj9k0n1H+z56mwqb5z27tvJ6U9duTtKlpihlbsrZrXPfX4UCBOEojQw6IWtkjP1cOdSPS/rnMKL9SBE+3XXHaC/uHLZO7CfnGbIO5x4VO9x+E8WEtOO457Mr65m6TCE90HTkT+V7Nu1YDgzEmORybH7Xri+ITSw+r6DHnNFeaI6XcecdOj49caMsrdWBa40oEMaKtwT8Xvm4PpXA17c+CVWwlLFdoYKnYgEwznDgRTFmVNuTiAgfbbvDy4ydg+LQ+TUlCZqv8dktYF7a9eVzBcdyWqpka9Fl67LDeSScihH3KJYMoR0L0obAUOFBV6OWJprSIe9yRiv3GH5o/lpF992Rvglky1UcnwjBOQp+SzZwcF7B/U18HQnbi8xIsCYp4ww1SxJR00mHIVtq1zGYRElMFdrrIQRmtqi35ReEyul3Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(396003)(136003)(39860400002)(366004)(451199021)(55236004)(26005)(186003)(1076003)(6506007)(15650500001)(41300700001)(5660300002)(316002)(6916009)(4326008)(76116006)(38070700005)(66556008)(64756008)(66446008)(66476007)(91956017)(66946007)(33656002)(478600001)(8936002)(8676002)(71200400001)(38100700002)(9686003)(6486002)(6512007)(966005)(86362001)(83380400001)(2906002)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?gCWH4YyVrNCtk8ErE4K3yBRQBhPdNgeeWe/apCa/es51Sv3E+o1YUnLM58qd?=
 =?us-ascii?Q?NNVuHqIaSkYvaIQ07cMGhWHo6mjxVdPWtiJAxsAKVH4fFq0n03WSlTP+uPLC?=
 =?us-ascii?Q?z1Oy5bYtPcTm5Z7FbmauzjOhxXgyt5aYeS+JZ+gqzI++bsyB8wokIjW7rFif?=
 =?us-ascii?Q?rsnP1oLHqs8tPZM72h4Y9q6PRq2U+cHvtwCzdoVig+fd3IXfVG6SKYN+FGAl?=
 =?us-ascii?Q?I9eVrk5tujKwINEjXx02Xux7+1KjwYcg2aA7hzEPG6dNUuUTKYeULK4JIiQD?=
 =?us-ascii?Q?9kQTrIhvtEdQg2520R9KmC4qe/cHAKfoTTp2bZYPQ1HDjn4vQmfYXGBM3k2t?=
 =?us-ascii?Q?ep5hGCw8igpbHtJc+0yw8xTdUBLCDkEetAEZT3IAoPkLIJ0o98mYhXlc6R8r?=
 =?us-ascii?Q?HR+R3uJbKYf71K14DDIHEvvd7DCSkSPbGg4/Hz60/HQwngHaoUwmkCfpLVfY?=
 =?us-ascii?Q?R7rR0+3QIAjFyLWj0wJqh8IO2nKTa1aq228MFg6ErZhrVbLqMqgcyK73iQ+S?=
 =?us-ascii?Q?jUealWORnZTRd5knEqICzIW4Hi/yvL46uT0MpvRT03NA2osstV34qagFoxtg?=
 =?us-ascii?Q?XqoJUIlfCduD9VL4UT3+1HPkKq/SLCl6zf0hl14deo+egZZL+06iGg1RLgYX?=
 =?us-ascii?Q?btR2Ilp70eXAbBNoBmFIRnnb3s0ysM5aYPQgv/j6RQpXwK2gXG6oNCrzwfhT?=
 =?us-ascii?Q?6vlKixS40CPXHDBSCcHDNx5ZRiwSeCyQSDvyp8ji20U3d7UpubgOb43J8RXU?=
 =?us-ascii?Q?QYqhIMRcLPXR+NDDTGLGwFsy7YIbv/k8I+2jV8Z+L09gibVfbtqk2olqFaOi?=
 =?us-ascii?Q?s1Qhw8NLytm9YC09A2ohCAPKFGNvN1uZFHYo8pGP0y0xKdWUFWc0RuJaS2yD?=
 =?us-ascii?Q?v756y3wfc2afOqqFwvRqKN3mJsOLI/aTSJUSgMIpPBoCE8d2DwZoiodUS3g4?=
 =?us-ascii?Q?uGDQCD6MTthWegu8VN83TAL/K3Xu4ZJUB2Z0OzCjgFF6IZBYmUMnlS692dyU?=
 =?us-ascii?Q?et01rYt8298xRdyC3riAXx0y3LQ8cGggRjjKuqytmwQEjOOxem8b/gSLpTCk?=
 =?us-ascii?Q?P0b/Q8ZyAiCh5NNrvb/zw+fFd8QiLTr2eW6H3hOdPCP5daKf7ohLcJph3ULF?=
 =?us-ascii?Q?Z5pipXZQQO981U8Z36wWqbSKZDW12FR/eg11UyHL7lWL6Uu3r1lb0oLnbgMX?=
 =?us-ascii?Q?bXOKvSLHQbjg/UoQSp/0BQVuT5vG0lQfxtI8ml7jHSnoZ0S5bXJqHb5agOEF?=
 =?us-ascii?Q?8ME1C21vW/tLnr1CSDkzKr2gnloEnu8uPlWpKipC10gMszH+fBsbDVwn5XFa?=
 =?us-ascii?Q?+vCoA8gwOyJ6pNtHG6EjOV8xUw2O2s45C5/0PPiwpJzP38MJDKotQ9WDRyFJ?=
 =?us-ascii?Q?S4y47Q8V6rNaOsvQjTP++gEpUhuLHRHeYpTlyP3MXPtB32nFsefUKAmPm0yG?=
 =?us-ascii?Q?Nwh7O2lPrCebSDK2GFIke9X3lxhi1Mvu4VSDE4O7k21mZCQQghMqX0UPdUfO?=
 =?us-ascii?Q?WKttXQTksZxqiOHXJXHI3uTc17Hch3bRGVbniTX0L54PAvpZdgeWt0VhtaqK?=
 =?us-ascii?Q?CVW9/pg3d3zSegdDy1pvdFhubRW0xSkfti0M2OcASDAPynZDV54NAQb0ae50?=
 =?us-ascii?Q?Pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <64314E1229D51C4F9A1BBC3EF5B055E0@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea07a6a1-8d82-4ad0-b8fb-08db89e37aef
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 12:10:31.5812
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mVkfV+6jaRCDFFWpyTeUiJROV/TNktlCKb547SqNj9pMDy4LUrgpdThwFRHnmABxL66YnSoGYAoFl83pUVDAc9Y3UAWOqYob37s8WAWSz98=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR06MB8233
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-21_07,2023-07-20_01,2023-05-22_02
Subject: Re: [oss-security] Announce: OpenSSH 9.3p2 released

Hi,

On Thu, Jul 20, 2023 at 09:22:08PM -0400, Demi Marie Obenour wrote:
> IMO the root cause of this problem is that PKCS#11 libraries are installed
> in /usr/lib, rather than in /usr/lib/pkcs11 or another subdirectory.
> There should be an automated way to check if a library is a PKCS#11
> library without having to load it.

Wednesday's release was a security-only release, the two patches it
contains are very simple, unlikely to break any existing installation,
and one of these patches at least (the s/error/fatal/ one) is very easy
to backport.

But the OpenSSH developers have done an amazing job and have not only
prepared these security-only patches, they have also prepared two more
defense-in-depth patches (which are more intrusive and therefore need
testing by the community first):

https://github.com/openssh/openssh-portable/commit/29ef8a04866ca14688d5b7fe=
d7b8b9deab851f77
https://github.com/openssh/openssh-portable/commit/099cdf59ce1e72f55d421c84=
45bf6321b3004755

The first one of these patches is probably what you are looking for
("check if a library is a PKCS#11 library without having to load it").

Thanks again to the OpenSSH developers for their incredible work! With
best regards,

--=20
the Qualys Security Advisory team=
