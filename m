Received: (qmail 30640 invoked by uid 550); 6 Jan 2026 02:48:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1751 invoked from network); 6 Jan 2026 02:17:21 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e7HyAfUzLJGhnjwquBPp2AyzruXcLwj0UKU15TZqojENJ3D3SRcP1L653BWcH9YkMgTmcSRsnlHO0YV9oTGzCQKkMBqoNZjMqA0nRjUZxk/wmPVap75g1I7D0fpYuYdYboAdneG6oFFkOMpg42Q1ZN9v6b69hJZV7SUCFksTeVq+6Qi4jQLr19ZGm1KMsqHlfz6PZwNQqjciyy6nO/0Xf0JIoP6bJKGvd77jvb8WPNW3GtOw4uF6Tazk2eNvBqdtC7jVed6JiKVUdOgPQE5bL1ea0lB5RUsBMQoYYJhUA/FIvykYsL0SFQ6bJq+ix1y+oYoLxJAZ8FzRiyazQ7PRuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7P5YrOf6+UcAqz871tMHLvSGGA6hQdvszyGlDGBvTwM=;
 b=c1lUcBtfxrpFAkbFLxeBL5Lo/zc2hErxftcVbc9UiPQjPZ01/YlQPPripW3p5pD+qTDC9fWLprWmPxur1jpD1yj/A1bP/NcP8aKI8kS/HLlnw8H7lKPcQDeemPKm3To++vORgI7ECvOKgfgA+wib9lTMK/FBqpZqRAqdufm1G8jVvgq6JRUY3qsGYA1k3120cHCKulvxT5JcuN+evZvkH07W/BG7rLZXc14zF99794Io4wE/Z2c2hUiE7mhifpU3hxJtPD/1mv6UdWiCCY1/cv5l4tcQ2AZcGH7N0CR5j8+jesBDKJFYIODi4Vc2YjmrA/p16Tp+JIqfaJvh81z4jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7P5YrOf6+UcAqz871tMHLvSGGA6hQdvszyGlDGBvTwM=;
 b=G2LLnGqIJ+Fx0eAl/Pm3XrSJQmP1Cr7yf9WcLUyofeP8ytZrfVdzM64vleNZWZjdr0QUTMXnQ6/fFIDQvEJ9S/f52pT6nb83KAIRR+kxwoPmd1fu4oxduOXHGLEQev8T9ekQBcmKkJXzxjz4YWyujc3YuGmNdLAkcb+scgmlYcKF8f/0wmT5iL1Isqt19K+qYleK6dQOwAA9T2/7WKkxP+lJqtxMwL5iaj3280ad7fOVc7W5Doe+KHC4V/2f+CFZWU8ruNa6Yv4niLy1D5Ai4zX+XstnCbYPGb9eD6iyCtprurZ7mt+VOCaB9ivHSlVHzcbkxAWKKU/BHfSvppf/Kg==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Buffer overflow in /bin/su from UNIX v4
Thread-Index: AQHcfmnbLqu2m/gp/06xCT2avPKFSLVEZ4ZG
Date: Tue, 6 Jan 2026 02:17:08 +0000
Message-ID:
 <ME2PR01MB365000DA73FDB83E1F5F5E5CEE87A@ME2PR01MB3650.ausprd01.prod.outlook.com>
