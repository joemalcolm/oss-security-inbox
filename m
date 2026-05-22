Received: (qmail 17687 invoked by uid 550); 22 May 2026 19:39:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18057 invoked from network); 22 May 2026 15:18:46 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d8wr9xgZxpgGWK++cE3fxh5aEROf9EIGVcLzHDiXo3nFdGhNz9yMsQvuFHLFKdK+P1z7Loah6lKoM3bxom/pIllAmBvo0YJ8jHIj8bkUY0kIwQHKdgvAXVPAAbVYPHK3QL77+qmWFIfGuNHOT9Zl39TlLqZyV7PlQaYGw/PHmrZmip6M9tjSXdYlkZlSXT65344to7HrWbdp5D/PKGjsEz7O00IzqDt4DFlHpe/eanopS86BcjAwpQ0/zAzcL5OK7Zr5UlNpkZCm0gKVNkv72g/Ks7GroUhO4xTsd7DoPO2ZrtBMqNKC+akmtGy1ADsGKadqW2zLFU7qXMyVtvgGfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dUrrcmaGeEyu9p8RTWfo779Edt1eBMAWzRkRbpeTRbI=;
 b=Xd2cCbU8BpexQPyaqsn9QM409Ab5wyoDCkKgXK5fiOA4d+iH7o0X93dotc1IDG0VXiFD1IMP+8psq9PDYF5HPdJA1l4Rt6+OT6TZfWGtgky9SxCy5LoHSeXTRdjrtwm8pHj1NDco6kJBdCKHKNnsyhqzEXPT2mvpTEFeYFbny6OCxezPrSAQuA+8vkCXdgNAkLcvmiu9JHMopYdSzRjysutBiyVVn9oQ3+FC7C7B8xhQtP7vnDW0wytEqaWhOLu6dwFyhTUpN7D/RHAmMH3LO2HBC8dju+P3wG1r+klEfCv21P+xwuYkZNsQG/iTIqajFo13O7DR367ToLiH3Ds0pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dUrrcmaGeEyu9p8RTWfo779Edt1eBMAWzRkRbpeTRbI=;
 b=BLIcZvEEzMlQRnM6I0XxlR+a+foUXsfT+0ANsDPh26ppks40VWF0XKroDZ9lNUF0fpYDeHzBg4md9epAK/AtVsuUKbKx3NcLjGzIXRfsZCQgYECU4yvv50/BVJZcsRdtVbjevkBAaf+YbzMcf3bCvIEVH5r8LA4u/BbJaa2/gGZjwgOS0zrTsgHZ24xjuOF31xb3X97WZkmDvtyILkemFcguOvuLMMVVgDlmAEkxepVp9/9s/UFrrEIv1ekOTXXwQ0/OGY3IAN7FrGDtQLT2wCvEEoDpUfxnTyTXHTgVe3BbYnDGf0Ffk4k/F1B85y5Hr2e+5l7/Npi2162UqvNBZw==
From: Markus Klyver <markusklyver@hotmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Coordinated Disclosure in the LLM Age
Thread-Index: AQHc1x/KZqhPb+GP502N8+vd+qYyoLYJrU4AgAWhlJ+AAI6kAIAKbTJu
Date: Fri, 22 May 2026 15:18:35 +0000
Message-ID:
 <FRWP189MB332883120D877F66089C46BFC30F2@FRWP189MB3328.EURP189.PROD.OUTLOOK.COM>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <19e19c71ce3.89e18d29194892.4293867009907644019@roiai.ca>
 <FRWP189MB3328A68F0DA5B59C7740E411C3042@FRWP189MB3328.EURP189.PROD.OUTLOOK.COM>
 <19e2e0e48e7.65e04bb445073.6153883981537660891@roiai.ca>
