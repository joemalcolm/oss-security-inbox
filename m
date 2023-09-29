Received: (qmail 14011 invoked by uid 550); 29 Sep 2023 19:41:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32574 invoked from network); 29 Sep 2023 19:27:01 -0000
X-TM-AS-ERS: 10.34.72.181-127.5.254.253
X-TM-AS-SMTP: 1.0 RURDMi1FWENIMDEuZXUudHJlbmRuZXQub3Jn emRpQHRyZW5kbWljcm8uY
	29t
X-DDEI-TLS-USAGE: Used
From: "zdi@trendmicro.com" <zdi@trendmicro.com>
To: Solar Designer <solar@openwall.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Exim4 MTA CVEs assigned from ZDI
Thread-Index: AQHZ8vZiVS8iqvCNgUSk5iiaYSDUu7AyLz/w
Content-Class:
Date: Fri, 29 Sep 2023 19:26:45 +0000
Message-ID: <SJ0PR01MB7413CB07EDE457153C8C5C3CD1C0A@SJ0PR01MB7413.prod.exchangelabs.com>
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <20230929165914.GA31245@openwall.com>
In-Reply-To: <20230929165914.GA31245@openwall.com>
Accept-Language: en-US, es-ES
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels: MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_ActionId=ef64dfca-580e-448b-9429-58beab8d5d68;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_ContentBits=0;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_Enabled=true;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_Method=Privileged;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_Name=Public
 Information - no
 protection;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_SetDate=2023-09-29T19:25:05Z;MSIP_Label_fb50d67e-2428-41a1-85f0-bee73fd61572_SiteId=3e04753a-ae5b-42d4-a86d-d6f05460f9e4;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR01MB7413:EE_|DM4PR01MB7548:EE_