References: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com>
In-Reply-To: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME2PR01MB3650:EE_|ME3PR01MB6689:EE_
x-ms-office365-filtering-correlation-id: 1fbb381d-314c-40c8-b2e2-08de4cc9b18d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|376014|10070799003|366016|786006|38070700021|7142099003;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?O8mZoVB0g3eGNNDNL4q2fV3/qC6Zt9gRCuDqyTIEKnBtpbnjuKWGluhxHD?=
 =?iso-8859-1?Q?I21IqcObYiWnY/MhBiqUc5QPUHVwJJSUlwOq8iToeeBnFYrRnGjxXx+l/N?=
 =?iso-8859-1?Q?cXW9Pm95J9RbzmZ6uNH6RUGh87q43nKLkvepfne02CLr1DGqIpBZico5j/?=
 =?iso-8859-1?Q?cPwCGp4Vl84VG3WBNFbLYs/qpBKMTSzVNCrzrHeA4gXeveYBDvnnJ6KUS3?=
 =?iso-8859-1?Q?agcLkfMmPgkn4bNtSB/ctxOobjejpoFUEnoczfDyW9Fr58Rdpnvfg4FkUr?=
 =?iso-8859-1?Q?qeWmS6XGFd1ny6AtMwCZfQNHbh4JPoE8f3Yzlrzeq3h52PTmN/sgukJ2i5?=
 =?iso-8859-1?Q?6S1HDRDiILv7ZjWb7a1p3R+r6LA24L00J3HyrXV6VFd7T5xL6ZC6wijJWc?=
 =?iso-8859-1?Q?WDNMe3ocqOcqeSNb6WmE9MyJfTon4RH1NP0+kHy6iLC1pJrO25QE68Kb9O?=
 =?iso-8859-1?Q?4eNcNroAgzNme+MFPJY/fkuSKKIzuXgQrYEi8B38xDS9/ZB/QBHc5+95Ht?=
 =?iso-8859-1?Q?p/Gdvw+h/bcLuBS6beIBobSxr6XlJSsgHhkg1sNyCZOZM8xWncJ1l5qzGh?=
 =?iso-8859-1?Q?mb21gx0L11BnrVm6AUGC5TtXlmjGiKFVMVdNUnGJPhKn/ui5e79xgvlecj?=
 =?iso-8859-1?Q?/OPLShf6hLBZ0FCj3A/oBsvJHPSrpd4XOESXwdaK/f6JFuR5rQYTbUseMQ?=
 =?iso-8859-1?Q?iQmawWcePe+72mEXOXemZHBgLf7rZH1B3uUjiiqtrau3iOyJ0ExYxw9HBV?=
 =?iso-8859-1?Q?O01R/dtv6Si5M79aiVDB6LtG2/kPvX0q84hGyICfPKsLOGKdoqmTtZG6d8?=
 =?iso-8859-1?Q?VM/Nen5PsusqZ/wX68nnGvCloquQrgXC5eXW5Lmg0l455xMyCa05JmZCHi?=
 =?iso-8859-1?Q?rYAFhLnEpXmLje2ZAV0KoyoI/VDi/6kVgpq31mk+fdvodxcAC2hBd1673d?=
 =?iso-8859-1?Q?lJDD1y8k0gubvkJ4a7I3ioKiEzFBTAPbpDqxRV0+49wnQf+BMTcgvSqfrg?=
 =?iso-8859-1?Q?yVwDnKGeeNXlaDYWBE4XYMwHBt0+8hm9l/xLrc7OOm3NpH6HCvRo6xSXnk?=
 =?iso-8859-1?Q?piiRHxL18qoJ4uSIhVF/cnRcEcLUMII/+OfrgefbNoMnjcvmfMJuv9g1Nx?=
 =?iso-8859-1?Q?ZPztoKmXtSGdnRZxw73rq8uqTqx8P/90PytC/Thgc2vEp6aDSJbtwQRpNu?=
 =?iso-8859-1?Q?6BGSg5cuvjTUbEM++4Rlqqb8bbdDZPj7iprbRm5zYIoTaMZenJGqQAXxWw?=
 =?iso-8859-1?Q?MOWg9N5cwW8RqkzwzoZ47W7v0dnleg2CpUhXBoRHxlWoJXHyi+t5OCYiP3?=
 =?iso-8859-1?Q?+lCWzOi8Nao2CY9dQ9SRiWLbY/QfJNSODM9mphW6Y83r7Tpm74OWF6ChGE?=
 =?iso-8859-1?Q?ybODKhd7njH+zjM4SyODfGqwc/P9gy3xT6SdxXd4fsUapVLpjT+DyD/Nwu?=
 =?iso-8859-1?Q?ORH01G8p0nbmbqUICZWj0TsDw8ZsHCWtlLMHEq1LQBtE8g8ECrEJBiDL5g?=
 =?iso-8859-1?Q?/umOjCLANCLL76F15sQu4LC0ZziAW9KoQVP7+c4gU9ug=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME2PR01MB3650.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(786006)(38070700021)(7142099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?yBIterQfD0aU/p59RFfaEW1ulBzJCn4RL7eKjc0UIOdcpSXYhh/0nYynux?=
 =?iso-8859-1?Q?IqmG6dYIznWeFY8TKOv1up3xqw9pEskM7nBZT4wDLg9WIThIzoRGZp2NWw?=
 =?iso-8859-1?Q?r1c4mL+zLGMPODzFUcfsO4gbXrib666sqNQDfKHh/zh+u3onZNjE6Sq99N?=
 =?iso-8859-1?Q?hQSilT9MW3nqsz6a/ICAEOfLOGftYo2UqXNoVymgyNrJAXJhcPz4z3msBi?=
 =?iso-8859-1?Q?uGXT7f6eF0LTlv3P8lBz4xxJF+UJUNHgszf3w/vyqwTMuh6tqeilGEhtro?=
 =?iso-8859-1?Q?kxv/qeKKifaaHx9xOR/k2tF/OoItreiNARpUkLcjR29bCDO0YNzTwCzyLR?=
 =?iso-8859-1?Q?RyZ1Bv3Qj5yZvbQArUkO/X7Q2+PH5wsSaRucKFAcZqxJRPTAOnKZ7t7wT4?=
 =?iso-8859-1?Q?LOg1YpgVEFQaL/WMuOhWBh1Du+bOSNzFnQ1T7xrU3AeQMPfjx1m82ZMYZj?=
 =?iso-8859-1?Q?JWPuSEuAQYsUvl45KcWC6eVgIC0VOgSrgZZw/Vis6pLyKKEs79muqKouoC?=
 =?iso-8859-1?Q?rYMifkh+FvU6xB6muMAtjbbGSKTJ6IVoCrx52bX0vAHAwd15HSWXMkt7Kq?=
 =?iso-8859-1?Q?4kLfs8JtMZFce4kvvmvv27Ys2EdfATmDgtM4CiRlCDh+ki0sv46XyCuO9B?=
 =?iso-8859-1?Q?SMUK4S4jOP6zrwRjLuFSsVlWp9sWb1BD8VG5Y36HNwGglp8RER51BvYwet?=
 =?iso-8859-1?Q?vOk+VW76WLi8Ok8wQ0fDvbZZvOy0iz6iz36fUIVX0z3OOA5AEnrqPK6fdl?=
 =?iso-8859-1?Q?abSQwb9f1tJpaHZ7eLRlVD1p0wG7s2WllozDkjCMqGvNlmQIizhAdZKTnA?=
 =?iso-8859-1?Q?uTWWQ4bCUNQGTHZuIvDRVAqVVflVq6l5ftodpkjdmqUqa2O9GeWkYTYx7k?=
 =?iso-8859-1?Q?7MUOJf7XyyY4hZaFHkSffeCglzzWcM56Q3057gVwUpKW9IgUL3hgrSji6S?=
 =?iso-8859-1?Q?/3SEaDCNRhnkjUYqTjxB2l5sbL2o8BdqQvQQvws+HP1uVv3gViBBsWpmWa?=
 =?iso-8859-1?Q?ko00Ox2G+Z1b7ZvIrH1oinsaswzx8zwSrRFjFyymsY29E8w5SrlYdcsi9i?=
 =?iso-8859-1?Q?Gg0PtH3TI0O31jOXX1TQ4+w0bv3yA1ALuW4BOq/E4aKZgg0YupZ8Qp1IX5?=
 =?iso-8859-1?Q?wxaQB+SofT/k3x/mpAlNuySsrXhh5EM9rHOFp0txpqz/3hMhMk8eZownzo?=
 =?iso-8859-1?Q?36sJfQKLJeCz7jp6wkSOdX0MHKpIvubvmPfJ+C+c6DzJ0mWpx0popAY/37?=
 =?iso-8859-1?Q?6kTctm4NuIQV8xBlyW0w8yyFb7u7WZphb8FXCBIeHtskD6asGd+9Du/RTT?=
 =?iso-8859-1?Q?esesGqfCfNWtSDjixPZWgy9x5ZQHZe1sHpC1uLJc9lcOtFsQcy7UPbrxCl?=
 =?iso-8859-1?Q?8oNTiF9wQl4lPCSu4u2N60+kU9xmam/Sj6RrsE5T7v1SBF9ftwM3fy+oEC?=
 =?iso-8859-1?Q?QvmS8EgE55yaRztbOj+P0qdXweMTUbbKxCaFBy1j1M3W3NMkjeBR1EbMlV?=
 =?iso-8859-1?Q?S4VodS0rKXP/jMrgxTHZjKjzw5kh/UsBmBSNhQvh9dBkhftoaraAz/np4k?=
 =?iso-8859-1?Q?iv7KOsfkIQ4zcRRp9sAacvbcjK/VpoGe3RFhqazBcSxmDJpbpmeWdTNlo3?=
 =?iso-8859-1?Q?7qZO3B/9jexkXS5yw0K+t18Jb8vXTxBrS5FTJYQTK07vY8Hl/yOcjaFXVO?=
 =?iso-8859-1?Q?9x54T+K7rOIIUvGu+bj1YWxVFFCpd1Gh62wI4oVjf7H4ZWf1s/11iWPR91?=
 =?iso-8859-1?Q?SeoRcHRQJw1yEmRVcSOXxY9uIe9hWxrojrQYpvNnlRK3O4ad2nLRLaMpSU?=
 =?iso-8859-1?Q?91xlv0iepzmyS0/J007ISkiQADA9bplBlP8QbJnOket3jgWStSnFU4aCC3?=
 =?iso-8859-1?Q?mr?=
x-ms-exchange-antispam-messagedata-1: 8cl40y6lmRRc8w==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME2PR01MB3650.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fbb381d-314c-40c8-b2e2-08de4cc9b18d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 02:17:08.3688
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uVi2TBFHxmKJn6WQ3euMr+p4uFi5bBwZ8y36sXZqHPTCXYDuLSbNzwmZ1BUtNDNuQMTLGMqA1YHKdp6xVVkTR2V3a/u0KIen7b7AHON5SH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3PR01MB6689
Subject: Re: [oss-security] Buffer overflow in /bin/su from UNIX v4

Alan Coopersmith <alan.coopersmith@oracle.com> writes:

>https://sigma-star.at/blog/2025/12/unix-v4-buffer-overflow/ examines the
>source code for su.c and shows that the buffer for password input is a sim=
ple
>100 character array, but the loop to read password input has no boundary
>checks and will happily keep writing long past the end of the buffer.

It's also being discussed over on the Metzdowd cryptography list, including
people providing interesting historical perspectives.  The thread starts he=
re:

https://www.metzdowd.com/pipermail/cryptography/2026-January/039215.html

Not all messages are present in the archive yet.

Peter.=
