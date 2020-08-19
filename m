X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["966" "Wednesday" "19" "August" "2020" "15:42:33" "+0000" "zdi-disclosures@trendmicro.com" "zdi-disclosures@trendmicro.com" "<DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>" "18" "[oss-security] Linux Kernel 5.7.9 DRM  Double Free" nil nil nil "8" "2020081915:42:33" "[oss-security] Linux Kernel 5.7.9 DRM Double Free" (number mark "U       zdi-disclosu Aug 19   18/966   " thread-indent "\"[oss-security] Linux Kernel 5.7.9 DRM Double Free\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux Kernel 5.7.9 DRM Double Free" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14094 invoked by uid 550); 19 Aug 2020 15:46:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11630 invoked from network); 19 Aug 2020 15:42:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=trendmicro.com;
	s=tmoutbound; t=1597851755;
	bh=m62d+Yee/yADgZmCzNDv+ZDrgJaR4pVGE7myG7rz8XU=; h=From:To:Date;
	b=fdGjD/GHJpbiU539xmOjh3la5GYJZovj4cqR/i+1ivhmq+Jej3wdA4h4NizincnSp
	 iZk2a/mt6eETeH2BCGCn8P+sxakyeSKTcL4EZXefdDen4zmBM32zcBEK87ZrJtbVHG
	 aZurfKsW/8MPx037L/aPLYDAmahSBEw0TesbqeF0=
From: "zdi-disclosures@trendmicro.com" <zdi-disclosures@trendmicro.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Linux Kernel 5.7.9 DRM  Double Free
Thread-Index: AdZ1fNrDZL72iDGdR0yWz3+DYuE4CA==
Date: Wed, 19 Aug 2020 15:42:33 +0000
Message-ID: <DM5PR0102MB347783E567BB3BD5C77AFE50805D0@DM5PR0102MB3477.prod.exchangelabs.com>
Accept-Language: en-US, es-ES
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=trendmicro.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 108aeb80-f594-4fbd-e944-08d844567d7a
x-ms-traffictypediagnostic: DM5PR0101MB2905:
x-microsoft-antispam-prvs: <DM5PR0101MB2905010E591489AF43A7284C805D0@DM5PR0101MB2905.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Zub/TeYp4EZTBADttgUTp1EukcxtO7kY4tDCW2a7XBBOrR9rCssen+9HLE9XXyJxHRMvvS/+Hqs+UUTU0AmjKl3cVLE8DSJRgQFHOsNy6Nn+7joVGxXhsw0gulpbUQEBMIxWj+47sl9SH/DqSts0xrlo1If/XkQ+Ay6+6FM0w9lBSb/LBYr5Hxr3TQVKQfh7z3nwIvJj7EfMafLpixnHx/Plih1itlq7UqJwzgga/0CidvvGwWJllpRTdn8El5DCIX/61KpWBF2mq1Fiu1mAAWRqhbG1UKlLFvoaofeBEqjkUFt7tpm/4b3jFBOAHryoAX/L7OcQpc6cc8aEjbtXw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR0102MB3477.prod.exchangelabs.com;PTR:;CAT:NONE;SFTY:;SFS:(396003)(346002)(136003)(39860400002)(366004)(376002)(86362001)(316002)(33656002)(64756008)(71200400001)(66946007)(9686003)(66476007)(66556008)(66446008)(76116006)(55016002)(2906002)(5660300002)(4744005)(478600001)(186003)(26005)(52536014)(6916009)(8936002)(6506007)(7696005)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: Qb24+6355+WGUg9F1Rwd50Ed82DvZhQLmm+TjYVqo/aoW9R8Jcl0TbA+pnSWdEwhNGXHX5MmImqdq8ukGdRU2RNj+dHWS3m4jEMJ903JBfQGUL+FmADwBTfIFjYWtcSFJ8u9iKiCczYOX3gAinzw6lYBQMudbvMoPajDPzHBVwE9FAn4ND9bxKuOH8jtR6PoP5WmnXqiUhuTs7T03+gwsz933zLwVYU1YEqni31zB4UAI3YJQyzWH2kkM/qi+LbpYf+UVrntXz2AFcHLimnM2xq40Y7tfryNI/4BLrq5A/dbkYZaye4kDLLIr6jTW+CZMr7DEN+jj3i8OruRfQWTElE4x15aU7Mytxir9ap5+AIIjzTIRdRhoP7Twqlta4prQ0rwHKu7B95QjwSSiGoW1L/XOn8vJqV+/P/YQN6HEyOTomMooxtBjb437ZhsQl8sOby0La6buzTWkCLmmD4aE79PN19Qx20Niz2KOI4KxQMuF8TmSLcabbkPFlcas0YqplJxodCXSABZUTX3ngeAppc3zAI+DG8Gp432fgr2MGRJmtFOViJ/NR+dFBpKczOK5QeGLCTNQOiVjl8vVdU3CyXPO7L8s5PUx2uqriL2o5haxSgBRLAjhXcj4ai+nePBM+BDVGcYAljIWBP0FKIAXg==
x-ms-exchange-transport-forked: True
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G7m1YjOiTt/b7rdUURzuFGMIVPgyoxrscHiL51ve37ZEb5nER3YbjgYZ4kIWMt5WIWBH7V0Ito7DmdWfgMPrjHniuE9dLaXWWe93jueYnlGWABT/mwhazWarSHXZSVOraA3WO0vjL+hD56IQDMCDv+Y6Eza6ZHSitaut6BB2qxF1dE2ByfWRS3kmGEHND1H6UEctnIJZtNrRTyu6qJ2FM86KQqT7S/4CRKWhwTX6M1Kia1U/7OFlCv4Ad7PYgYiBviE3tHhxh2qzthSeGGUofWmnRhV+0KZ7ttdzbpgpCW2Ix89Enr7fBKFg++86GlqGqN82cOoeH1BEyk3s1nGx4Q==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=agopke/a6uAXaNa1wauZBzuRhvLw+UFShrYehg5wPjA=;
 b=Nim61GaNJystWK5SXmzUU5uDjp1ihzMfFEI2ZKTS6FtIVkpvDdE16EXNG0tTfgFhQXXWGkOCz6TvYImaf3bpwDvxjWE+nP/xsa7lwK28aLWu6520IcEYCLEMFKKo99/QOMIQX656ZQR+0hUdCS0G7my1B1TE9zW5MhIXTM+Z5gnZq4bV3BngJjrTRnnsqyLzJwMo26vCxo7Zdq/xRAiKDnebbRLVFtx6Kj4xIpEyTlBNQl8+Z7+kSXUU6TnmmcRuJ1McYf8QArFGQNfPVHeB+F22VEht1iljw2PkQuBlxbTdwzvVARZgpCEArJhQnmyuo0LjD9QDxd90Wsiyg3mNqg==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=trendmicro.com; dmarc=pass action=none
 header.from=trendmicro.com; dkim=pass header.d=trendmicro.com; arc=none
