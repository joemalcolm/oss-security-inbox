Received: (qmail 13834 invoked by uid 550); 23 Aug 2022 20:41:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1298 invoked from network); 23 Aug 2022 20:11:02 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ec5VXBy8G+wZfQ36rT1Uq/KXRG1tfczm0+xFPeX4jl/7rxjC0/8ZNNGV22Cp70v6lBPbnGojPMR7+jEccjfIvYH3P/qJ5VgSx53hWjXjQ6I2iPtqp6vL6UxR6MQ/x9r9zflQJn6lP5PPEsiyhoLjR6lr5mK4fHa2C3rPpLCMWcv+Iv5W4FpsNSFLLQ4uiaIYw5y+bakGeGmM1lS+pV9E3a2FNR6VfQJjnwimcnEd5g9dDS24expAcY+i2bOVB8jakmPOr2PbhNFAOMGGkcJkzT0RkBDkri4hmTBDUX3Yl5CN+g65/fj+ig5iofHGuQ3Hc14fLCbFQHGwOhprx2wXcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1iBz7mRSfSTPLAQd4v9W0JjgnY6IsVsBtFwDGmUaDKw=;
 b=Ucu+BnkyrNwUiUbFa1pt61ihxRpNXaqZYxtC/5lXVujy3V86flT22p3an/0GwW9+3b5LMmlLqR8NfGhyhtyApQv/juNhrJjLjrztsCd6MBOTeyw6gQm0L6ZToxCpgqxLA26Vj+ZnCJ94aBc4r5DWD992pVJSNM69XjO1hd7J9pN/2q/6HVGrqgEPf3tARIFWLCpfQLrrHsKq95WtuXAimIIamqEYEnXDZe81V+rbgK3HTCXBIPMGlAOkAjGAAfJz18wWAkzkGZTszTBlhbwpdv+LXW/MCkwIL+N0FmqVQokTAWwwqbe2o9P7/a2WeL9XDiLSD+J2PyLEwWqE6uVAeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1iBz7mRSfSTPLAQd4v9W0JjgnY6IsVsBtFwDGmUaDKw=;
 b=2VCtF1ZOxYu3b1R3hkBxl07MHXj5M5fFy7fCQ/YIFqxaD9+VnFWM53NNu10eb0fYYKtNpfTZvUkSP9jZuVKanoF9KZ3oymlNLpOWMS0yYoLkV73m9PxogqcOLpHEEC2Nn14u3oITu7XvzEbtrRcLfPFnDKehS8K2hVZL7/D5D4g=
From: VMware Security Response Center <security@vmware.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [SECURITY ADVISORY] open-vm-tools: Local privilege escalation
 vulnerability (CVE-2022-31676)
Thread-Index: AQHYtxfeK7voBuRDyUSPeXCf9GmPWg==
Date: Tue, 23 Aug 2022 20:10:48 +0000
Message-ID: 
 <BYAPR05MB63436604DE6E9F49EAAAD1B1B9709@BYAPR05MB6343.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vmware.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25d3f1b7-c614-41fe-729c-08da854391c6