x-ms-office365-filtering-correlation-id: f4692670-b0ce-4bda-9508-08dbc1220490
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B2lN27Avpt+tI2Nw25QOJuxXqAE5DOZS+qfIBfaiDzV1w05kTCSrAuFGjGN3RcEuDIvFjTohsSlkKyjcPikHAPgcxF/DfnmDipbJQ7lMLEzfu4J1VJIKYhoaQsamFvHsw2AiMu70x2jGXL1ft8Kigg3o3EWzi+8ot+ooglf8eV3U499ndlzic7FjEeYlrKYBa3J7cbAwd/ZZJToGenSOz31kI/ix1YEXExwOF9jAv/AvxjOzBBRAwF4iYoYf7pG6EmlKsBqp9H6E6w2GDpxpt7CzHrLv2PeRQXOkd7kcrwdfyY7e4YpsALZ7BtJLgdRzZgU9GyN0G8YTQUQnMDZrpXRht3FHgFVWQg46YndBl3TbX60edD9GYbErscj3ddvbuRpN3xJpdEmmTABdJtlPNiK2yd5WWmlyAzoZ4Oq4NU3nWuVsmgo+MGaNve0TnPPbJpelpRQVH7/3rS9QsCBsWmCbyBoFm9K80LfQ5qtPf4wYaCOcQh61vbOY9vdOQL3ylR6Y6fWFw1oAO/Oax5dWPkNoP+ClxxuGN9px9vO6+16RGplB+hKipT401CQc5TU/RelwU4YUbohDPCA9iI6Ss5XnJhNAZyPlSaWK09UDe84=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR01MB7413.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(346002)(366004)(136003)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(52536014)(5660300002)(82960400001)(8936002)(83380400001)(41300700001)(122000001)(38070700005)(316002)(38100700002)(26005)(64756008)(66556008)(66946007)(8676002)(66476007)(76116006)(66446008)(110136005)(86362001)(15650500001)(33656002)(9686003)(7696005)(6506007)(53546011)(2906002)(71200400001)(478600001)(966005)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V8/SCNnRrx5sv+9dn0Gfq3atDihSiHp3/fris2OuU+2pjSaEna73hv/Q6sFc?=
 =?us-ascii?Q?J/c7dLJOBIF9Uamg78lI3lvhqYGFcsN+TkQuTArTIX4eqKlID7uLowXssi6H?=
 =?us-ascii?Q?3Esz4BR3QqzRZbM2oDQKyPiGa/ddtiQZpZaJ69Ks6w1HddZvX7DpdCkMka4o?=
 =?us-ascii?Q?md6n3cYyQQw95PMveH6kJ53QlXJq/UMN6JfeFVCDkLqSdjF5B/B9gBGngUgZ?=
 =?us-ascii?Q?jHkmOSgYU0T7YuqdgiyTWtMCaVCBQjDG/Z2wX1us0fl6ue37wzvoBEnIZ3az?=
 =?us-ascii?Q?bP5xQArcJJN9u/J40AJXr9xFxRHheQbSdVdaIy09Ojp6SitV+NdFDtmW/OuO?=
 =?us-ascii?Q?az4bG7KJuf3SRMV/1GgPxL+gaFBDTh83zcaWEx6PWwI3qVWcR8a3EeRFuPyw?=
 =?us-ascii?Q?q8bqWOYZgfesBzre/fmtkZT5jmovqmxOrAYIbB0th7EbrvfViq/64uAKM1XC?=
 =?us-ascii?Q?v8YKHrbdPKR72oMVXL+bzkZvoADCrLzn4oXsycJYgSjDGq4oYXiu97nvcxWs?=
 =?us-ascii?Q?BR4jujRR1g6VzIzZ8WNDsdT2QNb9HM9ivXSKY9ueUE5bW9Uv2hFTl+wm6VI0?=
 =?us-ascii?Q?2e3k2KUx16tzFTUE+YmQOIiefNXoumTJiwVsPwEZuGzzDzhmubM21bZumhOb?=
 =?us-ascii?Q?lSaMXE+FUXEKS9kWBPbrSAo5PgRXFEsd8RMT9xNClUR9PPT9RTWbFEPS9VRA?=
 =?us-ascii?Q?yve23PV31NM0zwGy7jGu/x45ISLPiJYY8dhjMuKqMJxYorqyAn8C4XTTA1Qr?=
 =?us-ascii?Q?VVyVPwJWU7z39LHCyODkTp0MF+PBvpYwAcT1WDXy5+aFYgnc72Vk8DmC9t3O?=
 =?us-ascii?Q?5Cmhwl1lR0odPSWj+ObTipxSEzkOrzpepXInsX+tYotvfw/1oSdYGvpVKifD?=
 =?us-ascii?Q?n/nD57Egt6vmO1RQDhQXNhqWCVoPrunIp/j9qFD0Ne7Qppf6g2K3FZoZqqx6?=
 =?us-ascii?Q?e8IV3AVO7/dJWwnX106Gt8tmdDNQNd8RPTkDZqxV+kMN72FYnZF6ALb77GRd?=
 =?us-ascii?Q?mmKYjtPnlZvytQm1fDm+V7l5sIUZrpa5MuaW5jwI8t96TD3uEoQ/57blr8G4?=
 =?us-ascii?Q?TLEJWyhRhe1WN6MXj18J0QfvcZtNwMp8fnmYN5gMXpg33i6X2ikj1ipGisKi?=
 =?us-ascii?Q?pLSC1+I/qqOeQ4iUyrTSUutpLuqZnRY5e9gLCmzUsapLv1GlOqsgM+ZWep8i?=
 =?us-ascii?Q?qe5hcgjcr6LVzVua+AU3gFj99DIlTj9XczMJRF6UekZeu/RPABBMrcDNG1n3?=
 =?us-ascii?Q?GIaT9KuKJgg99sejkJkYk581L98MlkF7h9d8RfUkOvhhCQAba5QZ+fqyDOlv?=
 =?us-ascii?Q?GIixrQgq2T45xuCm5VBSHa6H8H+Hqr6Hm3xaJEuw09xUKhH25CsUvaGK7NK9?=
 =?us-ascii?Q?rkI+cg1sT57GN05tSmv/9eqGi2BiqMIyS3/mN4AigWsDwriifRLWOcWk9+w3?=
 =?us-ascii?Q?qIxnvx3SEme6Uo+OUBhfj9EvgToS+QvPw7+LEQW4VWbsPeRkOFBstPwTcNbt?=
 =?us-ascii?Q?qYgNYJZssfCBN4aINge++IywBvze2wAJFTX9pmUyRtpDuHPcXeRhOq7sFIWk?=
 =?us-ascii?Q?wbRJIFh2sUT1Ez+AYuiEkdHMqCk7fygY8IP8fBbwbD2deJqvBub/FTN9Fvvw?=
 =?us-ascii?Q?Ug=3D=3D?=
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QfU13xawU3q3cLagwcdqUVpkMPL4bg0xZnaKAJ87DhYw1FHrWyl4muy+y18JN6VU7+wt8wel25X6bqYv14KRaQlj5imksxKbxWIlq8mgrLea/zV1ycb4W7O5+Y0LzAtlPJKn0ScNqJc/x8jcYhE7YQEfFcn63aod8wO/oEXqaQ1WUUttn1HjjMYW7HzsUuFU/yPas6NfQePXO8wVmvzmcLcJl8Py3SqW2AGtoMAXIh6oxR5UfH/KUQikf2mbK+PvCnCuBQ2UuWQiaIwr8KFu8kJzyLEQNLIZ+HL8MSwExKeGFz6f95gSNLet2aVLdkRhEo/Il+uULY1iWwvgzmke3A==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0r5B3xpsu7PN0uG4kIiS5TKJWcMMjX9ToILI9IZTmPc=;
 b=lSxyuU3wE+hmpW/bLxe5qbmuQHTBrzilbpae4l82Y6clq37kpEyKuUaGuuZ5baArF9+wfa7qk4bLGyKujGZBo0l8d1poLS2RWT/vBtmEmkg3zNiD5DJjVak3VlX4O2y0pql+a7UVprz0009mBkJVsuy7H07amqXi0XvzP2eJXb77pHXf+aHvXgpUsM3S4NV1i6DPZkejU0eaMoNOStdQONP2DSM8dj/zsMcyCsh1lksGKoqB8S2XeXnnqCdw7i5OJCQBnjL4ckkwX1DiWj/jYhHT9hFIbOaUlzk0DkkQ6hxFB7LgtLVeSHAd5SvmvV6bDVNvSFQ06ikvc8VPHXfNCQ==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=trendmicro.com; dmarc=pass action=none
 header.from=trendmicro.com; dkim=pass header.d=trendmicro.com; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: SJ0PR01MB7413.prod.exchangelabs.com