In-Reply-To: <19e2e0e48e7.65e04bb445073.6153883981537660891@roiai.ca>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: FRWP189MB3328:EE_|DB8P189MB0983:EE_
x-ms-office365-filtering-correlation-id: 3dfb444b-83ec-4006-946a-08deb81564bc
x-ms-exchange-slblob-mailprops:
 HIo0QlLMSrubxOlzPBFfmWPbTWt2HWA++HcvljXuEB00pMbxFqEojFcVVNzvZKrr2Az6tsO94MrSOnkuYIe7tqM18aI6+SDGd4AKvYGNLaq5LJkoC3SyCIW8TzRxFT6FU2fFBqL/PESnCIoyg16Y+kXbuBxuXRY4i6pvi4e7s28oV+fFMMniVFwu01ImtZeo77MZHckgD9k4caUmIHb8kFx1+4zOoDStzDswjvPoM/O8jQOGFjkVyhd4t2nSaKjsNtU25/bjtrzrB7NyPF8kMFAB/3x98kgvdkI8Pv3ksMIjfO9IitURQVgh8dM1JZtlpcwD5PfqTIEwYksYFAxckfq760jPpTf1ZjhcqWPjXaEayvmBNG82XZcgAl2YPuPFe6dxQBQDLUhJjxoGjcjQZy3gHcKOQO8scIiAsqFpWNk0n3a5TdeR7G5ifh85T/Ct7kIJ3wZCOKLNvUbDGx7l5yxfdN6LAQSzBv+0wrUgTSRPtrJ0HiVeOL66A3rT+3Cq4Kl5zudC2hXh9ByWVyGjW92to+OAyy2Fdd86hkx24ZnFMGo3HVmMFXVYNF7900IPHuUG9IgpZKIplrn1vj0UD4G/lm8ZzrUvACEKmT/gi5vXGvgB86o1NjvnIUhrKScS/5rW9q0h7aSv6Oosz6nXNa1ekFMWcDKZ2B/3r6FVCiN402/XiG4cIvIhM5NphvlFWo5R5IfsveNRcPafSgHMRB1wTtmOH3D5h3bIbHefkKrQQjYF8XqsaN3Km+4Js/r8OPJhfbuY+7PBAU1lkJLbIfsLLum3SNo6pycWSJgdm9e25RUROQWoK4/wICpYg0sW/T7rSm0sEI/omzAVqRlpfA==
