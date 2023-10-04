Received: (qmail 13411 invoked by uid 550); 4 Oct 2023 21:59:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14121 invoked from network); 4 Oct 2023 21:02:05 -0000
X-TM-AS-ERS: 10.34.72.181-127.5.254.253
X-TM-AS-SMTP: 1.0 RURDMi1FWENIMDEuZXUudHJlbmRuZXQub3Jn emRpQHRyZW5kbWljcm8uY
	29t
X-DDEI-TLS-USAGE: Used
From: "zdi@trendmicro.com" <zdi@trendmicro.com>
To: Salvatore Bonaccorso <carnil@debian.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Solar Designer <solar@openwall.com>
Thread-Topic: [oss-security] Exim4 MTA CVEs assigned from ZDI
Thread-Index: AQHZ8vZiVS8iqvCNgUSk5iiaYSDUu7AyLz/wgAfbKgCAABs8sA==
Content-Class:
Date: Wed, 4 Oct 2023 21:01:37 +0000
Message-ID: <SJ0PR01MB74130DAEAADAB8F76876E418D1CBA@SJ0PR01MB7413.prod.exchangelabs.com>
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <20230929165914.GA31245@openwall.com>
 <SJ0PR01MB7413CB07EDE457153C8C5C3CD1C0A@SJ0PR01MB7413.prod.exchangelabs.com>
 <ZR27jCirFcyI7smg@eldamar.lan>
In-Reply-To: <ZR27jCirFcyI7smg@eldamar.lan>
Accept-Language: en-US, es-ES
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels: MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_ActionId=02c4e57d-05dd-4324-b614-75ff8ff639af;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_ContentBits=0;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_Enabled=true;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_Method=Privileged;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_Name=Public
 Information - no
 protection;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_SetDate=2023-10-04T21:01:28Z;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_SiteId=3e04753a-ae5b-42d4-a86d-d6f05460f9e4;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR01MB7413:EE_|DM4PR01MB7836:EE_