dkim-signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trendmicro.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=agopke/a6uAXaNa1wauZBzuRhvLw+UFShrYehg5wPjA=;
 b=g+1H7aB6HDOrIFmnodYdpGUdEyAXYgfiJsmWufLXF/TJr5nRU82XLSgdemPJ8n2YDk7rlpafLDXB2tbpbx6Cx2YKrWu9A4zvIIFoRWs20qf0+WiRsSvlh0tnToX3B+y3PGVHyU+Xd+/rCd3y8e4gZEQUw94l0diVwWKqQn62UtnNQYt+PdPGP/Tc9VgNRqhh14EjuyDKFiy8g3yJ5Vep76/x7rPkFWjiQ8bHBE6K5Z5yMUP9qzOO9UwStMuMTk3Sim9O1Z5ASp54EmYxSY5+TkjCsLQYQTm6Eaex/V+F6Qvgr9FHqVeFgmhkdiI/iiQkt1J79ERDHYBs3gm15Qv5KA==
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: DM5PR0102MB3477.prod.exchangelabs.com
x-ms-exchange-crosstenant-network-message-id: 108aeb80-f594-4fbd-e944-08d844567d7a
x-ms-exchange-crosstenant-originalarrivaltime: 19 Aug 2020 15:42:33.4269 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 3e04753a-ae5b-42d4-a86d-d6f05460f9e4
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 65sYMUbB/imqeAMOm34bXOT+ctVFTxyHAqDK3yLNARD1a9pPLYv16kLagp8IDNVq1RxF1PxV90tyCsljK6OwEAx36K8OuN7dluGsO2/u2xhNod/hHMSV3pSaU9DaCJrO
x-ms-exchange-transport-crosstenantheadersstamped: DM5PR0101MB2905
x-originatororg: trendmicro.com
x-tm-as-product-ver: SMEX-14.0.0.1158-8.6.1012-25612.005
x-tm-as-result: No-10--4.420800-8.000000
x-tmase-matchedrid: kXJQp6nA7i82eFTDBkQyStEoDizWRITmm7AhLBEE9f4INpIFnbd6mgKJ
	H9OQtm+kwA8lldf0dcB+PrYsvYXblY0i53q6VQVjalRqQPhHMT4BDya2JbH/+hLf1vz7ecPHPIZ
	LMgHLOyy5XqtMTiVGzH6XAAEtFJ98OwTo9ZXISSyJDLgwb/1K2WmRqNBHmBvelpyqxIUg/ZSfYw
	IIcLjjbX61ueKOgp8N0C1sQRfQzEGMl2kGKWjzWXEqm8QYBtMOO/2Ll4ZQEcM2z5IxCBYEs5cbG
	+Au4mqaWJ3szMnQ3pv6XHIvu50AYwx82fSnUNKEGFOYjiwqNgkBFswAVsg5NoIldcxHW0M1VLAQ
	JazMlt1+kwDwi6SkuO79Y5DoqfJDy5shLJ8SS9M=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--4.420800-8.000000
x-tmase-version: SMEX-14.0.0.1158-8.6.1012-25612.005
x-tm-snts-smtp: B53E2178DC4816BC53C6005035B5A65B7EF6C55908915A4BD6CD37F22B2450B32000:8
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [oss-security] Linux Kernel 5.7.9 DRM  Double Free

The specific flaw exists within DRM memory management. The issue results fr=
om the lack of validating the existence of an object prior to performing op=
erations on the object. An attacker can leverage this vulnerability to esca=
late privileges and execute code in the context of the kernel.

This has been already addressed in the upstream commit 5de5b6ecf97a021f2940=
3aa272cb4e03318ef586
TREND MICRO EMAIL NOTICE

The information contained in this email and any attachments is confidential=
 and may be subject to copyright or other intellectual property protection.=
 If you are not the intended recipient, you are not authorized to use or di=
sclose this information, and we request that you notify us by reply mail or=
 telephone and delete the original message from your mail system.

For details about what personal information we collect and why, please see =
our Privacy Notice on our website at: Read privacy policy<http://www.trendm=
icro.com/privacy>
