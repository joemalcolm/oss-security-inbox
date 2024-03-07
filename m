Received: (qmail 13397 invoked by uid 550); 7 Mar 2024 22:15:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32648 invoked from network); 7 Mar 2024 22:07:32 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jVXGviQMtW2frX61nQWIs4gTmw8ISiwSKTeNUpBbieWnOpPy5GzdTETR2YqmWy/+w57uvtiaj5jE14AA/9ABdbae6y3YsDNvxyCAk5mS7ghcJ4seNeTBgqdATzqy42rS6vbtKIIsLH+ktOyDonpm5vuOXJJd2MRqud/DUrIRTKViMR0q0xVsZdNYndqepDo/I0KeHHovVj52aRWfXrXELF7bTj77vqX3RcFJ4QrVYsJRXkF6OaPLVyWEVV7barkT1NpeOcPz0iYji/qa1Y9qyenMpmsp9RD52vcq47fZ++zgePdGnEoV6icD16PUkV3l+U4Z+6LjUaicnVumf9lb6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uUaKSHQpFKAsMWpSV1/p687BUw21rSIGdIzMeG3Yhek=;
 b=MbPMENUiPe+e7x223oC0k+IihpKBa0qvYFSmMVFRorz4ONwnm0TMAX7y+g6OZ90NOsIHw1hrOeXovjaJxzjwC5tuZ2mNxllCdFDydGTMDOFPdpCkNet1fEoJDIk85i6TcAB/Y1oieZzLyy6w2CPgJSNvO8QTrJ86mE7uQ2ahcxGdoL0bk+2G0Vgbbcux+RCEP59qcV9JCX7a4/IxldVfZ3a/i0KFbVnL4dNm+zaPwPlNkR8Kh++Zfxth0P5CU+ni6CpRX08KA1b3iYfICGtotGhoZN+DuekrsQcX12AsI1DsKOL36Q0jOPEpWp8GAJ7MXb4aAqmAduDJQhXTpkAGOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uottawa.ca; dmarc=pass action=none header.from=uottawa.ca;
 dkim=pass header.d=uottawa.ca; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uottawa.onmicrosoft.com; s=selector2-uottawa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uUaKSHQpFKAsMWpSV1/p687BUw21rSIGdIzMeG3Yhek=;
 b=kZJrmo1W9VDbd6ndQUhisMzTGGHWho7mOKsQ6Hsk4coV/pCnvLZPoF5knqKJXBiWRYZZmqtaqmzr7tJJ+iICmtFivjbUg5112BmsksgnaJ1h2KC+KgGr5257yNS+FQWBc1npAcugXBQseWNln+nx7zI1T9pthHbu7e+GukKfEh0=
From: Katherine Mcmillan <kmcmi046@uottawa.ca>
To: "solar@openwall.com" <solar@openwall.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] help wanted - bring more issues in here
Thread-Index: AQHacNqcONzkmALjUUqR488MFWERfrEs1DKe
Date: Thu, 7 Mar 2024 22:11:04 +0000
Message-ID:
 <YT2PR01MB9827A6400BB63C5452D163CFE8202@YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM>