x-ms-office365-filtering-correlation-id: b81dbb28-df17-42f4-ed82-08dbc51d1970
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lc/6v/7IBR/bcYULPlfhboWEqyE6YX8O5HWS14kO6oCiwuporZDFTG7AVBzXFNBi7jwVXFc96dWPZl36Oehew2Y3Qfmupmo//NjA1DZAbSDhHhUyZtgN4Q4o7kALhD+SNeHtAx9EFUjh9LmcY8hOZIPFo7ypcJjGqCNna1Ycc87DRukOB4zcXuvyWSaaOBMoVAPF59xK05jfPPORTPCAyitaCDssBS6x0Lx3ZX4nLHbmvgtk8dp1I82d19LpXcMA7T1K4Vkg2PUce2rfRo6xuK3Fj7gPoGmUXyaXrIHD4KX/UZktn0HDUp3nCvWRObStlqnohTYBLoHzyf5L4fdMkg8IKLa7AtHVSioGv5TPVjpB9ae6fwm/dBx1OdRlcGhSEHCxHW4JOlPHuAEEVFtFoR4FhXpBL3FZXEni+8qSEVNpongsMhBoOuYWG4pX0XlY6QzdD4txGxUEFnq/5UhLEMbwjT2TUFsugriqqHssGZ4cmDj4q7rBsItcy7/gHtQzKy2OgDZIfgx6+WX4KRuPgYCCsImW3PBSQBaYoQR1ybXE5EsN96bM1C0HMs54mUO8CTdoS8RuOd0shyceMShOq5hqtRZYxzyxKBRjMWoBaPg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR01MB7413.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(39860400002)(136003)(396003)(346002)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(9686003)(7696005)(6506007)(53546011)(478600001)(71200400001)(966005)(15650500001)(26005)(41300700001)(110136005)(76116006)(66556008)(52536014)(5660300002)(66446008)(8936002)(316002)(66476007)(4326008)(8676002)(64756008)(2906002)(33656002)(66946007)(38100700002)(38070700005)(86362001)(122000001)(82960400001)(83380400001)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aGv2rajIfei/53wHMHRuRSQDm96VW7j9me01GNcOtoXbO/GRevk1oKdqMdZj?=
 =?us-ascii?Q?AwEEry0eoqKDn6+5dkL01o2Tr4NOfCHsru0NGrBihrQIOs1d2GxoeOBkJ26p?=
 =?us-ascii?Q?q5ZpnsKVJ/IwueFrlRzbEUQdICc+lYvwH+SfqJG6d3u721ltxmd7uwPMCHE6?=
 =?us-ascii?Q?ieSzYe3D3XjzqSi8AWe7Vsol2ozuRzplv2ixi4B78xSHp/MbjjbtlBjASBDu?=
 =?us-ascii?Q?WSdnK/nXj6lwGYdSp/IPBmiN3hbQPH2v/XkRnhHR6wLSyEIt0GjxgH8KP/oG?=
 =?us-ascii?Q?3f0IJ67bCebE1j+gpiNhL3pVuMtSMHMR6L9w6bjj/lLtcOXv5k9Z9llRnHUs?=
 =?us-ascii?Q?E1UY3zCLho9hlbwasJxf0UcEpnT9SSXD+KBGsQjmf0kNWk8IAb385UrtScLi?=
 =?us-ascii?Q?1C3ocbwR/gDqOv2fFSTVq+VkLO3j0Q7aLc6PYPN0JBmWFngi8r1/C5O2KTU3?=
 =?us-ascii?Q?pZNsMmU/r544Rlzlr8P7O/7uuu+3S6Q8jaZDdE7MM5hLV5MV5knwLosXzMjA?=
 =?us-ascii?Q?6rUr5xGcX/cB+sgZaZFlYlzhOytEI7n/+Ip+BUYoIFdHzG2wP29kOd/gRIo6?=
 =?us-ascii?Q?zQ0l+2VCP1Fy9EQbkkFL+EjHIhGBgIFQwHDmqxfUNGgtpuSitKHVs3Gnm1pB?=
 =?us-ascii?Q?G8ZWPcS9UHTwynm8JWG799v6WTn4phvcXstCPcYQonrd6zJkrbRaRCsfqXKL?=
 =?us-ascii?Q?TUC5pn68OkJzZZr5BK6dhn2lvEYEKv/Ozt1SyLSLN5ke7Pq6kCAhd9vcEDlC?=
 =?us-ascii?Q?6xpBfn4l7bsugHxOX+R1afYnUNbOGcEgebrtWHNrCdd8gtER+bgp0ulWC7ta?=
 =?us-ascii?Q?OBfxZkVGG6rBEH3M7sn1/KvoKqOxGRwf5svv3qTqpQYDdkeLdC6+cMkmizOo?=
 =?us-ascii?Q?nD9IPSi8xG4e21mzEHDlovyZSmTmH41I3ta+2BrykrvaAlzC+CdsSfqEiXN6?=
 =?us-ascii?Q?FL6tx4eQJESxXVHtsQhvo+JejnPuvYEKTA+0XrjlYsloZbJxXFRz3uqYg7C4?=
 =?us-ascii?Q?RAkRBat0JvIeJ4VoMkww8cvV63opttsv8avxrIHK6MLwJb+jwMNqeHNOSajj?=
 =?us-ascii?Q?CXIqXYy5yq2v0baUi2el3VOW6anVzGKOUjYk4Rk/mQSw/ULbxM2Pss7IbVrI?=
 =?us-ascii?Q?yL2aogqu1PujgjPCjxSB0LwxqY2moLkbwcqD9yNZF4XNGGoD6dQdi2HSG1BP?=
 =?us-ascii?Q?J8C78LQtTEnYhIBSmq5qNxgU52PlZCABL5lE7zPQVeJ09KBFmTUXwUdraGQ8?=
 =?us-ascii?Q?hXz1ewC03ZdumURxBu14cbfveyqJTSfhXXLkD7Aduuri1Ayzz2S8+DPRBygS?=
 =?us-ascii?Q?McnH0Oz8G7P+zedjnfTdOR19W26P1vykSrSoP2TlJPVyJ9cCg4Vwq10BYzjy?=
 =?us-ascii?Q?S2jSvaElli/j4NcABSbD85zMNlR5IZ0p6LGp6T75403pP947tKDzFq/QQZCi?=
 =?us-ascii?Q?ZK7ObE6LZ82r+DoTgOOsH9FzZq6PNapJnWB0KiX1ZaAtJ9weVmpn61u4U0Qb?=
 =?us-ascii?Q?H8i8v8C7jciky23rl6opYCUiyMOaP9EAKN914GrZ/3YKgYZ1wlHqUP3297OD?=
 =?us-ascii?Q?qTjtppjBy1JGThSntaJEyT+f/tFPHKR1w1lpJflET81K55tiXAoDfbID/8+6?=
 =?us-ascii?Q?5A=3D=3D?=
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oJ+qyg02Cu5i5capmxnHOR+utwlN8NcB2aLC0l/YhjYtSRtmrd1rAuQzDMKNmWx1JuFqP7HqUaPYUZpQYYUTWlmVbdf+Ew1GkBzgaCAInLwLdBWihBMcjaNFY6ghFeVyBudjuRaJN7EVCXm1nUI+DRqUPoKFq/CdQBgHEG0qPzzdjVoaCZhh03j5KoQ7X69czmFTGIQ2DtYmm0aIf0SgYAwd4WFlykV+7THjAlB2o2V3VsypPtZNI4w5MRB57YWtrMkPpTWsv8wdJ8TYV5XxUpqFOK16/uT1bHoGKq5lyF8sf8+/t6pkRCwDPQlixyusycCb6awqyrGxvozYYfexoQ==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R7Jtk+twuSOIFj6sN02RHkIs7M/Oe96yKi/UiekbQJ0=;
 b=MWjp1bMpm2VkbQmKwtiE5tC9xiVpDPR8hvLE4JOV+gqtYQW5228lqNh+NmiLiaWjEPh5tqqZkylypnhc+gWvdOdOdWL3+d1XVgEIPeI8r5S+iYCDm3lhpZrNwhhsk4LaTCzo1X7MRqlQ2d/Oc884VQTZhyaXiFn7fuHxE5fu8iVP5D9CiBdHJyvrEXhqAruiHh2m8NOgZwtoMjXm2NHTDniIYD0B6LQIgvIPqgGO4h4rw7xhRczxUBEVfqD0RCwwjHA+TeHvsxvw5VfQNziPrPvY499Q561qKxEAEco/LKpvVD/BvVjvOWweSXk0Im2a3mXVM7FhuM1xKCTxq64yJw==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=trendmicro.com; dmarc=pass action=none
 header.from=trendmicro.com; dkim=pass header.d=trendmicro.com; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: SJ0PR01MB7413.prod.exchangelabs.com
