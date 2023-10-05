Received: (qmail 13845 invoked by uid 550); 5 Oct 2023 20:53:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3815 invoked from network); 5 Oct 2023 20:44:59 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ejLL/HRQuafoKF/yMplz5E8ggNWMUl/Yt/iuSvA/7MRLGcDxqBAU+KTvzynq44p+i8c84lsZKok68jbw//vabxB1lFjf8Gt451GZIoLXvY0RwaEJvJ9KFD1dxJkk63bZhf4Rc8LUGrWVTrBCLAJlDBF6iljydXcN42JCIO1FDBkUjMCt8uxJfdw+2TbSPSqK4gjEMNP2gm4k7j8RhhfZeeH7ETcO14yQ0AND6ml9+FUvx44kECaVAtOVAzWe8jY++r43U+83cQ28b19OWI0yspt3Y+ET8Reke7dAAPwuOCZ9ml9b32FOEsep+9GPzsjCiPYC8Js2/MP6+d/3zuxXJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y322IVWMZjCrR4arjaVaRClRsfRiYqwe2lNuovuVtw8=;
 b=YED3ImhRk5g3fbdUU2VjL4XcvdJj30x73bR5uW9+s93fdaLaYI+5I2ZY2MaKHFR6OlaybZkX0g9TRTd7wrLejUbzfEPtIQ1cMGKQkZq0l1PhLKnVX9DBwkzzn9QxaqdCc0z1IQ3H8bozoEdjRcXOQ4Uh+1Ch9/6FcxKUFd9TIBAanxi1s+jtsyRop2EMAZ1wevGamTTDGbXz7q/JTVQsKQiGkQXIHrHtEHHI5FLKJrE56tY3VmhAAvyGul9QEqe2mK/vIO/is33+Rus3qiC+ex9Gy1EZP6XXsIfX+maPXmd2KeSP4NU1Zq228ZuLwuYgWB6XHZISzH2GP2rZE+eJJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=webpros.com; dmarc=pass action=none header.from=webpros.com;
 dkim=pass header.d=webpros.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=webpros.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y322IVWMZjCrR4arjaVaRClRsfRiYqwe2lNuovuVtw8=;
 b=dlELaKMmPmxKY9J/nFwlFdYHovO63j/nqrc/rgjmY/EjoSO/lNzI/oVyCYJ5cFn5h63N84D+wgPN50E/jigw/za5oTmlOLfdSmqPDu06FV5GN+3PEW5PcMimqBDAurud7+u1jaK1y95Jkpt7tRKMTg1NmhmMGle5NekUoGjYidA6u68+9n5pVxL4jeUMpUeQkHDiiRmILntPigB9ZG2r7jYWNw6rZrs06CjmUnlVU+XWUdmnSC0r3ceus9MJT0Zy7Ztid6nq9bu/9ES7VP4n6EgUvewV7ZuOuwcsL7aY/tPrTMkKdzaYfN0J4mlZdpwuY0oMhm3SPpdVlNNRWidtsg==
From: Cory McIntire <cory.mcintire@webpros.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"zdi@trendmicro.com" <zdi@trendmicro.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, Solar
 Designer <solar@openwall.com>
Thread-Topic: [oss-security] Exim4 MTA CVEs assigned from ZDI
Thread-Index:
 AQHZ8u8Ya3lh9Tgj/0a76BKcnFP1grAyBq4AgAApN4CAB9qTAIAAG5eAgAFaRQCAABlwgIAAGZhL
Date: Thu, 5 Oct 2023 20:44:39 +0000
Message-ID:
 <SA1PR14MB45951B834771F85BBB40E7BAF1CAA@SA1PR14MB4595.namprd14.prod.outlook.com>
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <20230929165914.GA31245@openwall.com>
 <SJ0PR01MB7413CB07EDE457153C8C5C3CD1C0A@SJ0PR01MB7413.prod.exchangelabs.com>
 <ZR27jCirFcyI7smg@eldamar.lan>
 <SJ0PR01MB74130DAEAADAB8F76876E418D1CBA@SJ0PR01MB7413.prod.exchangelabs.com>
 <SJ0PR01MB7413C4BC552E1212F3BEDEC3D1CAA@SJ0PR01MB7413.prod.exchangelabs.com>
 <ZR8KgeGG_jLN5n4a@eldamar.lan>