x-ms-exchange-crosstenant-network-message-id: f4692670-b0ce-4bda-9508-08dbc1220490
x-ms-exchange-crosstenant-originalarrivaltime: 29 Sep 2023 19:26:45.2611 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 3e04753a-ae5b-42d4-a86d-d6f05460f9e4
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: bd/xzA/i/Cb6Ao8Hw1bQ0f1GJaow6CGZ5xZEjbjx/C7aZ5p2pS/vtw+xaH2YJYRnbwjZLgUdJUxSiSVdwLuvUHOdHRG14NoAte0OLYd8xPc=
x-ms-exchange-transport-crosstenantheadersstamped: DM4PR01MB7548
x-originatororg: trendmicro.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-TM-AS-ERS: 10.34.72.181-127.5.254.253
X-TM-AS-SMTP: 1.0 RURDMi1FWENIMDEuZXUudHJlbmRuZXQub3Jn emRpQHRyZW5kbWljcm8uY
	29t
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=trendmicro.com;
	s=tmoutbound; t=1696015610;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; l=0;
	h=From:To:Date;
	b=gvS3Mot1EdYIov+Yyx0GW4+MQMJxMZr1N4rSMZqKP+LMsgPVpUFJ52nmhUAy/CfnU
	 7M68eWYGmM8/tdYVQFt5O5xXFlFqMLXfBopg9urTDC+sNPFsBItFdj9zGNQChRtcB4
	 fjwdAjP2H509t80Evux9IidewXpTN22Fab8ibvaE=
Subject: RE: [oss-security] Exim4 MTA CVEs assigned from ZDI

Hi,

The ZDI reached out multiple times to the developers regarding multiple bug=
 reports with little progress to show for it. After our disclosure timeline=
 was exceeded by many months, we notified the maintainer of our intent to p=
