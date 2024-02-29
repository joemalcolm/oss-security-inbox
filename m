Received: (qmail 15781 invoked by uid 550); 29 Feb 2024 12:04:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22249 invoked from network); 29 Feb 2024 07:10:11 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GtNkEQXAUjFJCwdEn0CZk/7K37+otT5urc4lxAyb/d8mZ8lKcdXXObKGtXKekFr4nO2Y7qWNWmBLT6XkRRDBYtzD/MF+bmD2kvX13aRGbZNtmusse8bZb+m7LBEX/VvhnmuR8kY9V1boS8FpjhNsiTO0jHO//JG2vMbwjgiD/DbahK/Fwq4H2aO5lZ2t4cUHm9IVkG+IU9B3HXqyFnfJ2bn8ubu19vgq3zS14Xfg8XF1+0yd04ZtU6EN1YJcHysO4EIoAWvbT1G1N8iG8pESvs3scSWomz4sfIMrGlm8hU8XCfjzCSM/2PPAX8wzoKE6SS1PcKAnuRymwTJR88WCDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3su8Vn61HZ/qE8/2NaHcdCUDdG5KH5qCYGC1vt2COLA=;
 b=apx1uCfg2MwztnTc929aheL9NezbaWVeHja3gY/xzAsQXTb1gjWsICmISpmxESv8IgFDadFU4Z5FUO2zC6k7QLZPdeL4b03DK+2tsP9Pa2Z8ci7tJv5QLMjmIlO+jYQXiH7f985TalV8j1JCYCRpEljiGkIVX00iAdgYUsy6qon5Ywg/O45S9VycB17JAQHk2db/PduZN00RxL5vVXDducEo4qgrSM/a5kCvygMZq+DGaUe08970oudo6UrlR8fNHd5A4OBQ2El0FSvHw8/KvaNutzsNUAnAenz/2w/g8ZHt4mTPervoLWlDpKXkgdHlAhPRIImaBYhNAh1nR2brFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ebryx.com; dmarc=pass action=none header.from=ebryx.com;
 dkim=pass header.d=ebryx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ebryx0.onmicrosoft.com; s=selector1-ebryx0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3su8Vn61HZ/qE8/2NaHcdCUDdG5KH5qCYGC1vt2COLA=;
 b=PwdE6oVg+B3Pk74nQQPWaZrXOclN+ZMa7u4CHtdK/dZiRnSETPV02m5m+HHYgVbyp5yD7Ip++fh3PM83Mb+cyTSZ7Y3x/nxWiyspWXpgsOFKjslDkfI2jqPY/o746XN015WGh0e1tSafbEYVw4YNnSfpenxfIqxYAK8kfznPJWA=
From: Ali Raza Mumtaz <raza.mumtaz@ebryx.com>
To: Solar Designer <solar@openwall.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, Faran
 Abdullah <faran.abdullah@ebryx.com>
Thread-Topic: [oss-security] CVE-2024-22857: Heap Based Buffer overflow in
 zlog library
Thread-Index: AQHaaiYiy4y2LoC8C0SdS0z1NNApLbEf2nGAgAEM670=
Date: Thu, 29 Feb 2024 07:13:38 +0000
Message-ID:
 <AM0PR05MB666089CAC3BA067F6E86816EFD5F2@AM0PR05MB6660.eurprd05.prod.outlook.com>
References:
 <AM0PR05MB6660688A27BDB6F3CD0B6286FD582@AM0PR05MB6660.eurprd05.prod.outlook.com>
 <20240228150405.GA14767@openwall.com>