References: <20240307215637.GA31298@openwall.com>
In-Reply-To: <20240307215637.GA31298@openwall.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uottawa.ca;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: YT2PR01MB9827:EE_|YT3PR01MB9625:EE_
x-ms-office365-filtering-correlation-id: cec2c9b8-45d9-4cda-42d7-08dc3ef37b74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 1CgxzOJ/AueAnI4BNZNuuEfey9TBfNs3jjg7IsTTnX2+vaQJoEgQ2W0K6OEP2CLlhlq521UlzK5EEs1vGJOjIc2k6MBjF5mRgoRQseeflcKDKwI5Ltl3GD1M48kRHp6LjJsKmRMyHj3V/BWa8G8g6cczBcKKd6jJrneHLN+ZuRnobP8LbtXbnZpoAmd5qi43FuyYTIJD4asfgvR7O5rp0pgzxaU3KKYmE2b0+KIqi6TahaCT6bRP+JIdsETPEI7FsPdWO9SS2ej7oKP1peTzlNmAp7/u4qixuB1+bGvqswXkD9jYAix2CpDx/7g45ss3uUxVcPXyR35i/zkorefUTR7uiXvQeP3SzwuTAo0woasRUtvSt0ZrMq4SzskGAgEnckXGSFdgrxm4OiIw8HJiot2AlfYUyCdp0HOb/YpO6ZRndcJLguIX9eJt3ANIH12E+g6WHvwcfiFzGud+ZZH788tlt0ekIYVTncyE2vDldK3gPuCu2LVyGx547YpTVwbATyDmWnMw6SK01KL1BM84WaLoFdE4IKtjZ3UH1cmli1Dx3mZPjatm3HyBRz3xlHuhM5o7liNHyFZS8DvcAbzOWDrziEC1AvET5qE+O5b2SXDAKzNp4QC1ajjz0vGJfXthk5+MB3WlJb4Q4dwwyxSDvwERvgOuB/M4kvxklpKL0mA=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?rme54rKyObu5PkA9wD+EGxudOY1Fv/pcfqupctZWGvbRkTBxSomEARMWH5Xr?=
 =?us-ascii?Q?RK05s1aQTswBBMGV6osC+IzNwilu4DN39o0bfeczCx+NHRoGvVn2/QAqjbeX?=
 =?us-ascii?Q?m+JlpXujfqckW+/eDhSmimkDEJEpvJXlLgXYdNuVSz15ZPBKz7tNhmmeOqmM?=
 =?us-ascii?Q?pUrtxi5JmRtkyoUa58qzUDP8Qhfm/RbSA5rKxpH0yRmUiX3Q8hI7hYIICUsi?=
 =?us-ascii?Q?MbB0pY+zzbYKU/or82lS/FUnYtbsUa6bmmPUibnjeoB7DL8bkycvUgD4F/78?=
 =?us-ascii?Q?86zwF3UBF7XEe8FNro0iKheoSTQ4g3pMCVwNndY0yI9cSP9iI1qbyiohHU1L?=
 =?us-ascii?Q?YkHDcuoOyvC/sPw41W2wJ3XjyFJW4jUXDPNbt+9DCPaVa47y1uKDX7icn8LU?=
 =?us-ascii?Q?QZPSudiPLm/0p7ach7nueE7FgVmxYA2KN4mimMIfO3dASWyXwHE504vlHVnY?=
 =?us-ascii?Q?9uolwDv8t6ydK11OcBwwEa0QUSu14Of8YcrssTzG7MU7+1K/g3jqbjkXMjUR?=
 =?us-ascii?Q?4btjZPq1F1DqJgb2qeFPRkPeZYfBCEA+Z4cp2585rYJ6Gx2z3MhoJbx9bETn?=
 =?us-ascii?Q?cQEiK8WSWwPnClrL7SdpcVgGrCaZAkOXIAiwZqijM/Yq8dsuaIeEZ4eApNw4?=
 =?us-ascii?Q?XSKbm138pGd2Q7hY6/pSSfPv/11ma5++efjAzqbeedA2HObQUQwCuoGVywMN?=
 =?us-ascii?Q?q62o6eWAhjXNUmuAiNcjqwlYJGe2kULWxEExDp0whSWfmTidPrUjGWJIXiwe?=
 =?us-ascii?Q?QEHx0UOeyoNslFfipNriqjMVaWfuK+Gtdx5DgmHI4a15ktxntEUdxh9KY8mT?=
 =?us-ascii?Q?9SW0ZuYK1wPZJSzdsULxskATOw4PsZ6qFnYfmX5+64MB0AMSgVBzavizvfzC?=
 =?us-ascii?Q?TKGl86wY4hrMg9/T6fVrf0NKoMoSKNLut9w0SISjY/81/Q8E+sZSTKnbjbud?=
 =?us-ascii?Q?nu5e8VA9XoqWIcDvOLHmYBOGDwlUK0QQuY17nGO39tePxVkz2UAOcoZQvkDN?=
 =?us-ascii?Q?xlZYcKBr7+YuXSdJF8hTrry6H8RKls8pavcfYZgtlvLGsG/WpxVpkpxbDd5h?=
 =?us-ascii?Q?tsLoQReBjoIJSZctltSF4tSysnOPshLBOFNX+16eMrVChIbbeWe4Qra8k+el?=
 =?us-ascii?Q?JeSVDHGQXFri/YWaa4VA3BgUIZ64YC2Mu9cqfJxjsWMGlfuffPuJrAZWJlrJ?=
 =?us-ascii?Q?om2U1uEAp8ul3qn3SP7MxDuFM/0Vjw+n522vk4wxQyVNU8w7PpfGp9SLkm7B?=
 =?us-ascii?Q?QFqyH49OC+PDUrgk4gGx6NC3JPytVtPM/kfvl4fJ3cmunvqHKxqdvG04mSsp?=
 =?us-ascii?Q?oXQ/D0JGqqReRkHFno3OUfobKMnAHITpFy2GYBnhg3yOpw2Mpi7AscedmXv/?=
 =?us-ascii?Q?bMgXI5RXc55u8hbe93M/c7JhYAKh6ZgueaNZ2/u3JhkThwlRs4c8O7yZN4iD?=
 =?us-ascii?Q?cucK0J5A8HI87ihVf0iVC47iqlpazRnvw0rV+aGMQgV/W8UZD7aQqCKaOvRH?=
 =?us-ascii?Q?vnKDi6G0rp6yHGrDC7HFr09wOGsTZ4lUiOV2C6F6T9F08t0uCrg3+1KM7ia5?=
 =?us-ascii?Q?lZgMYVk4pLIlU1ruFJSkpVd5FSR2lQEzgFbdQ0Fj?=
