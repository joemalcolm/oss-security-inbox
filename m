Received: (qmail 13902 invoked by uid 550); 26 Mar 2026 18:36:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11454 invoked from network); 26 Mar 2026 18:36:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=xdQvGP8hqG6aAc2XkAOa5AHpceARTGr4wCaPL+Ski0A=; b=lx
	oH715BBU4CE6Jma6Vt0nTExosWL0oDRMDn+HnuMXwNYKijRtVQzT6G8SeGlQfzFO
	09rF6XuBicgcKtmo8f+laIj1T1mHRMzHDLyuG0FYxsscLrQ+RHmTf0LMIwqGL87U
	2RfD2QTsKRb+cvxRgn2S4QBFlXn6AQiNSdPCMRqKmCAL/KrbtQRSfFv55nIzJ2sp
	0zU91ESqv8dzs+e4Gv/KSVx+oxrcXAmGU6XhszSxs5wl9LtU3lC3DL6vEBdZ6t3N
	1VK/xyC1rzzoq+eXljicKoYcoEi1hBAAPSYLj92aNKnPHcFut3VuF4TkdXTSMxWI
	POFwTEJ4n6GGYnnbIe5w==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gp2D7ONChcwVLl4jr+hx3kG3DMGzxX4yH7bLVcoc3OSbqnj7g8f/O1nZ2JP7HMPJaPU+JLyta5/wmn4seqbALFavrUpm/bYuY9GPtFXaddHH6GFOdCoLcOdMa2fCxQwO9oG1ZOmkgBwj9ZbgK1JKCbmEI0jZaFgNH4uiAcwWEfwHEkOWDXl67k5W0mBcHpwu3T/QzOWJvp7TKxvza1X0bCmfMASTsHUHyDxOVhSOU2m72u1QJ0pQJDxWjZtv+KMKO4hnxZUDbX6dJojSa7GKfI90DX5n3VdWOy7ljSK07rSXYnJz7MS9dbXoZPXmty64KBGkBN70U5mGcZQWjjCj8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xdQvGP8hqG6aAc2XkAOa5AHpceARTGr4wCaPL+Ski0A=;
 b=TBL/8eqKKnZUpGjTcQy8CWI/NQIcgewzrNioEjZyL6RZ2cGkF9nsF9v3NXi9wQ3G7Bca7xbX8rQtzb7B/QiYKrqZq+wbaKRDmb2npj8wS7pwsmliI2uX59v4QTu5LbCq+EMUPm19tu8jcd6t5JrMwWYtEhP8mu/T17PNh9aHj+LHUOPukgAJK8hsAhqyKFVI1ng+v1i98ZCWqAebPb+U9OJjqtKAMQSEUNj/l/T3rQ+afIc7Dob/dPyibfN2YGp16fudsKGlHjnK0WadTU/OnvNtwAEZ1vrFLDA0buMrXyzMriBgUI5ksILWzO4B5YNUhNrA+x3/QKPn7HsUYzZUTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xdQvGP8hqG6aAc2XkAOa5AHpceARTGr4wCaPL+Ski0A=;
 b=qXh2vH45+I14nRgB6FSpuTymCsqdJsxMEqzRcPDZBBZ3aOJpeMzCk2Nxwm6JlxnK49TqZdmGvtlk2X19MC3OpQph8nDHvq9n54WIZ0oDqHtaPOqObGNrS0VHRtRBs14oHFu8uLC6yWYnIE6gT22Gi3l519itjj3oQbq/Yip3dYFdcQTgL1OP2txUXOpxrhqJ5T5Mf9CFafsL7D0RxmixctgFA6oWoXgzsXFQxGgTnYkq7jNutvgHO4bkT3Zvl9Ec1FlsEk/SM+IyXlknleXilawNRG01L8LLR3hykKjfaYrdNN/R6fsMS5ZNp/msOLUpFISTGQ16SwCZjAxDJAY03Q==