In-Reply-To: <20240228150405.GA14767@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ebryx.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR05MB6660:EE_|AM0PR05MB6644:EE_
x-ms-office365-filtering-correlation-id: 0fc07cd0-11f7-4df8-32c6-08dc38f5f3af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 SB0HRZgz6sRvOxvwY09tp/ibe63z3G+TiQkhkOoz4/ZZom8FkFrLwGouUpfW2f7Mxq/tDe3uW1F/aBwQJz419/COY6KOEjJXwlNbu7YUWyIsJ+D+cWVH+1XO7zeLpZsGn6mkIpuLDJ1LJtwzLDG5YFm4Lk514DsNwykT2ORHX4b9FUoPjMmxNGZZM9WBl5F8ouWbpSBeuDrPlgD3Gt5L4zg/megg3YVLHAwBdPZu4UJ35etPKwGavCmtJfafb81FLlfRHQdwPat6lDMIpIywZfSbHa4cb5rLlz+NE7RYbG2ZEGxESP7wMavpxI8/pdVZiHSMFlogAvkACN+QxVb2CKnogGkJgmXOhMG8QWwuwvtQUoyXsY3b6j+evCW0iXzLwWcMZOxL0yMibLOGpPTmZJNLARqNdwg/AA/DTSNujeFUaqMVURVYqdN+0aFmII+QpRxdtu4BtETD7ExsGE87+R5avZ+/xU4kiBIoCJvIvSwUqULfAuO0jNGDGBizn+JK1+hRnlMMVabNDlVxCqdoIibWCtTCmc0NWJWVu/VGp2de3FncGSnX0EVKefglhBDyk3yje4/DyVA9zELOTX3pcjR0H7hInz4OXSYQJ11LMm3TmZRcBKBf1SEyJdg5ufeXEUr0UwgEXXIS0U5+2kkBCJvc5WCfq5VGYrLioZDK62diPTlhT4TXWM+3Aj6vklVBjT1MYqjlSj3pmKgi8ZLdJw==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR05MB6660.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?qS7jMefWepURBp0wFjcKzdAvNwEOBHvZ9RKQJvVEFY13mPMurbtxUBtEBM?=
 =?iso-8859-1?Q?MXKOrHUmtIm6ZFEpFDPp2xlm1iAzBE/X5YAYM5OuEhNH+NqncM2iaGvqsr?=
 =?iso-8859-1?Q?IWDQnOsOlVkx3YVcpI9tIDs3+cU2pK41l/KqUBGlW2ueynV4e3Sr4Omg1W?=
 =?iso-8859-1?Q?Rzr4NTXWa5yj1FBLG1RTlKfd3dtDakiF/SpRvvfJF3W2nkQiAKFsxcf+Lz?=
 =?iso-8859-1?Q?GXT4KZFzpLoD+xD2qfJrIpf5XfUG1rjcyu4kiI4B+k7vmK0BBns8WDeyzw?=
 =?iso-8859-1?Q?2ZRjmem5kK/ckBuZeUIRiHg38jg6RMj21ujM8J3oQrMbDqjQjGsJWV4//z?=
 =?iso-8859-1?Q?p4WnwevRp/Ew5swUQ/hw5+/ZD03a8mRehcBa7RMRshFbaJ4ZPDG6r4pqvb?=
 =?iso-8859-1?Q?MdUSeZCBw54+FfBduwup0cIJbEF4WOOZK/sJxgxqiK5Uxj9vB7hMUBQ+Mm?=
 =?iso-8859-1?Q?NS3Sbo8SgKGLRUOiV/vHuXNIWZmQVQz7TSKgyOUD3A4ysjaHqkephr/OZT?=
 =?iso-8859-1?Q?vrF5CvPIVHYDcm+nMvNr2rY/ivZtZpN+OtuPvPKpxT3S11O5Pk8u0nuaJN?=
 =?iso-8859-1?Q?UERkUbUfFqBM3OKtCoGtGBWym2yCItNU4elTuqm/M1/0jji45rRk+87wWQ?=
 =?iso-8859-1?Q?DnIL3e4VYTfwI+Ur8fZ+veHeQcKucr+CUmUX+RJu3kcXLUs1DNE8qgXWzU?=
 =?iso-8859-1?Q?JfWTvvFuOeTJWFqik6I/q/YIAKaP9B0a3lemvOhP4jISSZ7xifh36dzg+L?=
 =?iso-8859-1?Q?9bZFsZpRtXLJwv2/gFnn7T41WxaH4HafQljdiWFxWjnB4NU9BwS4G+6Z/Z?=
 =?iso-8859-1?Q?heGSRcevvDN+69TmcPXLcbjyUVzPBvhumhaBeTfO0x8XfLDz7GNmPOco2P?=
 =?iso-8859-1?Q?bPVoUVoqSXxqLFkiOy1I1nwrmP+0CJT+Qtcz4J1Clup6nzC9j1P8r9duxa?=
 =?iso-8859-1?Q?izDab/iKGYHQiNiANHc7JNDwDOT0Y2I+QeyWUEAQqf8MJTgnB0E9fHNQul?=
 =?iso-8859-1?Q?Exw1MhSSAVqTysjcSFi7W2P5wQ6qe1CwHw7jqzPx2rXn3JAGgCXtoTqrnm?=
 =?iso-8859-1?Q?OVvVJd+mxqGmFyisKK78ZjpNcs6EvKhpa5paBwKCA34maO+O++KNs8UmsX?=
 =?iso-8859-1?Q?PimXHGCWtKqoeJgqfSKTQQqDUOnDPKhQ5WhHu4k9oXqC7qgHS0mV1aG3zE?=
 =?iso-8859-1?Q?706rbgHCV4dIDdn72YjbCODKskUE3VaQg6WLNwxFAfsLSF8d9BP0HSsz83?=
 =?iso-8859-1?Q?nT1ODp1sJtPgIwGIXvAK5su/IH418uWW5A4iK/rD4zd/stgGA4kmrOo96G?=
 =?iso-8859-1?Q?7yAlo1WaNwaB/O3vZ4fEnuVXoPmHEJke4WFfutG4Et4Wj+h+hs5orgrXlV?=
 =?iso-8859-1?Q?8GaYZIaPOVM+cDfNCpnLJUtuq7Jcg0iztUlRuyrfQaedYFHRzZGTH8q/UL?=
 =?iso-8859-1?Q?BK39WHWaG/8j+FJbWALvSb4miYG8EEihU9hFlqRghMVF/mPYKrf+I/SPMQ?=
 =?iso-8859-1?Q?rrqgcwqBanjQBNIEj7fCVpodGyiMEsxouGmhUfHbvYa0/WFBAvZKtpNLTz?=
 =?iso-8859-1?Q?SHDAgqGLOBLG8MCyysBAe6kMgDN8hRdk02M+8PeXXBBrD24B47d05KNBV5?=
 =?iso-8859-1?Q?Ni9iE8RVLVuQW/8btyiSIAqnIK38WYrtwm?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR05MB666089CAC3BA067F6E86816EFD5F2AM0PR05MB6660eurp_"