x-ms-traffictypediagnostic: BYAPR05MB4343:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 w2K+1M5NzfbagZY436KXClDkdrfACZZ1YWRNp+KimdOoO5rku7yopJGvTFnDGOKFk8BVOW+lOnT79n5r8cNZ4yyDqBZ7VOk/zaQJpOZqywByNIV2qM0Ji5dBNlWqppjb8mbLXINarDmZcTypvfxE3NI5wxK+Sce47swtn6VkztdrnOyqfKjV1p4Q0eScxbX6KlYUvcKrFG7pO2S/c/2bYL6Rok4n0vJxc7RsJorAAljCy5E3nsVQBvwlnJHtHYkJvsVfWLUFJlORnzq3YFk0FSQha3qku1Q/fiwV4IWwLL5tC2Epxqs6QVOQ/ILXPDa4UM7yhSU75FbqTmFu3cLz91YiNXTWmq0b8/zFEj7I8DeI7hJCtlYG4XDWRDJbQ+GGddPngRRfoV5SXcarLLijmxd5qxRqOWwunpTLidQII00NZiZZjn9hWJ4fQE7gcD/JT23fCOQxSFsUGIdPZ8ZAnEv4Jf0xMsHy1Z5ElmQmXhX63DJzN6pIgLD4iGSZxZ2EQz7+1mho63VDfXtUzEZhXjmzyXxnqT4v5pfVneijK2NxrpmpJs+gq+h7Pk7UHzae3NxqK/TAhz9Dd7ZtEMVXasltmF3kjmavtNRDI0/qRR6/v63ksG2KsHYWvEfefkl1DpBhlvRVWWIzqiHLeRcXQUlmuumFBkPk4civVK7Kt5fmQ+Q8RnxwXAviDX/ZTEY1x1c5L/FKoelrcgRLM/l5WUqXePlE9buMoA1ksF+XI9K+wNvLmGw3nfeUkFOrxVgsSWhXY9h90I2znuu6vcMoDR0APAhUBLr178QOpTAcckacOIlbexpsKvtN5iIyvFeCJsy8Xcr2YLC7fXnbkDPbJ3dJKPb4q2I5KD34NpM6cfY4Mv6UTpcxH6f2HJ/PrMXPhsLVh8Y46MNh44vrEyEgNz0jtiW2c2YilBhS9naDXW3Q0toBcTIExm2QbE5BLOkg
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR05MB6343.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(346002)(136003)(376002)(366004)(396003)(33656002)(66476007)(66946007)(21615005)(2906002)(91956017)(55016003)(76116006)(122000001)(64756008)(8936002)(52536014)(66556008)(66446008)(15650500001)(8676002)(478600001)(86362001)(83380400001)(5660300002)(6916009)(38100700002)(9686003)(19627235002)(166002)(316002)(38070700005)(186003)(41300700001)(966005)(26005)(19627405001)(6506007)(71200400001)(7696005)(579004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?TBmOHYLyklLoemSGL+yzRLQ5TUXojJG/jINNJx16RmGHjoJ8mnTEaZ780b?=
 =?iso-8859-1?Q?1z5C4VOq6MVdgsDQsG0OVzooe2oHXfxRdORuMNCK8JZyyDHWwUu9mSgPkt?=
 =?iso-8859-1?Q?Y6IIfso+3pPG/Nj3m+mrW5Y/IyGoUgWPONZ8kS7i/d8klXmNCUDXbL5w6M?=
 =?iso-8859-1?Q?kgTpVJGPy3xV2Tab7Idzfk5OzCiPafTBAzlx4cDPR0WdWIG02IsOKsaLRl?=
 =?iso-8859-1?Q?AgXw4P01S2TZzkLc9EHd3NsQ2jI/P3DrN1QW2cIqiA7HG3zeXIZLdOcMA8?=
 =?iso-8859-1?Q?N953gPp5mKc+xy1JkMnI5s/IdsN4GVg6wK0ECPHH/7dfAv703RVGDxXw/F?=
 =?iso-8859-1?Q?I/n27YzVQBEfFVFqqaCqc5RmPYed7dx2ErO6Ef8k7j0Vr/8i+z7YvM+09L?=
 =?iso-8859-1?Q?RcJb+xmqyakFMNOHz1vqk9rVrzlZieD/EIA5CASb1K+DaVyurc/gZn0KNB?=
 =?iso-8859-1?Q?X7h2Zz2lop1Zeal9zp6Kya6+iW8OOP9rTmsazLVMsZG5/YlDuJBT9MGkEd?=
 =?iso-8859-1?Q?Jz1Ot0l0IWqia/3n6aAoOjKRfOEcTDchXYKl5pQ6ftWF97tGPA5b3Kbr5J?=
 =?iso-8859-1?Q?v/xbmADaEkEgiiQRg36Ni2Y9MqEBIuzLt1QC1ZmHdaDJHC9rbaFKxAwbzl?=
 =?iso-8859-1?Q?eVrQh4W51JhHHRzRm+O7XmzvDKALuPowvV7eZjzre0rMt4z9l5zINSkPpL?=
 =?iso-8859-1?Q?gti21zo82c/nc5Fo4yX2EHHhWFAg2YiX8rgHJiH7d/I+TSkwWLwvyJagBZ?=
 =?iso-8859-1?Q?1p2Ja1fz8kPouvrIJyvS7Tz4R9VOW8cKVg3UiaPFGr8sCeLDaeUVLMtASS?=
 =?iso-8859-1?Q?sJsSfr6MyEg4TGzyO7aRC9tsgXBVxOhcS0KyY5TjkcqyjSfUjuv5llUUzG?=
 =?iso-8859-1?Q?b/YoNEpkcCenjJY8wgqOcBPhiYuleKJohrOewbdj4d4yEDRW2cdvlpCglP?=
 =?iso-8859-1?Q?P9IFA75Z6AaYkdLgQJivTrIpyjJLu947lO3UAPHbNTmcb2rAVWE1CrIokb?=
 =?iso-8859-1?Q?cusGnPXbDenWIsKglEZmvMNus4DbAu6+UkVsE7Zln+x+FdJ/srNElKMV4W?=
 =?iso-8859-1?Q?HCavK49gHy1Koyzp079YCd9fOML9gzc4UYhpu1x2WZFC6ZfLaycwqY74Nt?=
 =?iso-8859-1?Q?v85RYB10WX0gSlmARH32AJ4SQvreco0WvoIVcDiLaMzAO8bgR7Cxe8+7N1?=
 =?iso-8859-1?Q?g1NhjwF6gn7WzjzIWzSkfNj0Z3YR/OhbeYK8eKdijp4vnmqbUKsYrhOquu?=
 =?iso-8859-1?Q?kks2omzn7NsSzKSRugOmvYjJQWVKfRxTxsyWq9/ELMS8n83cg5iAsp9YXW?=
 =?iso-8859-1?Q?uqcjteaaYdDyKK8ogKirud/0gE7A3svVJ+8j00yApcvI3FrC+fauA4dSS1?=
 =?iso-8859-1?Q?rCWCY2731OBxNkX5Nb/9zbF05ps6Pgq8m1XqW1m+2RIQqpXQrtWdIE/hio?=
 =?iso-8859-1?Q?bs+Iinc5KCS/9B5vxUy0FblpsUEEyQMFhwosbnXZditmAOobG9S+GSUxwj?=
 =?iso-8859-1?Q?090pxQxUo0qcT4SMlh7NUsIjuFDbs8d+/pQPGax8lgtMKibUXXMOOE4VfB?=
 =?iso-8859-1?Q?qJyE1fHsHKjbr5xFyAcPcr4ST58fSSDsNZm0hqsxx4tzapSw8oUNvlxAlJ?=
 =?iso-8859-1?Q?XagTKstl4JblBkgaRaLTVp0xlNFJ2eG0zb?=
Content-Type: multipart/alternative;
	boundary="_000_BYAPR05MB63436604DE6E9F49EAAAD1B1B9709BYAPR05MB6343namp_"
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR05MB6343.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25d3f1b7-c614-41fe-729c-08da854391c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2022 20:10:48.0726
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ruGCN7+sEc49DwwPr43kC397Hs92SwQq5g5TDL2+t65Ly7FLOQ15lh/l7SLqsW5dowvEythMRTqr/7hx2hUUNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR05MB4343
Subject: [oss-security] [SECURITY ADVISORY] open-vm-tools: Local privilege escalation
 vulnerability (CVE-2022-31676)

--_000_BYAPR05MB63436604DE6E9F49EAAAD1B1B9709BYAPR05MB6343namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Local privilege escalation vulnerability in open-vm-tools
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

VMware security advisory, August 23 2022 - https://www.vmware.com/security/=
advisories/VMSA-2022-0024.html

1. Impacted Products
VMware Tools (open-vm-tools)

2. Introduction
VMware Tools was impacted by a local privilege escalation vulnerability. Up=
dates are available to remediate this vulnerability in affected VMware prod=
ucts.

3. Local privilege escalation vulnerability (CVE-2022-31676)

Description:
VMware Tools contains a local privilege escalation vulnerability. VMware ha=
s evaluated the severity of this issue to be in the Important severity rang=
e<https://www.vmware.com/support/policies/security_response.html> with a ma=
ximum CVSSv3 base score of 7.0<https://www.first.org/cvss/calculator/3.1#CV=
SS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H>.

Known Attack Vectors:
A malicious actor with local non-administrative access to the Guest OS can =
escalate privileges as a root user in the virtual machine.

Resolution:
To remediate CVE-2022-31676 apply the patches listed in the 'Fixed Version'=
 column of the 'Response Matrix' found below.

Workarounds:
None

Additional Documentation:
None

Acknowledgements:
None

Notes:
VMware Tools 10.3.25 only applies to the older Linux releases.

Response Matrix:


VMware Product

Version

Running On

CVE

CVSSv3

Severity

Fixed Version

Workarounds

Additional Documentation
VMware Tools
12.x.y, 11.x.y
Linux
CVE-2022-31676
7.0<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:L/AC:H/PR:L/UI:N/=
S:U/C:H/I:H/A:H>
Important
12.1.0<https://docs.vmware.com/en/VMware-Tools/12.1/rn/VMware-Tools-1210-Re=
lease-Notes.html>
None
None
VMware Tools
10.x.y
Linux
CVE-2022-31676
7.0<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:L/AC:H/PR:L/UI:N/=
S:U/C:H/I:H/A:H>
Important
10.3.25<https://docs.vmware.com/en/VMware-Tools/10.3/rn/VMware-Tools-10325-=
Release-Notes.html>
None
None


4. References:

Fixed Version(s) and Release Notes:

VMware Tools for Linux 12.1.0

Downloads and Documentation:
https://customerconnect.vmware.com/downloads/details?downloadGroup=3DVMTOOL=
S1210&productId=3D1259&rPId=3D92824

https://docs.vmware.com/en/VMware-Tools/12.1/rn/VMware-Tools-1210-Release-N=
otes.html

VMware Tools for Linux 10.3.25

Downloads and Documentation:
https://customerconnect.vmware.com/downloads/details?downloadGroup=3DVMTOOL=
S10325&productId=3D1072&rPId=3D92945

https://docs.vmware.com/en/VMware-Tools/10.3/rn/VMware-Tools-10325-Release-=
Notes.html

Mitre CVE Dictionary Links:
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2022-31676

FIRST CVSSv3 Calculator:
CVE-2022-31676: https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:L/AC:=
H/PR:L/UI:N/S:U/C:H/I:H/A:H


Upstream fix for CVE-2022-31676: https://github.com/vmware/open-vm-tools/bl=
ob/CVE-2022-31676.patch/README.md



Thanks,
Sibi Aravind E
VMware Security Response Center



--_000_BYAPR05MB63436604DE6E9F49EAAAD1B1B9709BYAPR05MB6343namp_--