Content-Type: multipart/alternative;
	boundary="_000_YT2PR01MB9827A6400BB63C5452D163CFE8202YT2PR01MB9827CANP_"
MIME-Version: 1.0
X-OriginatorOrg: uottawa.ca
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: cec2c9b8-45d9-4cda-42d7-08dc3ef37b74
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2024 22:11:04.7381
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d41fdab1-7e15-4cfd-b5fa-7200e54deb6b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UfQsWSSM1Nl3+/n2B1xUzokCSuZMU72JkOUuNdh/oxF2sD7GUuGHZYFlM2jwhJ13APSn7Zi3wYrw91PjsJzC3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT3PR01MB9625
Subject: Re: [oss-security] help wanted - bring more issues in here

--_000_YT2PR01MB9827A6400BB63C5452D163CFE8202YT2PR01MB9827CANP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Alexander,

I would be interested in helping with this.  Recently, I have brought a sec=
urity flaw in the Wacom One driver to different communities' attention (as =
well as how to overcome it with 'Linux for the Wacom One' substitutions), t=
he AI/LLM ASCII vulnerability here (ArtPrompt): https://medium.com/predict/=
hacking-chatgpt-the-ascii-art-jailbreak-unveiled-9efb0648cd0f, and the firm=
ware vulnerability here (LogoFail, back in December): https://www.scmagazin=
e.com/news/logofail-vulnerabilities-may-affect-95-of-computers-researchers-=
say.

I am a big fan of creative exploits and solutions.  I'm more deeply involve=
d with *BSD than Linux.

Thank you for considering,
Katie
________________________________
From: Solar Designer <solar@openwall.com>
Sent: 07 March 2024 16:56
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Subject: [oss-security] help wanted - bring more issues in here

Attention : courriel externe | external email

Hi,

We have this contributing back task not requiring (linux-)distros
membership:

https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-b=
ack

Administrative tasks mostly unrelated to (linux-)distros lists (but
relevant to the wider community)
[...]
3. Monitor for Open Source security issues/topics published elsewhere,
identify which of these would fit, and bring them to oss-security -
primary: Oracle Solaris, backup: vacant

Alan Coopersmith of Oracle Solaris does a good job at this task.  Thank
you, Alan!  However, this task needs more than one person's involvement.
I'd appreciate it if others volunteer for it as well - both a second
distro (as you can see, that spot is now vacant) and anyone else who's
capable and willing to help.

I'd also appreciate volunteers for just the third sub-task.  I happen to
notice many "Open Source security issues/topics published elsewhere" and
"identify which of these would fit", but I rarely have time to write
them up for posting to oss-security.  So if some of you volunteer for
producing proper self-contained oss-security posting out of references
to issues published elsewhere, I could simply be forwarding the links
and raw material to you, for you to process and post.  In some cases,
this can be as simple as extracting a posting from another mailing
list's archive, with proper attribution and including a link too.  In
other cases, it's trickier.  I'll provide initial guidance.  Anyone?

I guess many others in here also often come across more issues suitable
for oss-security, and also don't have time.  So assuming that enough
people volunteer for the third "process and post" sub-task, please feel
free to also volunteer for the first two sub-tasks.

Thanks,

Alexander

--_000_YT2PR01MB9827A6400BB63C5452D163CFE8202YT2PR01MB9827CANP_--
