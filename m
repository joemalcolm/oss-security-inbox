Received: (qmail 9978 invoked by uid 550); 5 Oct 2023 18:16:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17676 invoked from network); 5 Oct 2023 17:41:17 -0000
X-TM-AS-ERS: 10.45.168.3-127.5.254.253
X-TM-AS-SMTP: 1.0 U0pEQy1FWENIMDEuZXUudHJlbmRuZXQub3Jn emRpQHRyZW5kbWljcm8uY
	29t
X-DDEI-TLS-USAGE: Unused
From: "zdi@trendmicro.com" <zdi@trendmicro.com>
To: Salvatore Bonaccorso <carnil@debian.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Solar Designer <solar@openwall.com>
Thread-Topic: [oss-security] Exim4 MTA CVEs assigned from ZDI
Thread-Index: AQHZ8vZiVS8iqvCNgUSk5iiaYSDUu7AyLz/wgAfbKgCAABs8sIABWmHw
Date: Thu, 5 Oct 2023 17:40:58 +0000
Message-ID: <SJ0PR01MB7413C4BC552E1212F3BEDEC3D1CAA@SJ0PR01MB7413.prod.exchangelabs.com>
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <20230929165914.GA31245@openwall.com>
 <SJ0PR01MB7413CB07EDE457153C8C5C3CD1C0A@SJ0PR01MB7413.prod.exchangelabs.com>
 <ZR27jCirFcyI7smg@eldamar.lan>
 <SJ0PR01MB74130DAEAADAB8F76876E418D1CBA@SJ0PR01MB7413.prod.exchangelabs.com>
In-Reply-To: <SJ0PR01MB74130DAEAADAB8F76876E418D1CBA@SJ0PR01MB7413.prod.exchangelabs.com>
Accept-Language: en-US, es-ES
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels: MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_ActionId=02c4e57d-05dd-4324-b614-75ff8ff639af;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_ContentBits=0;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_Enabled=true;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_Method=Privileged;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_Name=Public
 Information - no
 protection;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_SetDate=2023-10-04T21:01:28Z;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_SiteId=3e04753a-ae5b-42d4-a86d-d6f05460f9e4;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR01MB7413:EE_|DM4PR01MB7644:EE_