x-ms-exchange-crosstenant-network-message-id: b81dbb28-df17-42f4-ed82-08dbc51d1970
x-ms-exchange-crosstenant-originalarrivaltime: 04 Oct 2023 21:01:37.4071 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 3e04753a-ae5b-42d4-a86d-d6f05460f9e4
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: GDv3GknEvxqyVs/XhVSszT3XpTFQGeOmcVcq3bT1qCDyFGcWvWvbzweT7vrzox6EU85pHO6hgXI+Fle6l6NHK+r3HOIRtQ8eoBZRhMV9B9A=
x-ms-exchange-transport-crosstenantheadersstamped: DM4PR01MB7836
x-originatororg: trendmicro.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-TM-AS-ERS: 10.34.72.181-127.5.254.253
X-TM-AS-SMTP: 1.0 RURDMi1FWENIMDEuZXUudHJlbmRuZXQub3Jn emRpQHRyZW5kbWljcm8uY
	29t
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=trendmicro.com;
	s=tmoutbound; t=1696453314;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; l=0;
	h=From:To:Date;
	b=MkD4M8xRZQg/HMqwbGm0wsVB+dfQmMMAOgZA3B++ov07NfH+vRVKBsVcoHH655XNV
	 NXYVk03anp1DrNkpWG21UA7fObWT43g6Dcd65zaGyNK6lr5KJAxblyza4yUZBhSX2C
	 E+apRl5uTR/CVDNz8tWgUqIErx/N/xvBr793D6SA=
Subject: RE: [oss-security] Exim4 MTA CVEs assigned from ZDI

Hello Salvatore,

We have received a notification from the developers that these issues have =
been patched. We will be happy to update our advisories once they do so.

Thanks,
The ZDI Team

-----Original Message-----
From: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com> On Behalf Of Sa=
lvatore Bonaccorso
Sent: Wednesday, October 4, 2023 12:23 PM
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>; ZDI Researcher Mailbox <zdi@trendm=
icro.com>
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

Hi ZDI team,

On Fri, Sep 29, 2023 at 07:26:45PM +0000, zdi@trendmicro.com wrote:
> Hi,
>
> The ZDI reached out multiple times to the developers regarding
> multiple bug reports with little progress to show for it. After our
> disclosure timeline was exceeded by many months, we notified the
> maintainer of our intent to publicly disclose these bugs, at which
> time we were told, "you do what you do." If these bugs have been
> appropriately addressed, we will update our advisories with a link
> to the security advisory, code check-in, or other public
> documentation closing the issue.

As there is still some confusion around the libspf2 related issue: can
you confirm or deny if the issue CVE-2023-42118 / ZDI-23-1472 is
covered by https://github.com/shevek/libspf2/pull/44 ?

Regards,
Salvatore
TREND MICRO EMAIL NOTICE

The information contained in this email and any attachments is confidential=
 and may be subject to copyright or other intellectual property protection.=
 If you are not the intended recipient, you are not authorized to use or di=
sclose this information, and we request that you notify us by reply mail or=
 telephone and delete the original message from your mail system.

For details about what personal information we collect and why, please see =
our Privacy Notice on our website at: Read privacy policy<http://www.trendm=
icro.com/privacy>
