Received: (qmail 3452 invoked by uid 550); 22 Mar 2026 03:34:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26341 invoked from network); 22 Mar 2026 03:24:13 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gYnnGfVv3qEqd7OH2ujwVMU7WmDE/l0Yp7y59kOk3s8JDdpnWqYjyJSu1UOJpME4r8H2LSyYtyC6uMzU49ZUKUZtkQo0WpFG8wjq2k9MyDHvq/sT822j+oupqcva80MQ6FCDmIIZnJlOVG/5CHIr+hroKYRygYEWncFQzOfyg0rsvVZLlP7QPgCHZARAlFTwFF84g5gMpSWfejaeyiKh2B5W8M3y/yTCkP/ICKp+kmm4TXSTXAv3cz4t75Zk5wIg0AqIpZLJnfMC5ZmBS+odtnQUNYeN4mp897t6q8vQWWPpmDj9QpVAOt7g0IVQNNFXf/trqZRWcoqxOiY/gy3vLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GDieEO5Q1fk8AJdmcSiQzgTHCsCQa83QPj4viUNDumE=;
 b=O0t1LI7LyyNh0luJsENpZbBMwDq4MADHnva7c1t1Zhyby38k9b1aSOWF/VkMbtvluBtYKtExmYzHQQzSryRCL7fr115BxwTgoR3ZZ2xHva+JOoJfnsW+bzXLi9TUCwjuiAlOxcdsBEYnD2M+1sNXQC8MvhSQubKeZ4chEq4WWUe3wASj9dL3bDxXTI6kLo3EJayVy2F4bMswTCNg4ll/oXZ6TLitKKfeat8B7lvzGNy1MTP9sMVFFv/7zdG5vKlMiu964JboMIfrpIllKWP74p+cdb3p9lByNlZH9mrtR+53X9yCvHG2phWJv8F9TteWAXYm+LOU+yeG2OQ/Y+2OJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GDieEO5Q1fk8AJdmcSiQzgTHCsCQa83QPj4viUNDumE=;
 b=dIjnI+W+0PEmLcJcTwofO7zg47GmwmDdLyKhr7WAyzFEOt9YBKW8diImCgJBxuTOIm6B6rm4nkMEi675yCzOj6Wn0tA3/iiwiWyKpRn24vf+b1eJ2t91HDwPck5z1MJIO25HmpoEwTTr+QODK1k/yKHKYN6jj0TjbTmzO8J8wV89n3uk8g0NCiukSYu5wQ5gBCZoTA42h1gbcDGDyGGquZ4qoWy5i3l3EHD5bOQSW5VpnTaGDT6TPSbxGeW/NtsnPk1GbcZiYiWhuVqWPGWNVzdXdsS55txyc1o+rvFKxomqEPYlHcCxIp8I7URFI9Pk9J2IEqSP807YLPWhTruG2g==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Buffer overflow in /bin/su from UNIX v4
Thread-Index: AQHcfmnbLqu2m/gp/06xCT2avPKFSLW4iWyAgAEsdbCAAAZsgIAAmzmi
Date: Sun, 22 Mar 2026 03:23:59 +0000
Message-ID:
 <MEAPR01MB36548B10EF4F62022D6D91A7EE4AA@MEAPR01MB3654.ausprd01.prod.outlook.com>
References: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com>
 <37aacb54-8bcf-4b7e-a747-6ff3ec8143c5@oracle.com>
 <031BCE73-BDEB-4D18-9EFD-8F3180E8527D.1@smtp-inbound1.duck.com>
 <EEDF7B9C-89E2-4544-A33D-DBF2B0FED6E0.1@smtp-inbound1.duck.com>
 <20260321180013.GA20708@openwall.com>
