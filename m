Received: (qmail 3546 invoked by uid 550); 4 Apr 2024 10:28:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26513 invoked from network); 4 Apr 2024 01:16:16 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fBR7AbwZ/iVqJLVbBhZywjgwriI+ByDXN+u0ncQ1dEJGVzU5teo48SorIYm1jfTS0QbZ+9V42gYrFS+hwujTQ3by0vWL5fWjduJ0nfVDjgjodme2r1mcyxFB2U1X5K5jMvCqDOprLbX+IbTsKyl+me4G8bBcMw22Q1EHeaziJDsWWd1z/cizcgKqzwHbg5eOPdazmwltCvurFP2lxnKTX+jGxlSSVFisV2ZakB4wkdLB7AkvLIdTvTcYruq2/hnQQNirLVEypsXBoPfkz+E7gpI9y0uw9si52k544GaCA3Aew9P3aU0ga/Yg1LhVaaE1mu7BhhsqNftMN8o1Z68GLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8D6MeZwTlxlqyWwpf0bKyLNbVdQLx3pZNeECxvPeFwY=;
 b=kNXts/p+jbOzoooNDVR0YeysVLvHfaMoAm/cIgH8jF+VFnT2wO2z5xdq017UOzDSYbk64ygZ6W+Fjx9Z+S282DfCTX6N9IyjMKTbHNsXZhh/02P+YMxMJ7tzRRtwO1z2PCAEWrsPwnavszz70JL3vPNoK4UOQ3ZD3Q9tYcu0RV+YIL3N0rUle3R6fYdwwrIBrXmmwoGKDIHdwd5aNpuXHypSBomQYmcF8bf8MRYfDEOFuZc4YRZffvlTV/GWNZ6W1Sxf4DkyFkzodVhZ+ACkZYFaZ9ocPrP/cTTPs6W0u5irzKzDs+HRBpZgLtqCNeXYDtfSx+a+XQhd7EkZtM/rtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8D6MeZwTlxlqyWwpf0bKyLNbVdQLx3pZNeECxvPeFwY=;
 b=tzSJIAo+qO+2LuyCUqBINM8rx7p9B2GWycppq9wkuV3Q1op5tiSG61mjk3voMONLlQx4D2TFRc7xKJQVDoL7LLulTN3L+ndX8wyieTGk2Z3ZPM0hvMmiiMkCs0kjEnd4H/fe7m368+q1DXzwVpC3pi8THS7J0PGDnMXkXKbLftcerJz9pXuoNfo5gUmMLPrxXwosk3quP2+sS0aVqSzDW8v8w9eJz2I2frDUd5/Ni9TSsPNqgTW9mN1JrMH3XAJw/kMGz7KRGaLk9m4cfaWuVgcCtQ0iO5V6qFYluSp2saux6aQnhvYUeeagDHtSevJklKSUSDc9QcV2bQps8MBmRg==
From: Markus Klyver <markusklyver@hotmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Just a reminder to never run ldd or strings on untrusted
 binaries 
Thread-Index: AQHahiwdIf1qKQIAqEal7HEsmxs3mg==
Date: Thu, 4 Apr 2024 01:16:07 +0000
Message-ID:
 <DB9P189MB20494D14F78BAC99FB599A5AC33C2@DB9P189MB2049.EURP189.PROD.OUTLOOK.COM>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [psNnGKmx5FwnLncEidCad4GQ5ejy48EFJLoLkN8ikN4uxjJ8gtJM2c+2HpGfRxdq]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9P189MB2049:EE_|PAWP189MB2527:EE_