ublicly disclose these bugs, at which time we were told, "you do what you d=
o." If these bugs have been appropriately addressed, we will update our adv=
isories with a link to the security advisory, code check-in, or other publi=
c documentation closing the issue.

Thanks,
The ZDI

-----Original Message-----
From: Solar Designer <solar@openwall.com>
Sent: Friday, September 29, 2023 11:59 AM
To: oss-security@lists.openwall.com
Cc: ZDI Researcher Mailbox <zdi@trendmicro.com>
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

Hi,

Thank you for posting this, Heiko!  Also thank you Markus for bringing this=
 up in the other thread:

https://www.openwall.com/lists/oss-security/2023/09/29/3

I've attached plain text exports of the ZDI advisories to this message for =
archival.

Out of the Exim Bugzilla entries in Markus' message, only
https://bugs.exim.org/show_bug.cgi?id=3D3001 is currently open to the publi=
c, and it says:

> Bug 3001 - infoleak in SPA authenticator, client
>
> Comment 1 Jeremy Harris 2023-05-11 20:02:32 UTC
>
> ZDI-CAN-17433 (Trend Micro)
>
> A crafted SPA challenge from the server can cause the client
> authenticator to read OOB; the data is then returned to the server.
>
> Fix: validate the offset contained in the challenge, to avoid reading
> past the end of the challenge data structure.
>
> Vulnerable since at least 4.50, probably longer.
>
> Comment 2 Heiko Schlittermann 2023-09-29 16:01:58 UTC
>
> should be fixed in 04107e98d58efb69f7e2d7b81176e5374c7098a3

On Fri, Sep 29, 2023 at 06:06:11PM +0200, Heiko Schlittermann wrote:
> the ZDI assigned multiple CVEs to the Exim-MTA and published them
> recently:
>
> CVE            Link                                                      =
Exim-Bug
> --------------+---------------------------------------------------------+=
-----
> CVE-2023-42114
> https://www.zerodayinitiative.com/advisories/ZDI-23-1468/  3001 fixed
> CVE-2023-42115
> https://www.zerodayinitiative.com/advisories/ZDI-23-1469/  2999 fixed
> CVE-2023-42116
> https://www.zerodayinitiative.com/advisories/ZDI-23-1470/  3000 fixed
> CVE-2023-42117
> https://www.zerodayinitiative.com/advisories/ZDI-23-1471/
> CVE-2023-42118
> https://www.zerodayinitiative.com/advisories/ZDI-23-1472/
> CVE-2023-42119
> https://www.zerodayinitiative.com/advisories/ZDI-23-1473/
>
> The ZDI contacted us in June 2022. We asked about details but didn't
> get answers we were able to work with.
>
> Next contact with ZDI was in May 2023. Right after this contact we
> created project bug tracker for 3 of the 6 issues. 2 high scored of
> them are fixed (OOB access). A minor scored (info leak) is fixed too.
>
> Fixes are available in a protected repository and are ready to be
> applied by the distribution maintainers.

Are distros allowed to make their updates public as soon as they can (presu=
mably after requesting access to the protected repository)?

I suggest that you set a specific date/time e.g. in 2 days from now when bo=
th the Exim project will make the repo and the fixed bug entries (2999 and =
3000) public _and_ distros will release updates.

> The remaining issues are debatable or miss information we need to fix
> them.
>
> We're more than happy to provide fixes for all issues as soon as we
> receive detailed information.

Are you actively requesting such information from ZDI now?

This looks like sloppy handling of these issues so far by both ZDI and Exim=
 - neither team pinging the other for 10 months, then Exim taking 4 months =
to fix even the 2 high-scored issues it did have sufficient info on.  What =
are you doing to improve the handling from this point on?

Thanks again,

Alexander
TREND MICRO EMAIL NOTICE

The information contained in this email and any attachments is confidential=
 and may be subject to copyright or other intellectual property protection.=
 If you are not the intended recipient, you are not authorized to use or di=
sclose this information, and we request that you notify us by reply mail or=
 telephone and delete the original message from your mail system.

For details about what personal information we collect and why, please see =
our Privacy Notice on our website at: Read privacy policy<http://www.trendm=
icro.com/privacy>