x-microsoft-antispam:
 BCL:0;ARA:14566002|37011999003|34061999003|51005399006|12050799012|24021099003|21061999006|15080799012|9400799043|55001999006|8060799015|25031999004|15030799006|8062599012|31061999003|10092599007|19110799012|40105399003|3412199025|440099028|10035399007|102099032|12091999003;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?Qs8icczZxvN0uguRalQIkzqZ24qFO5Y6FhMyOlKjfKZShhQdsb3AJxrgTB?=
 =?iso-8859-1?Q?dbfe50HEqbYbAj2pnYTbhEQzOZfIOD4dYi3p3SEP849Dk2ulnWjSmopUWo?=
 =?iso-8859-1?Q?/mENt9IlYt+BKe/2RDj+GwjP9VrXOwhNJ+Wp0aXx2FKbXglpO7Z2YwX2yl?=
 =?iso-8859-1?Q?Rx0VLDqSGz8yEZ4txDSZ+xqrbr//o0+QFfEAADyRJ1CHYq2o1/R66Z52MV?=
 =?iso-8859-1?Q?qA5yoREn9xeIyustSoUEDaCzYTWxb+ZUL3D4BXHOqZi7l7vjcGXOH9E0Zo?=
 =?iso-8859-1?Q?Q+mSMXhE2LKceesSRpJdeJQdvas0JRn1B1BMUpU+hhFyqKtQj0QuSb9GLg?=
 =?iso-8859-1?Q?0SY3FWvzdWsLvs/DWS5n4/g0l931fjHvq4+UPweO+tkfSeQf/DWWP48w8u?=
 =?iso-8859-1?Q?6Sioent9xzhwraSVme/KTVnVMZmAPJmRRUDT95CJPWe7fCofvCeTWGieqc?=
 =?iso-8859-1?Q?jed06scqdZN9/dVlhrYP5i5hPVveTFvHPq3jmuBfOnIDLyfEOVxzkIs2Or?=
 =?iso-8859-1?Q?lwkgG30inz4gEDzcFCnQSnF44dzN5Qpl4Tu5uoIgP3VxDjasCkB+lMqVgB?=
 =?iso-8859-1?Q?AknjsOA04UNuslHa1MUpFkpDx+VMCgn1wv8zyhg8eILru7iiHQ7oScRRqt?=
 =?iso-8859-1?Q?gGQimap/ztdbCmTtrE7/Ab++CX7AMLiNVUR0Epw2iu6ZzbiJcFyxKRf372?=
 =?iso-8859-1?Q?kUw3eKIsWqU/NUWnU4KbQiMsJFyzc1hBDLuqOVQMjFaWIUnmAuw0dpaONS?=
 =?iso-8859-1?Q?kWPVwlSXshWXpLju6jiPsI5RIFFIpFWn/4Wrj0yPwsks47fX/X3daf22k+?=
 =?iso-8859-1?Q?34msYJ2x9cOlUBntfF50fLyvSC3RGflNeq165T4+EbdHVvWXIsgE0MinAB?=
 =?iso-8859-1?Q?pdKUzQgRRuFm3VtVfZ9F7gOlDVeDX3WMZtC/NFPFrROojI9vDv4x/QNjbC?=
 =?iso-8859-1?Q?CXs0Yia+xjKMHAcSd8wDwxqvAJUegeunrPug87crFTl6MzCa2OtqwxIK4p?=
 =?iso-8859-1?Q?bIbq/StK/bKK3S16jwgLtr5wwskjwte6NCPIcbtOyiP7zNOgRLe2oeWsyC?=
 =?iso-8859-1?Q?F5exalVBsmamqpFkVS62I2XXDH8rBP6hKfjMmPRnnukjV/mJUoz+vICoX7?=
 =?iso-8859-1?Q?ksSJz/GoV22Xd+762B3bwDkkHbEwr46r8ADtiu9OTqxurnVCPLF7zsPu6r?=
 =?iso-8859-1?Q?viT7Qd+O0ho6ewS3h26iuHncZp6RJSNG03fr1uvlanCE1O20JmkPu0/xMx?=
 =?iso-8859-1?Q?yzcsYLhUseAN1PT+cPApz8vR+bJ1tKef0h+DqLD0c=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?MAYJFOP2daGeS08LYMXI/Lv/BgiPr4GS818OmqKof2+tKW2pUrR+p0kd6F?=
 =?iso-8859-1?Q?Xitxt0fIni91vM1crgD4wZhqUTj3lKZQ+jF0ahVnWUG9TVOAHsv7Y/mEjs?=
 =?iso-8859-1?Q?Wb/khWvFAejLZPly68m6MNB0uqKdCi5dUGvMobkIXhTCQa1my4BcE5/rSn?=
 =?iso-8859-1?Q?FI0m2YTGaFMeDwT8RLBlRYJMggdYfkpmyPUxbEVbTqSExxFLM+SywVGBo1?=
 =?iso-8859-1?Q?Lju/QFrSMRoUF2RlSZuOfwj5WitQbx48Of4UhXAZthaxh0QKqqGXuAaGJe?=
 =?iso-8859-1?Q?3lsXCLj6JqoLPmVbpi9zVG6rGNM4CfSyFu0oduRsNMTLvBMLEeYtke3yhl?=
 =?iso-8859-1?Q?Nl+1RwwXbxRwZg4Z5r6w4la4m5OneAkhU7J7yoyJODixug7L0dHRkZn6HG?=
 =?iso-8859-1?Q?xdfhNehnvlLnXP/JIlQs3/e/5PTdqNjksEe53Cb8gAaBxnPmggGtVLJZ6W?=
 =?iso-8859-1?Q?EYmFTZBfy9priX6YYgZyj0bexZvXWFvxDlHi9NHx5NLDGG4hRIAm+vvV7r?=
 =?iso-8859-1?Q?v1YH9Km38fe8DcM/lVdWpQ7hItNVb4b7mVGrbyoE3hBKbjoGzpk0+sEi67?=
 =?iso-8859-1?Q?cwFUjUUP0alJK2I749p/XJm9Q+M5oi03E6BXdMiDMYIAH4Kh5T4LhBTuvj?=
 =?iso-8859-1?Q?9RqHWy11tWzGTLiR4k654/NXkBTXA7lqLAssJG2Iy0+eo1fh0Wg80DfJ01?=
 =?iso-8859-1?Q?O0HJqhtcqQ/N8KeOnZkFTXzN0SvYqk0KtQcfm2Oc4YQ/yhHctcL0z1kuXa?=
 =?iso-8859-1?Q?AFmLleP786sZhprZK6mg0+k/IHXaEazOESTmSPzqObKcOm51N3qTGJvcBD?=
 =?iso-8859-1?Q?4NvUqPZ97Xhn2VOE2x83BM7Lnz4qf/ZBBENAT/E7iuTOmx3tRUlbk/uvzF?=
 =?iso-8859-1?Q?wriiV2Xxo1m7czjHXLB8rC+cM4lIcRoNKYf3xktM5xpYHVQzZ+oIFeGrHO?=
 =?iso-8859-1?Q?1vefwaIAbiIO1setPSh961dzbPlXynpkvJUfJCIffMxDJcdpGHHNEo1UwT?=
 =?iso-8859-1?Q?Ecq+Bal1TEFhFev3HAyX8FT+CKscqy18E3mZPgs9l1zC6h+316E4AjDtQc?=
 =?iso-8859-1?Q?qxPHL4vBx0Ic4kYTFMtpOzgUD9tXKNbOrd4XbFJ47fnpHujaGfdo3SiIua?=
 =?iso-8859-1?Q?zSYd0/jE9D+ENRd7vg4Aq/8mpMB2JmF2Wr9paQx+vy/b9auThvloss5Hc2?=
 =?iso-8859-1?Q?ldPyOGRQn+IFwlDoR4myy/axIXrti21AaY5UgSRddS8Wt29BULAfO0B5yM?=
 =?iso-8859-1?Q?iVMfXr1EivItrgr/YiMl0SNyB3A7P+KDoMuX2FqgmpOKtIIaNyfbWy84pa?=
 =?iso-8859-1?Q?+Z0gUk09aH3kPdee8V8xVsek589xluRiTec0QGTm1xYEhbELeaL+9NJJt4?=
 =?iso-8859-1?Q?JlB22XNqhMTteM2R1l6Bua+QRtHsmPLfI8ZDJHuJuZQI0U/ZCyz94vLBwE?=
 =?iso-8859-1?Q?35g6czDa/H+s1RGmvdnCIPBLH7I4Ii4/TYrrsJ141YDizMRDfK4Ppyed2F?=
 =?iso-8859-1?Q?QbPPrQTeDIyaIVcnjroUKE?=