MIME-Version: 1.0
X-OriginatorOrg: ebryx.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR05MB6660.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fc07cd0-11f7-4df8-32c6-08dc38f5f3af
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Feb 2024 07:13:38.5893
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a38fe56-35ab-4f3c-9e89-04fe0a0074d3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zc6qP3A5ZGxXeUlGO3J6VMugz8g2nBJZGDVW4ldujht9jIgaNyx6+UDkBINrgRIJjjN93+G/6qjTurUnQIJB6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6644
Subject: Re: [oss-security] CVE-2024-22857: Heap Based Buffer overflow in zlog
 library

--_000_AM0PR05MB666089CAC3BA067F6E86816EFD5F2AM0PR05MB6660eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Size of record_name is MAXLEN_PATH(1024) + 1 but file_path may have data up=
to MAXLEN_CFG_LINE(MAXLEN_PATH*4) + 1. So a check was missing in zlog_rule_=
new() while copying the record_name from file_path + 1 which caused the buf=
fer overflow. An attacker can exploit this vulnerability to overwrite the z=
log_record_fn record_func function pointer to get arbitrary code execution.

patch: https://github.com/HardySimpson/zlog/pull/251/commits/77d8af3b368b56=
4605f3ab34ad9b0ed6ead9b380


[https://avatars.githubusercontent.com/u/70605579?s=3D400&v=3D4]<https://gi=
thub.com/HardySimpson/zlog/pull/251/commits/77d8af3b368b564605f3ab34ad9b0ed=
6ead9b380>
CVE-2024-22857: buffer overflow patched by alirazamumtaz =B7 Pull Request #=
251 =B7 HardySimpson/zlog<https://github.com/HardySimpson/zlog/pull/251/com=
mits/77d8af3b368b564605f3ab34ad9b0ed6ead9b380>
Size of record_name is MAXLEN_PATH(1024) + 1 but file_path may have data up=
to MAXLEN_CFG_LINE(MAXLEN_PATH*4) + 1. So a check was missing in zlog_rule_=
new() while copying the record_name from file_p...
github.com

________________________________
From: Solar Designer <solar@openwall.com>
Sent: Wednesday, February 28, 2024 8:04 PM
To: Ali Raza Mumtaz <raza.mumtaz@ebryx.com>
Cc: oss-security@lists.openwall.com <oss-security@lists.openwall.com>; Fara=
n Abdullah <faran.abdullah@ebryx.com>
Subject: Re: [oss-security] CVE-2024-22857: Heap Based Buffer overflow in z=
log library

[You don't often get email from solar@openwall.com. Learn why this is impor=
tant at https://aka.ms/LearnAboutSenderIdentification ]

Hi,

On Wed, Feb 28, 2024 at 09:24:29AM +0000, Ali Raza Mumtaz wrote:
> We have found a vulnerability in zlog that is essentially a heap-based bu=
ffer overflow leading to denial of service and arbitrary code execution.
>
> We have been trying to contact the maintainer of this project for almost =
three months and haven't received any response. Additionally, we have reser=
ved a CVE number with MITRE (CVE-2024-22857) and now we intend to publish i=
t.
>
> We have a working PoC that provides code execution, along with a detailed=
 blog regarding this vulnerability (which, of course, remains unpublished).

Thank you for bringing this to oss-security.  Normally, we expect
postings to include actual vulnerability detail right away, but I
understand the circumstances here are different.

I found that you also brought this up in:

https://github.com/HardySimpson/zlog/issues/250

and I've just posted some comments to there.  It appears that zlog
author Hardy Simpson is currently mostly inactive on GitHub and with the
project - only one contribution in a year (on December 4).  However,
another person was merging pull requests recently, so maybe they can
help, as I am asking in a comment I posted.

Please remember to add the full vulnerability detail in a reply to this
oss-security thread on the same day that the same information is made
public elsewhere (e.g., in a GitHub pull request).

Please also do this soon (e.g., in a couple of weeks from now) even in
case communication with project maintainers doesn't start or fails, so
that distros and users have a chance to know the risk and patch the
issue on their own.

Thanks,

Alexander
CONFIDENTIAL: The contents of this email and any attachments are confidenti=
al and are intended solely for the addressee. Information is legally privil=
eged. This transmission, sent in trust, is for the sole purpose of delivery=
 to the intended recipient. Do not distribute, email, fax, or transfer to t=
hird parties via any mechanism without prior approval of Ebryx. Do not shar=
e any information herein with third parties unless cited from public source=
s.

--_000_AM0PR05MB666089CAC3BA067F6E86816EFD5F2AM0PR05MB6660eurp_--