From: Qualys Security Advisory <qsa@qualys.com>
To: "cve@kernel.org" <cve@kernel.org>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Multiple vulnerabilities in AppArmor
Thread-Index: AQHcsmaIKu96NKiXikGSCaV0fqpbFbWrawGAgBXO+YA=
Date: Thu, 26 Mar 2026 18:36:17 +0000
Message-ID: <20260326183559.GA22540@localhost.localdomain>
References: <20260312212345.GA2728@localhost.localdomain>
 <20260312213345.GA3105@localhost.localdomain>
In-Reply-To: <20260312213345.GA3105@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|SN7PR06MB7325:EE_
x-ms-office365-filtering-correlation-id: 434dec97-952b-476a-7917-08de8b66919b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info:
 FaINOGHyuVhDppTwKEL4AHI1O2L5CE/yLvjK8TY/p64vUpQr0+mFKBQwG2lVO1kZDi2mIT1hlKuoWcn6VRPSnRA7wVug2sd5PI8A3MhNtRgr0B05o+VbJrBo+YI7PCGVC3+CZUYkr9Vw4rWok56NCo3YeHrT2N7BG4IDwHk9T5U5K2Z2Qp28zXf5x8XF8xx1X5CTYBBDBSNtabSxVP8W14Y9S5LcttN9tlCq98Ho1QCvd92xPmDzh0jkteqldo25NjRXcLpC20HHeRPPYM91aXYk4RJDwyHnDSEW2kTF1yOYRV4eGiP6GHw7Qz4x0hcpdfFqQUFofunrZEaDW9FS7xIuUIBNeD/Wq+a4foxGDYphubfL94LGBdq2Z654n3IWaxleDkt5Il9eXU9t5Eqee6umWhQcR4MydrbgDvbF/gXcR19OC60IzyJ1YWgTDap+TgT8R+b2bnC9jVp5f5h3mHX1ZbgixKdvNc/xd710qvFNNhohU7/ZI/2giBy6JxW1PMCQh4LTal2Vh8khZRWXDTCKJBJZQ8fIvXS//VR2LhSbvv949VUK9Ks3s44+RoUwlS0W4DRS2B4q/z6sYZ7QVTdqKRRTN41FFbPuBk4mH8sM8Z+MfhZDRgfpURDRb8LKKG5OsOzmiClFozY0Vxs8dGvfbY9MVbOTrMK2tWp/OHFhCMlrOP0vytuqu/9QtkzA/kn0KgXDI3IdzdnVz1/n2Lgzi1MLzJwryHwe5DIbxAfrdyMaFsztKnYa05DXPhes
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?hvse3c9nsZfzLxIZwgHljbEXFwUqk3L2FKPTyzhw1Mr22snih7w0jAUm6hKi?=
 =?us-ascii?Q?7Se3ZRWjat4q2LCrANolxCKDlbAtNXeQYkHAGrfgJl5u1gXycxNMpP5YFal+?=
 =?us-ascii?Q?AREtQcO9y8oBxtaTZ2bM9JC1XrVykoTEERZ1/ZV2pcECBHsT9Qqb2CqzQxQP?=
 =?us-ascii?Q?Shef4NPI1JUehHDZ8VIT6uJpDMFdpgqCqbeWGhIp21pweMcw6P2kvwBiKzCh?=
 =?us-ascii?Q?6rUJ2lTPFh4iGUAIWLZR85zjB0rAaVKW7ABSV5OgyQiS68HO7FxHM0AghKmf?=
 =?us-ascii?Q?1RL/tPvmShZvaS7FwVY3VGdesBQ84AqABMlp3VjaEOm9myzqJa6o0R1HY3W5?=
 =?us-ascii?Q?YQuDk8G66sxPkQbFa7mMu4Qk+DBKizEOmKVdN1hYTOS3V6laTktY7uXXzVrq?=
 =?us-ascii?Q?Mfkbx3KzDzZ7nnWeoaSekt4YUEfbKl9gOeF2rWQYdTXWZiZyrhHoWRFfYJ8N?=
 =?us-ascii?Q?V8vwqZsKWPBrZrHNfUrhEaEOqwnRdW3KXuRzx7UbxvAgZQykAXFZTyyisakY?=
 =?us-ascii?Q?VhTWozDK1dPNyPHz7Fh0M2vwTykz8MjwXG21erLDR1IZ/MZk5te0ObrqX2t1?=
 =?us-ascii?Q?9I6D4W7GM010AgCn+laAwFogTIHPkIGpA9SlWbZWI7+cHUfNpUpTHBxMomHN?=
 =?us-ascii?Q?qHoXqtyfeq8FlTA7XrZAllYHI67tNUTQqZqS7ybmf04jYTiauwldikn2ky/j?=
 =?us-ascii?Q?eXcEysEn0BfPoAOtiz3v9Db70AzgzJJ79tSB3kpZz2AMhLNjZLeeE62RLmbJ?=
 =?us-ascii?Q?RBs/5bmiOAaMoUFQirGo8uSgxA2RLDgi4kXp3K0hf/yBK440MkfWt45YW9l2?=
 =?us-ascii?Q?oQ7X3nxGyYcyWQrFf3GuEuNMgspbXx3czPbXjnnUVq+WMdBWQ/NQvYsEZ6+y?=
 =?us-ascii?Q?cmonF/P/liySwp9WqWkAC40ilXmZ3v270KqFIMWMOfCK4pn/Q3S+9QIB8qDj?=
 =?us-ascii?Q?FJ2+xerxEpW0Nv4eqmM7PSxrVj9MmXfRnKtnGM3WiTRSva/q+mnzonNDOfiY?=
 =?us-ascii?Q?/GA8FD3N3kfEfV5bNHZKz8ekJD6cdB0+Ulgo9ks5PvCGRbHCsbdQM1rAGLw1?=
 =?us-ascii?Q?dDguHfa6ZzxXfg/yVyVE1ZINEqPRX2az58fgJT8Ly3pKXpOrXYHX+wTD1CJY?=
 =?us-ascii?Q?QgQESGEyvH0y98JazNPTqhNxHte9K72tjCQBvdezDbn9xpvyTY7VOVYKGYHi?=
 =?us-ascii?Q?q1yAswSAPIFR4OrOsOO0hrJlRco3wwFXEtY789VBXkw48bKipdlRUpmuxb7R?=
 =?us-ascii?Q?BKd319MS05wAYMDWN3DpTdNG8UBxyeLrXsFL9B/bw9vlmyjIjOrlJJoLi5x6?=
 =?us-ascii?Q?i5luxuIGrjPSB/QNRv0WTav3iDfElwXaXdVpvj9WuzTfZA8cez8atmt+Yn+4?=
 =?us-ascii?Q?/pZZWL6722f2fuFtcv8leLRzFmC0DH3P4QqdTpkXd04SVxGkpE62QuDJhX/Q?=
 =?us-ascii?Q?q1kMLV9GS5yeS1FAFW/OxBhA3bxZn5ownxsAarMDSEtSW0g8y4FWD+D3CVPr?=
 =?us-ascii?Q?dAhZTTRYL9oK9vYN5pA+2wx2E0cxl4hPbTGDtMiMhTJZbrqwwV1Dh+Nbw/Bs?=
 =?us-ascii?Q?I8PfHygGoddu4ky2S8MxAiRadBdiQqBaiyz6hsl/pxYyND5IOn/eqaPs3oyv?=
 =?us-ascii?Q?ULLeY+nWsb1e3coGvlZ5B9LeXv5ofQNWHY75KnX7d9x/c+kpNbPaS4os00bB?=
 =?us-ascii?Q?Vz1mXwC7NYyt1Lrgim2tRQjBbZaqYeyApv6+U9P/m3XgZUXJtNMI5KCJbcvF?=
 =?us-ascii?Q?UIMo7ZmvNd7TnupNA14jQiTlxJaBdrA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8C0789E64E05B245A757A243F78EB8E1@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	RRb4LaMtS1H0VBr3BPl6TQiVdrcEFh2S4Lgmf/dija3vDK3xCTpCWZl8QMiAOktecRkdW3CS0sgLiuBqHzK7oKxFWf9cjqbqfZOxYkL8CRIm0lNmZI3TF4HLk1rkqhhO2TSug1tj3hFVSvoN12C0wxzcnDm95T5FCzpVDnzuB3pbQBipkCaocBoGL6tJHiiEmV7hHyf0V+bKgGeGIVmW+X5MXnosHrXoWuZZqAKmjICWqAFpKjCeNdAsxJHJy7bAlDjKz1T3VrojzDftN9yw147yDKfa/FNhYCW8KAbUVhaXI9mXgkPEZq81YGzxGRqkRbEGlrqAAIXE4BE4Tcheww==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 434dec97-952b-476a-7917-08de8b66919b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 18:36:17.8417
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9AAmbc5rUgVQJLKFPXGmgqyTLPWGfA2SgCinRKkz0ghXIPcb4VNEAMZ3hLhXHvjpXW5aDnqYnJemrjOSiREtMNZtNIWLmne8tjokYbc6h0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR06MB7325
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_03,2026-03-26_01,2025-10-01_01
Subject: [oss-security] Re: Multiple vulnerabilities in AppArmor