Content-Type: multipart/alternative;
	boundary="_000_FRWP189MB332883120D877F66089C46BFC30F2FRWP189MB3328EURP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-b25a6.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: FRWP189MB3328.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dfb444b-83ec-4006-946a-08deb81564bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 15:18:35.6823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8P189MB0983
Subject: Sv: [oss-security] Coordinated Disclosure in the LLM Age

--_000_FRWP189MB332883120D877F66089C46BFC30F2FRWP189MB3328EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

And my point is that it is up to the submitter to make sure that the bug ex=
ists and is real.

I also agree that, in practice, embargoes are not costless coordination mec=
hanisms. They impose delays, administrative overhead and a nontrivial burde=
n on maintainers who must preserve confidentiality/track disclosure windows=
/manage downstream communication. Public reporting means validation, encour=
age duplicate detection as a signal of prevalence and improve collective de=
fensive awareness once a responsible disclosure process has been satisfied.

________________________________
Fr=E5n: ROI AI <sales@roiai.ca>
Skickat: den 16 maj 2026 01:52
Till: oss-security <oss-security@lists.openwall.com>
=C4mne: Sv: [oss-security] Coordinated Disclosure in the LLM Age

Not sure I understand this feedback.  Openstack has a lot of low hanging vu=
lnerabilities due to legacy code.  This is the central issue, not me or LLM=
s.