x-ms-office365-filtering-correlation-id: 8a72420a-c342-462a-15b7-08dc5444ce94
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 1vUTYzDuELy+gij1KnIIwxQAM7qjQa0tVZzu5skeE4x3r5twg8JwS4vEc6hVW5KndUHYnbTb/8JuF2SHBAyXRC4pQpQ7GmwnikZJtUfn1qbET9ZQ5Lmdw58DXQ1y5Z4zEx5+OvlnpSlFd+BgtdNxtk3j775W+ujEq6dO2mJ5itP96h99eSuo7UagKh6MiWNuIbe7etYFRR+ODQuSeao4/zVnVAUx9BUzxPtbB6NeEhim2YYD5BxLnhg0wekguhtc7NaQkm1voNaM33ni+WZ8q3M4QnCS8RluU2UZJwdLPzu65kLtwNFFyr8sSXa0Lc6oTSpolBW7UwJpUQusasne6ISML0Vze03WKV5wgfa6nnKiDFAcB+3h52GkXo3DUG2nPt8/c/UfGMsZ75gB95czneaUIIKHS28ot3bbTWrXJDI5Ys187mRgzHI43nn6+gvXZtAPiLq7uPxmnZ78InR6PaPQ4cQ7ycYg+Hk8T2kGbf1dWAr2b2pyP2KnltR+TKu8CYKQ3WS2UPJJZIztUJ7/Tw3DIWybdlB8GorX89o3UtivrlIRw9D4INsJgsblTOL5I4q64VcuUMgQc8apz8Tyi1872utLcUh+VgoaH80g5qhbfaQ9AWlcV8F8bxmaA1Lr+X716K47kWGslY5WFyvkLVWEoI704UT0yWDfGwGgW+bfE/ySbLC8njRH+CUBKjy7qpFjUyX4G9BrdPGc+x+9C2sJrIMy+KmgQmI5xNpyd14=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?RbKXFb6C6cmeEWAeeoD3+p3ilYUkhMQe66SFat39FjdPKcVUZ7nMk4OkwZ?=
 =?iso-8859-1?Q?5uI043/e95UVsaRftxVQHSKGV78SECmwJWYxSc+S+CCLMTcJLWt6j2Q1ap?=
 =?iso-8859-1?Q?qIuLU8UDOHaQZ07iV5dCZhyxItrZdoim6rlmTLXjeValu/JS6CliOTterB?=
 =?iso-8859-1?Q?X5nt5xivtmK4FfEzGTJ/xLo/BLGkaOCCYZyHIPCMr6OHa+AmpzJ+NkIJNR?=
 =?iso-8859-1?Q?DG2G6WjpL8ntrel8NcZmQSEYYxs0+Fmz6TjzfDd9lxkx7s/IGPRdXWsmir?=
 =?iso-8859-1?Q?bDzc/SxxvO5iJCiyL/+Xv6W6dv8TrmtFTZS3FT3kkp+pVkLvnVqKOGYz2/?=
 =?iso-8859-1?Q?Fu8FTKuYOksEI1LE159NuWTMQPgnczNXLlNyEAbuSdB9lgcs3mvs1tk4yS?=
 =?iso-8859-1?Q?eWYHaDCmpdxILYvgYESrnKodSVnzSLuuf4ZYDe4TN1EvGHXKuQlCbLT0mj?=
 =?iso-8859-1?Q?ov7/WiPT7rnKGqpy+PgD1gS6P7b/kdPKQOAFP90AcGsPqSsBFDM5+HUxhV?=
 =?iso-8859-1?Q?DwLIgeicOtFOayJMCTKJH4j/TAqYjQXtcEkpE3sAQ6X5w7Z5c9o98Eb6WF?=
 =?iso-8859-1?Q?kb8vrFPM8J7OXLu2sQ15eMFlFnNCrqWtO73p2q+XBXwntnbRa6f+/TOQVR?=
 =?iso-8859-1?Q?KTs9Z2qPLTmUKAEKUA8fo+Fnvo1cZd+ns42yXg20VBrjGdTpWwp05viTOj?=
 =?iso-8859-1?Q?a8geNYx7o5P4zLTlhHjhZJVNCQC7Kq7NtzsNFzjVWUMvfxaAEJco+Oqg+z?=
 =?iso-8859-1?Q?RJatcUVLH0GdRSxIvYiVqNCFzc6yO4eHfDLLiIvPxLnn67cvcLmrumuKMx?=
 =?iso-8859-1?Q?EOKYcTIATro8rolfnPShUibgPJN1h9n/O2Hhdv4oWhG0aEz1gkCW5b/zfi?=
 =?iso-8859-1?Q?LYFUci1rPXQsK5aB00s69WQAYBTdrXFoQmmM3MQ9a2VWcSkLXgIaAEJUy0?=
 =?iso-8859-1?Q?ay9IA/+UN8SduMaieeu03Gm00FhoNpy1yAplBuXFGxYry2r4L/LHuIvlno?=
 =?iso-8859-1?Q?2JDyXhRQxHJZx/ZayuUlsXji78zObdWMpcLUjS6DpIyUCPZggsMFcpLslX?=
 =?iso-8859-1?Q?049kQkcyGEXVUQLd+vgjPl2hGQI1REHYSw7Co3tZwxwiDjWATF6NI4yF5P?=
 =?iso-8859-1?Q?mFchAvLPdIfSDS2yHBISq0GXTfBpfPr3TFHv/1npgr7cRGZ9xUeITCJ2w4?=
 =?iso-8859-1?Q?flJCGLurh288HcJSCDjKf5HQQns+bzS5Ep/Mu/mGIZq4Zy3lVODDZysB9b?=
 =?iso-8859-1?Q?VmY1Ee/zZoAV4JeQ4Bq9PGy+8ti9F9r5ZSMNNNhNLjEMkpzAIXH4eW7Bay?=
 =?iso-8859-1?Q?YQl68hadg1LFTZ4fncjOO+nGTcAm0T14ObJoQj1KNV9VSlg=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DB9P189MB20494D14F78BAC99FB599A5AC33C2DB9P189MB2049EURP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4734-24-msonline-outlook-c54b5.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9P189MB2049.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a72420a-c342-462a-15b7-08dc5444ce94
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2024 01:16:07.9966
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWP189MB2527
Subject: [oss-security] Just a reminder to never run ldd or strings on untrusted binaries 

--_000_DB9P189MB20494D14F78BAC99FB599A5AC33C2DB9P189MB2049EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm not sure if people are aware of the fact that ldd can run the executabl=
e under certain circumstances. Also running strings on a malicious file can=
 be a bad idea:

https://jmmv.dev/2023/07/ldd-untrusted-binaries.html

https://lcamtuf.blogspot.com/2014/10/psa-dont-run-strings-on-untrusted-file=
s.html

This advice would extend to other common tools as well, like objdump and re=
adelf.

Markus

--_000_DB9P189MB20494D14F78BAC99FB599A5AC33C2DB9P189MB2049EURP_--