In-Reply-To: <ZR8KgeGG_jLN5n4a@eldamar.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=webpros.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR14MB4595:EE_|BY1PR14MB7055:EE_
x-ms-office365-filtering-correlation-id: 7bd11551-81bc-4133-11cf-08dbc5e3e51c
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 BhQTVekEE2NZUcTVYnsXxz7KQQyegrs0YSU7rXYF+SeMO55TnWdzGDlSDEc2H/3d2kW0OR+HSMJMCawl6Aw4NkfEeGwbmwVLY2J2lHCokzkwXhJMt/p2K7xVzqMZBW+i16GhX1PAnee9Va8Te9+KYC2VeDjzcDWJZnrZQGKCGU7ej63v8Wlfizz/LWIWWnVIXl1Nc43nBn+tent9eLa8x+RQG7sibEb2Y6U1Tb2hPBgtxJIc0w8Os0krJXMFxDBMdaKp/Tv6rJVCkiqF1YTWgWad2kVdecsxQOEdTI3D4Z9YFZpk/OigUTMnLaU2/8MlOtzmeKFoPl8IBD0wsh34ClsjM+WLwPqdkOlE1sEa2UMSX9ADyhbbVW0iJGbCbx1tpdItqajIPO01OEWWlxP+owqW1s5mrIYXmY5dlAzdbUAjO7n9yLBH5eWoed9dlSuhoHE02MDv9VdcFNw1cz9QgdR2HhSurAua6cPVRo3SNQSOAF9xnioskxxBEydAjuBpzm/fUGu1Php0shCciqacLK8dVl/JgrCyaNpbpRIJx7H99glJNJkcAmNJuu012Czrls+ylm60YJHzwy6SANMbKd7ty/hlaX8W0r01oz4+8S0=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR14MB4595.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(39860400002)(346002)(136003)(366004)(186009)(451199024)(1800799009)(64100799003)(8676002)(8936002)(41300700001)(316002)(5660300002)(4326008)(33656002)(38100700002)(52536014)(55016003)(2906002)(38070700005)(122000001)(15650500001)(166002)(7696005)(53546011)(9686003)(6506007)(54906003)(26005)(83380400001)(76116006)(64756008)(110136005)(66476007)(71200400001)(66556008)(66946007)(45080400002)(86362001)(478600001)(966005)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?Windows-1252?Q?fTzJB9OpYXC32IM9gAv8KFKUSfqoymh/f8IqRO5Me2kTZIhpLi0TLmo4?=
 =?Windows-1252?Q?Mx2RtbAKe2FBDR9TM5AGXLZ2HgC5rxYDramOdrfb1TB+95EwDwe+lz+e?=
 =?Windows-1252?Q?bMtO7GHLsLN8pHRi5tuGGicCCh6NWsYK7h8kLVViKxzv9F1SqX8pM8R5?=
 =?Windows-1252?Q?IAq8LnA9axHFSqBfpmoUpBvEZ1GvDec8wzVfNTWgPXUVNSZMCv9NWM+d?=
 =?Windows-1252?Q?4ueTx5c4lAijblRZBpw8XhX9N5P71/qGTJxVBNC+DR7ZLlCQuhzc2N1y?=
 =?Windows-1252?Q?und4tCccfrq5iiepmpOHMIwZcDwFIl1MnKPVj0/kMfUZlpgaAtcOhgar?=
 =?Windows-1252?Q?/eJGY8HSSpklfgFlqBSLGzjd+awmDiyAwVZi5e5X4OF2C0ZvvoN6W50M?=
 =?Windows-1252?Q?2sW13f3to780+ffs7GS4cRdR3cgdYNSdI3JlXcczOvtdmFYGynC5tZF8?=
 =?Windows-1252?Q?Pax8Ah1iPLvDhC6IKxHGhrrSsYrtRqY88AZy1MxBdOHjUCyJQSBmpZpH?=
 =?Windows-1252?Q?V/wj0JZEaulE4aH8Au1I3pguLJVM2bugMwPw+D8c1+epfaF0O6wkgXEF?=
 =?Windows-1252?Q?k44dtM5crH7hYTfz680T/6SXKue80dx7ZVe61Gy2I05zAr2geBO/RDsr?=
 =?Windows-1252?Q?VNbGB6TSq7Q9Y1jQAZyzKccm7LAOz2RewQJE1zb8h+om6MVRTIDsKRhE?=
 =?Windows-1252?Q?RGmyJgnPmTUgTTHejP4J1fXEs0YDPqY3il+D3vHArjaSFjFEInCn4Cyk?=
 =?Windows-1252?Q?0Gz7gFhp3SGRUMDWUHBxGMa7pUQa7FWCqMb8qxpfzTZSx+SP1c7/ub9g?=
 =?Windows-1252?Q?HxLYI5UKLVSkSplDX2UCKhokO9jqf33IpHnm2pIiImJCyfRP1WV5sKJM?=
 =?Windows-1252?Q?ByCr+sYcEkRedCg0LLapXpMKIDINhAOaVBdPUaHIx9ggAvKDnpxmUtF8?=
 =?Windows-1252?Q?FISItLp3vtRsSR3KzXxTbIlbopeVqb2RG9AZhKdNlMsrHMoQt8IZJ6UM?=
 =?Windows-1252?Q?zlC4UBrjin0YTcxD+Ft4iC6WDWoG7WPjbFPVPzkMFWl5krzRqlSGILnh?=
 =?Windows-1252?Q?eScLgA4D3Jl4jyAiz31ptFGJwlxo1HQf1Njm//PGVlJ928c+pO2bWdn0?=
 =?Windows-1252?Q?Fad6IxHqLOtDHzPVjWD5BhrS4R0W1alnZoDbK1KbA/wsyrsJX2bqjk1i?=
 =?Windows-1252?Q?dj37rczqWX1GZu6HVn040Wa0sPPb9NYbhQm9uC32sxW0JJMuyP2MZwjN?=
 =?Windows-1252?Q?IxbunBXxf/w0Ck+zWOBnLMuCz13Fo+5YHmTJktrzh6uXpgBg6brKfOhA?=
 =?Windows-1252?Q?CXckQwbUOrQKO6L9IR3SEa57RZv1QhQQhSIRYNyp68XbqBKDfjMADuwY?=
 =?Windows-1252?Q?bdTG7mbsEuVnmKKvDbIklsdVC955K5sr2bNZuWVXfCsxNw1RXddsumEi?=
 =?Windows-1252?Q?bNGkOfundrhVMbe/o2rmxB7v1OBlOtB3yEfK5wcG3Kqg2MEKoHZbHO72?=
 =?Windows-1252?Q?t6rSOPMB1j/ZtWLOvQM5VwoFSqhoDEfeUPmBuKVLFQA0a1d3Uzh/ic6l?=
 =?Windows-1252?Q?vNkCXmbvJUFk9rugT9vSm1oBkzN/uxft+KeVjvou6/HtI1R2fnkFRoQ6?=
 =?Windows-1252?Q?wBv04bxPBDq3aZ7P9/HHj/zEEoTohrzOi41ifXXmZUuaQOqUugfzHGHj?=
 =?Windows-1252?Q?irxYLQ4tXYN2va4/wwMYSfShQfg27Ujs5Nq9poertHGyBTESb2ZdLg?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SA1PR14MB45951B834771F85BBB40E7BAF1CAASA1PR14MB4595namp_"