In-Reply-To: <20260321180013.GA20708@openwall.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MEAPR01MB3654:EE_|SYBPR01MB6986:EE_
x-ms-office365-filtering-correlation-id: 5cc01f87-a97c-4175-c84c-08de87c27513
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|786006|10070799003|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info:
 M2083e6rOKZUQuEXeSZI/gFIHY+HRRLotPqt5QZeL7TO97bNXqx/mzcIRVLT4Ns1mfeOyooS+z04PZnkV8eRKdEp3nJEf7SwlT1B/s/5xwqXe1FPJ0y254pkaoRnwYBGq6yw4DKaTTZFTgh0uAROPeSQHwt1U5EnonI1sl6gEJFnknn05MQmG3K4aiJaQnSwAr0CvSUWn8veU6/CsngVPiJ7uU7B4GQn8BPHw1htdA2W7Ls8ckXr5ek/POwXJ9nVmXWN7zCPjdHyKTom7a76FcG2YQF+H804OO3WPsXKHhyUiMwfhXwLI0LtnlFkHr16sh/ZKsLCIijvOQZ810FVNhbCootbjTbKtLMbkPHqEuebfRPkyCPwEg5k1xh9XrekipGlPZ1CXv1oXaLjYvvyyEZgwpvDntrj29dPP++SkxRtascdlHlJn9GM9ZQsDskTnn0eS0rX6MNI6uwFJHoW7rvPLrWsXD9NrM2alJ6emcYa4QDR8a4HEUjPoTkSlofJoBp1ZInU4aJSU5JYCgptLrc0anGtmxy3V4ogjRF3/VTd/36rUB+jD277HDYrbpQWe6pFdzw4FgApEvHg1W5dkvC1/k5EhF/+CrezycfJWTGNa9jknbL3au/xRHtFq6f2xgPdt/Kwp0uq9RfQJyN3CXTRuzPOW5+9yop1HziI79mvQ5KdCo7OuCrfLfmmS55dK7DLZj5ElojR/5EWXlb/hMhZi1EqtId3S/6ceenNb22aBQclZ0PE895cU9yfXKQzpK8F8oc5T1gxS4bqmKnGuKu3Fr4VoHaj4u4uDZZj1nA=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MEAPR01MB3654.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(786006)(10070799003)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?PzZrzX5Lu/moXVXOk14XfMxwhtg/EBSToY9M7Szs44JS9A/Gb7Z1FE7MuB?=
 =?iso-8859-1?Q?0OdgeCDDfQKv3VOFHvGjnOtiE1bbXJf1vtlYg6xNf8jv8G28ezgLBSKe/S?=
 =?iso-8859-1?Q?RcHrSVCTQ0DlV1rdUDp3UgbQ1sxf95fVu7P2RXkK9MSjIfQ7DKXhLq66Yp?=
 =?iso-8859-1?Q?iXaUGWgB5fYWW/RbPfpmEXIeHdTDzjTQbBZhdTTmf87yOXFz83Ft3I5rtT?=
 =?iso-8859-1?Q?HFE77OaX/rCO/6hhNHbYRVPV9/u9+/lzJdsIuh0SqyFkfTFxK8WG/jM8mA?=
 =?iso-8859-1?Q?qFe8mk6rDfR3kvFcRy6aW6aTVCQ/nEFmQZ9bod4DZCJ4pDv2L2wmO0Bp3P?=
 =?iso-8859-1?Q?00wa0riix+RRZy+tzAa0kKbdDQwIC2z3Qqte05r7K1Y+ZdyXy70bmif8ny?=
 =?iso-8859-1?Q?FNdhmqYtqJ9R2Pf8lG/Y8dBXcLRJOm2l2tPDwt+9W50SR9LSkzJGbikVRH?=
 =?iso-8859-1?Q?xr3pK5gt5Th4f3+kZUDZhwjrzpB9xl9BHNosNG+73FsOR1wjsy3gMqAIjY?=
 =?iso-8859-1?Q?xkgfeYr+0IaaI7MyJXXHVk/776lREG5L64uZk4F9NJOlHaywYLhbKu4U+x?=
 =?iso-8859-1?Q?OYA+vOKzBsmTP2HN3tftkGh2UdPAbA7WJLAt/lmdanhDGeisoWIbw6t4Ac?=
 =?iso-8859-1?Q?Hv2krPCHOaLIpaCSGXpeAy2LLvxHVawdRNOr+BprcPkqvj03UhAvb7XglT?=
 =?iso-8859-1?Q?0Ux2HKKBnaril09fnIFte+UoQhX8+4KQeHdkZNbOs8gyY+BThy2o3ajoQ5?=
 =?iso-8859-1?Q?75VvBZGKtS/sHq8yBCnGr65aPaVssABf+LAQuPxwZNtzhZ/oncijbsJDp1?=
 =?iso-8859-1?Q?HghvPQizvaYjwYTC9IVnTSWw4NlBvQYPnlU0LzO5bfyuuBRHc5vWQHf5PK?=
 =?iso-8859-1?Q?r3WKo+MvxK2+yQC5Kf+C3i01semS4paAsF/pcTzuhQlYdVS1ahQZZvOPSS?=
 =?iso-8859-1?Q?k9g01x4O8C6I9XJnHAejn8lKu+W7otDhMZWaM9LTMaoA7m91i5HZF9kdsz?=
 =?iso-8859-1?Q?FbRPHRPJDjEi+/DTOwScK+TZiVHrUketx5x++4omK9ZqI8DR8t3YEij/Xv?=
 =?iso-8859-1?Q?mpoWnMCopRd5FWwoRqus6TbMIii6/xE5z15qqOWJkN0i3IE/Q12bl7nhCj?=
 =?iso-8859-1?Q?uwtBZdICrJ9vGqSK6wqATbA2alsZiEEHaxAIObvUn0ghMvJY1vzvkVDuUs?=
 =?iso-8859-1?Q?c2CKfxJukmKwlJBid0r1CFbgiD6qNu4NUnUS6QqDlKuJuMMP6GTcqsHcDb?=
 =?iso-8859-1?Q?sP+Gw8+LZ9i/yWWsB4dAfgVudJgSXpFgJxAL7qs8bu6HRBOWwBrC0U8nx6?=
 =?iso-8859-1?Q?FoQ6WHK4nZNH4SBe+0TVbBBa4y4oSOL1zAM3qts2E5pIu1ay+boIfca2I4?=
 =?iso-8859-1?Q?2cBCYpOFPD4OYa1pPee4M0jaSt0/+HT1xtTSFE3C/7OUL3V7eozxxR0Rk/?=
 =?iso-8859-1?Q?wn40f6w0iXmoWIoiFoO8XYbk1EZbv/VlSYhTqyWq1USPk1DXfAfRIeQcV4?=
 =?iso-8859-1?Q?cYLneZxaa0A4Ttct1DQ6Nc3TCRRx+LARmCoSc7NcM2r0TlaE3u6esxqrEL?=
 =?iso-8859-1?Q?Agkw0T/8ekSHy8NAqjHb1eObfzLR3ZMaSCJo57lPPezHvaDinYl8iU4v/c?=
 =?iso-8859-1?Q?kmh2jyvqB+bXjb0tJMJQpmDWW7CwCc8K/IV2d2r2nWuvw7hqT9ZN9t7vMV?=
 =?iso-8859-1?Q?1i5wdWeFDlEwB8b/OEq9N/+IXb2D0PrO1LKopCPT4+LFZaNkMcR5kaLq0p?=
 =?iso-8859-1?Q?N7qJcrQN2pT1HY7LMGVj/fNnOiwfs75d/vEolGTWJwMGCEbBFJ7tarKbyV?=
 =?iso-8859-1?Q?yZk55xq5iXWEyLZsLz2ddaNLYrahJ4kMSuud9SsYHdeU6HG5MyfNLiiVVa?=
 =?iso-8859-1?Q?xz?=
x-ms-exchange-antispam-messagedata-1: 8eq82vNJeXH0/Q==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MEAPR01MB3654.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cc01f87-a97c-4175-c84c-08de87c27513
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2026 03:23:59.0393
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZTa4GT3ovPUjAecGVE2rNgSp/I/S6m3RHllG1tOemArhE9c16qC04a9DjLcZH4UJo0lX/o9tjXk3rrkIrrk8+am72TKmvpswvABkaQMNtIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SYBPR01MB6986
Subject: Re: [oss-security] Buffer overflow in /bin/su from UNIX v4

Solar Designer <solar@openwall.com> writes:

>I guess because (ir)relevance isn't among criteria for (not) assigning a C=
VE,
>and because there may be value in having a non-ambiguous way to refer to
>historical vulnerabilities for illustration of how the current ones fit in
>historical context.

... and because it was a bit of fun.  Not everything has to be serious, it =
was
nice to see the CISA folks have a sense of humour :-).

>The 2025 in this CVE is almost certainly wrong, but I understand that no o=
ne
>had the resources to figure out the year it was first discovered.

They were unable to assign a 1973 CVE so used 2025, the year it was
(re-)discovered, instead.

Peter.=