x-ms-office365-filtering-correlation-id: 64823cc6-bb01-484b-6585-08dbc5ca3beb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dFSQfLAZJuYnyUEpxLF525zhvIn1gHeN8Pwc2x4DJJoB+KS4E6Pza3VMOC2TZ6cT2eQDQDXJOHQ2DKYQG4C7eu/YBGXe7AsRtMXV5yECUbEPhRj8SzVP93pWmAe4u2OpxtlBnbov15eQCaCoIzdo9DdR7cC9SkkOqJgAPKXIrGuYVf+Np7Awz0CF/GGpuRzr3S13bhUm6tc5UgkmRzDVXEz8qItlDRXOukVJqKKMn6ct5tYLwuOojuF9jAPuNbSucgc4rJE++Sp1dafVZYTI25EOr0DFfiZU/jGt27Tajcr4uVMdNmlH2xLks/XTmhQNlv7s316gojv2t8MS/O8e/CbxIMQkbKElBxSklKRwJcw4Bb861FK5KsTmRuXNRnKS5EMrG/egruI70qrb70QX+BOg7hM16NBFbB86LL2i1L0BmUkGcPwWVo+MbyOEQ5jtV4q35Xis6Ce2miSlcOaNuQO26eE67MU/eDPVGFcW9DAL3Ydpk4+hMglpk871iruPDFHtamXPjIwoCYH/0xWfc9lpX3MuMefXVRlTLaUA/ydUn+o3IxwHkMhXX6NM4PSGBd1xb5W80HS3lcXqdb0OatbpHfquzCjfvfBYcKaipcE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR01MB7413.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(39860400002)(346002)(136003)(396003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(15650500001)(2906002)(52536014)(4326008)(8676002)(8936002)(5660300002)(83380400001)(110136005)(41300700001)(66476007)(66946007)(66556008)(66446008)(64756008)(76116006)(966005)(478600001)(316002)(71200400001)(7696005)(6506007)(9686003)(55016003)(26005)(53546011)(122000001)(38070700005)(38100700002)(86362001)(33656002)(82960400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Eu75yAfLQlKdxYi5Ej5vt+5oKmyXLsnTvbzb//ORUjqoK6d9u5Yp648x+zqS?=
 =?us-ascii?Q?k31uiVAMoGJLZGkgQxDIKlGJDaGuA8x3r+FoVj8QaTfKZSk+rApPCrgFyFQz?=
 =?us-ascii?Q?ijCEi5iup4QBs968DveFbR9L889wy9ETJNpEeH2k/8R+zGyQPfpUtqmb5Teu?=
 =?us-ascii?Q?Kkk4JjMAj/xARUf3TGTPzDnwvCdnlQTarh8SZ63vb1WIK5nJN7w4hpAml4Xq?=
 =?us-ascii?Q?77vfUjbciPATYUHBPkAeg8l2acoLPBmUMi6H81+3xeMlQ3qXdh/y2qT8nrea?=
 =?us-ascii?Q?WJA2SpPXgiGZ+OZbGM0wXWwWyuFjvQADhk/8PYKbWkgSNWTQzEV6FJqAepu4?=
 =?us-ascii?Q?nK5UVIL06nnZwbF0vprxXu/Aop65vosXDAEdCqG4bcZk/BxfcgUomaDsnHzF?=
 =?us-ascii?Q?18U1qRpD5u8LH3hKIWyvXnTNBYWczd3W9Ao3w+wzt5Tuc7lBmHhL1Iqfcl2l?=
 =?us-ascii?Q?ufCZXgQUStShm6bTZWZow57Nk1DiVo4dD0eIlqueoapamlLKL/1hRNCKwWC/?=
 =?us-ascii?Q?RCeyZdReXbqs4tzhVcUDaI9AbNmjiUwx2BgEn+u1mXz+YkTpPq9NL8g5bc4p?=
 =?us-ascii?Q?TTGuXBB4ls2NFrxce6nomEsGgkKd2LKggMJxzHKRTJ7BrjC83etq/v50FKf/?=
 =?us-ascii?Q?s3tW7j3SRb0QZ53lvhnCWFNDSNqumI7aiq5R2hkxCDORcm2WDozOXYqovXIO?=
 =?us-ascii?Q?+qs/UnMrJW5Ah+Kekx0eQYT6niSEx+0a26CPOAAx9cgsDjL95l9wJ/G3JEMa?=
 =?us-ascii?Q?FRXiUI67kKrfR7SCklLdQNj37QaBStxaX7DWBlq8QYkVxYmU+eYaHyeA0uZ+?=
 =?us-ascii?Q?MmCXCpC2lfYf9Ag+YGxJI9P49TatajvTOjQlk2xRayTS7ouXtPX47du65kC0?=
 =?us-ascii?Q?vKX+l/FXMsLe9a0e5ulfVPYVAp8ZYGbq8/jznIwUnsicpr9fY0elV6iH8y70?=
 =?us-ascii?Q?YJcjlt7Gf/xEs35TD1OIq4xsdqbAzsIcstt7q1AuTDT17RN3ANpaXmBGpdH0?=
 =?us-ascii?Q?cd89hP9jQs3rdeCOQZOya2UgYL4zfBzd+aIbUMN7zXtp4TmeNQzQeMDX/b1D?=
 =?us-ascii?Q?tPnVIvWV+kAt+pEeJRkgoYLJegk7NNnMaIPSpu9Iy6ylfESKT8pRDHHDpCX7?=
 =?us-ascii?Q?yUcyQMaOauQVLXWuBvJifJM5fNKGlQMRJuAJdmZHWvXstbbzIOpbN1K3g/5M?=
 =?us-ascii?Q?RjsqzfOlyiCDJX/SIOx51oaCt4YNZsbJCnPGisS6VokTNdp5JiPvSh+r+lcA?=
 =?us-ascii?Q?91rh11Lik1+vl3EzFFiOatsSmNCefg+Yk/zpkUsgAzrlRXnAdya8IILtF9Qe?=
 =?us-ascii?Q?TBfYug2PNaKK4MCey00gC/tqBngP0lLbRtvZNr7rcUF9HiJiIEPIzoe8Bl7M?=
 =?us-ascii?Q?8pxzDcOz+j3lv09Za49uoNk/X+O6MqbmHxg4aWDOGmKalSTiQYPLYIMa17G3?=
 =?us-ascii?Q?OiTlVBUmXkhiYPbpRKVoo8dHbDuQ5SQp4V3DNqHIJtLGjpOS+lE4ERfX6Fju?=
 =?us-ascii?Q?/C3VEdZ68DidBNmcOx7SuCJfd9ZRVIBkEEWURJr+nyLAQ5pDDFgC0KYpaUcJ?=
 =?us-ascii?Q?P7MAJycEzwL60BTNACdZwDe2gvk5UqvDjNy2cK/RGO2QkyevgZCbNxv3eF8Q?=
 =?us-ascii?Q?8A=3D=3D?=
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PunzUZ2FAu1ITPlT/AEwVe7qSxVzUpIDwqwvQkNDpXzLIjzgkfSLP0ybpeZOhgjsja12gP2CgYfU3HvFyuAty0rAEAfnIBn6b85u35lIGghP0zBochPy2PWwRljeln4MFuvB4oA3cCe+Vij04aL/30w+6TBe/A3padSv/aZy/xcnksNMpZwmMdAWDY9g3XYaYYV4OgLiAUm3PQLmaaZ0bm1CCR7IZE2YI5YGqtG8Tn3LRbxtedz9E3TWLZPBAtoobiQChVgndKzILzTe0G/m3Vc+Zt0xEBX4OUcmZLtIMtDaPaDTVeBxfKGO4wdtIWvK3QkPz/TQCr8oCmRxOA5n3Q==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/aGpWdtsZ/0Yl1qYvAaSKDA0lEU/1BRCI537VOqhXuY=;
 b=OkcSbwe0q1B65k0wFzLl2qllwD9SHr1t57/G88TnR3xcaV660a/DF1zIsWrL0gsWR20MieyGg+nBnQliVqgOebzrtdJOuFP3l69Pyx64VYP2x5irYnOYWfFpB2PRMdtiQQie59mJFUjR2S+h0YmFDtz8YbX4iiY3tKnCtnwey25CNhzZMmAnczjyaR5V7DFkZOfwoOWGOKN8NIyKl1BZSSbmqXU7w2Wo+vE1eIHVpzJp1eAeFM5wqEU2KHOJ2GeWzylNq2sRqe4SYrYmSQg0biux1vYEa5C7MJoGo9zPx7rKrepFzIXub4k7wtRs9+Cpne6SsVPnYqAH5Xwd0PvZjQ==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=trendmicro.com; dmarc=pass action=none
 header.from=trendmicro.com; dkim=pass header.d=trendmicro.com; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: SJ0PR01MB7413.prod.exchangelabs.com
x-ms-exchange-crosstenant-network-message-id: 64823cc6-bb01-484b-6585-08dbc5ca3beb
x-ms-exchange-crosstenant-originalarrivaltime: 05 Oct 2023 17:40:58.2122 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 3e04753a-ae5b-42d4-a86d-d6f05460f9e4
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: SQmzuVfTI4lMgEcEC7GgMM/Vfm9h1DktxKhgZp0Pp7fKtxs8WMQ5O7ye73esJdyP9buaPfI6DL1st8mxnvD4XrhR+BlWVkfV5b2vk5DAseI=
x-ms-exchange-transport-crosstenantheadersstamped: DM4PR01MB7644
x-originatororg: trendmicro.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-TM-AS-ERS: 10.45.168.3-127.5.254.253
X-TM-AS-SMTP: 1.0 U0pEQy1FWENIMDEuZXUudHJlbmRuZXQub3Jn emRpQHRyZW5kbWljcm8uY
	29t
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=trendmicro.com;
	s=tmoutbound; t=1696527664;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; l=0;
	h=From:To:Date;
	b=QW7r6eoyVYKFXr4L1n3b/BW0zk6E41jYdeegoL9kQ9N5GPWTv/SbpNTNwLdXac8pY
	 1tBT9L4cOsayB8TKTKQX60gW0zqRBTT2d0ICI3bF/aUSYi2gYT9tOvzL1DmTmZKw3O
	 RsPzQpEfBovUYfrf/GbthOoSG0fh5oKeGW39+IQc=
Subject: RE: [oss-security] Exim4 MTA CVEs assigned from ZDI

Apologies, We have not received any notifications from the developers that =
these issues have been patched. We will be happy to update our advisories o=
nce they do so.

Thanks,
The ZDI Team

-----Original Message-----
From: ZDI Researcher Mailbox
Sent: Wednesday, October 4, 2023 2:02 PM
To: Salvatore Bonaccorso <carnil@debian.org>; oss-security@lists.openwall.c=
om
Cc: Solar Designer <solar@openwall.com>
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
> appropriately addressed, we will update our advisories with a link to
> the security advisory, code check-in, or other public documentation
> closing the issue.

As there is still some confusion around the libspf2 related issue: can you =
confirm or deny if the issue CVE-2023-42118 / ZDI-23-1472 is covered by htt=
ps://github.com/shevek/libspf2/pull/44 ?

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