MIME-Version: 1.0
X-OriginatorOrg: webpros.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR14MB4595.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bd11551-81bc-4133-11cf-08dbc5e3e51c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 20:44:39.4623
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f8497356-a834-4060-86b6-d4b1d8059ee0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oWda4wVXEmp3Iel+zWEflbvyDEIUcE0Dd4NYpNTPAsWP1m1Kd2zFnd9DA60PZFC1pIiErsQO1RzdEFRS0caJtmeKuM/hnKmHcO6po56RZCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR14MB7055
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

--_000_SA1PR14MB45951B834771F85BBB40E7BAF1CAASA1PR14MB4595namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Just to be clear, Exim did release 4.96.1 with 3 of the 6 patched:

https://git.exim.org/exim.git/blob/b9e0b12d9b665bbff996382264d4ba97d1a61efd=
:/doc/doc-txt/ChangeLog


Regards,
Cory McIntire | Lead =96 cPanel Application Security Team | Release Manager=
 =96 EasyApache
cory.mcintire@webpros.com<mailto:cory.mcintire@webpros.com> | cPanel =96 a =
webpros company




From: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com> on behalf of Sa=
lvatore Bonaccorso <carnil@debian.org>
Date: Thursday, October 5, 2023 at 14:13
To: zdi@trendmicro.com <zdi@trendmicro.com>
Cc: oss-security@lists.openwall.com <oss-security@lists.openwall.com>, Sola=
r Designer <solar@openwall.com>
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI
Hi ZDI team,

I do not want to land between fronts but here is my understanding:

On Thu, Oct 05, 2023 at 05:40:58PM +0000, zdi@trendmicro.com wrote:
> Apologies, We have not received any notifications from the
> developers that these issues have been patched. We will be happy to
> update our advisories once they do so.

So this feels like a locked situation. One one side I read from Exim
maintainers, that there was not much information provided to actually
determine where the issue is, neither if it is specific to Exim's use
of libspf2 or if the issue is actually in libspf2.

On the ZDI side I read that advisories will be updated once ZDI gets
notification from the Exim developers that the issue is patched.

And on a third front, there is the libspf2 report at
https://nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.=
com%2Fshevek%2Flibspf2%2Fpull%2F44&data=3D05%7C01%7Ccory.mcintire%40webpros=
.com%7Ca71a744a7ab24a5e023608dbc5d722f0%7Cf8497356a834406086b6d4b1d8059ee0%=
7C0%7C0%7C638321300025204208%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLC=
JQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DSc%2Bx=
zp0WFVsWUshEHXSj60TaLK36D6Yfi9H6zRTUMMA%3D&reserved=3D0<https://github.com/=
shevek/libspf2/pull/44> which *might* be related,
but nobody can tell if it's the same as ZDI-23-1472.

Again, my interest is to see this situation unblocked, and just asking
as a member of a distribution which might have affected packages and
for which we would want to deploy updates covering the fixes.

Thanks in advance,

Regards,
Salvatore

--_000_SA1PR14MB45951B834771F85BBB40E7BAF1CAASA1PR14MB4595namp_--