A lot of people are clamoring for sovereign cloud right now:  https://emea0=
1.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fnews.ycombinator.co=
m%2Fitem%3Fid%3D48120629&data=3D05%7C02%7C%7C973c98c5b1bd4aa480ea08deb2e104=
14%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C639144876663331996%7CUnknow=
n%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiI=
sIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DaM7HS448XCDx0Vl51hCE=
eL8pS8e%2F8SoxiOTR8KULJmk%3D&reserved=3D0<https://news.ycombinator.com/item=
?id=3D48120629>

An example:   https://emea01.safelinks.protection.outlook.com/?url=3Dhttps%=
3A%2F%2Fbugs.launchpad.net%2Fswift%2F%2Bbug%2F2152384%2Fcomments%2F14&data=
=3D05%7C02%7C%7C973c98c5b1bd4aa480ea08deb2e10414%7C84df9e7fe9f640afb435aaaa=
aaaaaaaa%7C1%7C0%7C639144876663352635%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hc=
GkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3=
D%3D%7C0%7C%7C%7C&sdata=3DqIeyDjkamPlFaLlq%2FfQRAIe5OXJjR4xX9%2BJgyHw6l68%3=
D&reserved=3D0<https://bugs.launchpad.net/swift/+bug/2152384/comments/14>


ROI AI








From: Markus Klyver <markusklyver@hotmail.com>
To: "oss-security@lists.openwall.com"<oss-security@lists.openwall.com>
Date: Fri, 15 May 2026 08:27:57 -0700
Subject: Sv: [oss-security] Coordinated Disclosure in the LLM Age



If you want to process your all your internal thoughts and personality thro=
ugh a statistical probabilistic function, then you are of course absolutely=
 entire free to do so. But please keep in mind that LLMs are also overloadi=
ng open source projects with fake PRs and "fixes" that ruin the codebase (d=
o I have to mention ffmpeg and curl?), the code quality and the lives of ev=
eryone.

If an LLM is used to find potential bugs, it is up to you to ensure it is a=
 real bug and that you can replicate the behavior. Offloading that part to =
the LLM and the need for human knowledge is a loss for everyone involved.
________________________________
Fr=E5n: Tim Shephard < mailto:tim@roiai.ca >
Skickat: den 12 maj 2026 03:22
Till: oss-security < mailto:oss-security@lists.openwall.com >; fungi < mail=
to:fungi@yuggoth.org >
=C4mne: Re: [oss-security] Coordinated Disclosure in the LLM Age

Thanks for starting this discussion.  I have reported a number of issues re=
cently, including - #2149789,  #2150261,  #2149775,  #2150316 - three of wh=
ich are identified by the team as critical, and one as high.  The oslo rabb=
it MITM is also critical, IMHO, but I agree it cannot be fixed without pote=
ntially breaking many poorly configured deployments and so must be 'Class B=
'.  An awkward situation to be sure, but the solution is understandable.

For what it's worth my goal is not to 'mine security gold', rather I am try=
ing to find and test potential solutions for sovereign cloud.



More to the point of the thread, I think there is also a more pressing issu=
e adjacent to the disclosure-process question: large, long-lived projects s=
uch as OpenStack have a substantial backlog of legacy vulnerabilities and i=
nsecure patterns that are now becoming much easier to discover with LLM ass=
istance.

That changes the risk calculation. Issues that previously required deep pro=
ject knowledge, persistence, or specialized tooling may now be within reach=
 of many more people. We should assume adversaries can use the same leverag=
e, including for insider attacks and for chaining individually modest bugs =
across trust boundaries.

In that sense, this feels like a generational security event. The urgent qu=
estion is not only whether embargoed details might leak through LLM use, bu=
t whether maintainers can harden exposed systems faster than attackers can =
rediscover and combine old weaknesses.

That argues for shorter exposure windows, more proactive hardening, and mor=
e attention to eliminating vulnerable patterns before they become practical=
 attack paths.

Furthermore, it argues for assertive use of modern LLMs, especially for cod=
e review and vulnerability discovery. I have volunteered to help with this =
for the OpenStack VMT, and would be happy to do so again here.



Cheers,



Tim.

PS: LLMs helped with this email, and with more and more of the work I do. I=
 think we need to move forward with these tools more deliberately and less =
fearfully.
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




--_000_FRWP189MB332883120D877F66089C46BFC30F2FRWP189MB3328EURP_--