Hi Linux kernel CVE assignment team, all,

We saw that last week you assigned two CVEs to two of the nine AppArmor
vulnerabilities that were fixed and released on March 12, thank you very
much for these:

------------------------------------------------------------------------
https://lore.kernel.org/linux-cve-announce/2026031846-CVE-2026-23268-6be3@g=
regkh/T/#u
> - "[PATCH 08/11] apparmor: fix unprivileged local user can do privileged
>   policy management" (the confused-deputy problem detailed in this
>   advisory);
------------------------------------------------------------------------
https://lore.kernel.org/linux-cve-announce/2026031846-CVE-2026-23269-2bf7@g=
regkh/T/#u
> - "[PATCH 01/11] apparmor: validate DFA start states are in bounds in
>   unpack_pdb" (an out-of-bounds read);
------------------------------------------------------------------------

Since two weeks have passed now (since the fixes were released), would
it be possible to please assign CVEs to the remaining seven AppArmor
vulnerabilities:

------------------------------------------------------------------------
https://git.kernel.org/stable/c/e38c55d9f834e5b848bfed0f5c586aaf45acb825
> - "[PATCH 02/11] apparmor: fix memory leak in verify_header" (a memory
>   leak);
------------------------------------------------------------------------
https://git.kernel.org/stable/c/ab09264660f9de5d05d1ef4e225aa447c63a8747
https://git.kernel.org/stable/c/306039414932c80f8420695a24d4fe10c84ccfb2
> - "[PATCH 03/11] apparmor: replace recursive profile removal with
>   iterative approach" and "[PATCH 04/11] apparmor: fix: limit the number
>   of levels of policy namespaces" (the uncontrolled recursion detailed
>   in this advisory);
------------------------------------------------------------------------
https://git.kernel.org/stable/c/8756b68edae37ff546c02091989a4ceab3f20abd
> - "[PATCH 05/11] apparmor: fix side-effect bug in match_char() macro
>   usage" (the out-of-bounds read detailed in this advisory);
------------------------------------------------------------------------
https://git.kernel.org/stable/c/d352873bbefa7eb39995239d0b44ccdf8aaa79a4
> - "[PATCH 06/11] apparmor: fix missing bounds check on DEFAULT table in
>   verify_dfa()" (an out-of-bounds read and write);
------------------------------------------------------------------------
https://git.kernel.org/stable/c/5df0c44e8f5f619d3beb871207aded7c78414502
> - "[PATCH 07/11] apparmor: Fix double free of ns_name in
>   aa_replace_profiles()" (the double-free detailed in this advisory);
------------------------------------------------------------------------
https://git.kernel.org/stable/c/39440b137546a3aa383cfdabc605fb73811b6093
> - "[PATCH 09/11] apparmor: fix differential encoding verification" (an
>   infinite loop);
------------------------------------------------------------------------
https://git.kernel.org/stable/c/a0b7091c4de45a7325c8780e6934a894f92ac86b
https://git.kernel.org/stable/c/8e135b8aee5a06c52a4347a5a6d51223c6f36ba3
> - "[PATCH 10/11] apparmor: fix race on rawdata dereference" and "[PATCH
>   11/11] apparmor: fix race between freeing data and fs accessing it"
>   (the use-after-free detailed in this advisory).
------------------------------------------------------------------------

Thank you very much in advance! With best regards,

--=20
the Qualys Security Advisory team=
