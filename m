Received: (qmail 18227 invoked by uid 550); 13 Mar 2025 21:15:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22071 invoked from network); 13 Mar 2025 20:50:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	s2048-2021-q4; bh=1Z6Njqf+QbkRE0NOeBtpGTN959k84w60RaSN9ORLlS0=; b=
	BoEPtpTgkZQoVS2AadpSTf4oggPhbS+qNnDwvK3wmEgmO+0JhUfTcLHYyLo3ARBJ
	YH94rJmmeyzm26uwh54Le2jW28Iwnoy/fquiweJvbVJkkm+t8oEq1xEtmQJNrZ8w
	FFF4+Su20icbM6euNuJuS2vHWOoNrIkcQ7Tz9FKloWxPXy4JSfKv3ZG/B0kcqktX
	0IhJh7cyaEVdwFTcEyLzHxom1vz4ZoAlHxfLk2Z65Di6cOq+gTmjmAHTd8X70e9d
	J6YzcE/aKrfj1m02rtOa9YptgbLeJeVTn+YHmofSWktncITCIYXpIowznxQjUWv3
	1rTAlUMP3gCPe9/gnEJ3iA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=svz+A7NQc+Huq5O84XYVavm9co6HLcWvtdDT5q5ka3Wpe86iSjhp6MJ+KLru8XLnG3vVbw4L8ppeZkpqOC2DJrQxjiLnegXQOOpSasEwvuA0lQa8Uqty8SO8Bewus0pynCNhKdEw4nDoLYSjo/wBkrHD7+6m1mq2nhOV5YU7w7TqAf41k24izTyKpMEF5sUqMaB5wXCzGWYchDci2Z798Sl9iM8/+feXMbvpCydsBw3BrokGcoqqpGySZ8C1RpvQUKdzFUVdVz4aWrN3Psqs14n5a7FLvu6rsYy6MHC95jorQnreykl5eiosYvzg33DweE6LMaP2CS2S6oSJvLaksg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Z6Njqf+QbkRE0NOeBtpGTN959k84w60RaSN9ORLlS0=;
 b=nveRMotNwdGrGDZBo8rvlifrUrWrd9g3vxj0+yag6NmQMFT/JA5hFj/Q8Zf6bHsYzOXEDVxyNTwceDj05YTQ/sW9z7AalpSnmHBCen+2IqZEDqTccivoNUz9keuepiRH/LZIA+ZWJlPiMbEsifngDptZbkqaXRvVCego6dm4hkyJDDThKkIO/VVxINcUUiQjSSXwAzEwS5wP8tlE0GLm0j5tXmGuXh+tkFQZLUHMhKR1tnv7pNBG1TSR7XSmdlhPgep+4QipcRjzyQeLOJz3BojeAegQiVz6PiW+PX9/PpEBPi5luARFObGnEUygmVv4Tp0QKVEWqO3WkikAExjn0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=meta.com; dmarc=pass action=none header.from=meta.com;
 dkim=pass header.d=meta.com; arc=none
From: Vulnerability Disclosure <vulns@meta.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2025-27363: out of bounds write in FreeType <=  2.13.0
Thread-Index: AQHblFF0Eo/MpUjwc0mh/AEdo9C4mQ==
Date: Thu, 13 Mar 2025 20:50:19 +0000
Message-ID:
 <SA1PR15MB4840CBCB4D36E36C85723862DAD32@SA1PR15MB4840.namprd15.prod.outlook.com>
In-Reply-To: <ca277a69-a5a2-44c6-89fa-d04ae9da33ec@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR15MB4840:EE_|BY3PR15MB4946:EE_
x-ms-office365-filtering-correlation-id: e6f7fad1-f426-42e7-ac21-08dd6270aaaa
x-fb-source: Internal
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|13003099007|8096899003|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?dNsDsEKNp2iTVIOsHuj5aOwsNANpBmnXZO+WK8twuNjN3jM0HLnb3JrkW+?=
 =?iso-8859-1?Q?qLydcaNnJMFb9a7EaR/Egg7Z/LZc7V2kDXuuxJnBofOSH3CLQoPaX+QLwl?=
 =?iso-8859-1?Q?TKQ9Sd0GE54WqH9WO8t+80sHdAniMYK+Uo0WVxgOIrFUcJ9ETO++DbYtAG?=
 =?iso-8859-1?Q?yxgU47/rgkNdNrU23Vm28UUDqCI8NF53ud28RgFkZdubKCYUpv+ideUunj?=
 =?iso-8859-1?Q?1vR31kZfiVk1XEhanvBGSoMaDRfZqrJ/XZC2Vc43i9zhiRVMhS7xLKPLFe?=
 =?iso-8859-1?Q?952IDPxOh4A5YqDzBA9pP6Xjy6f3RBN0aQkv9HWCkd+8RWHzXpIgnE/goS?=
 =?iso-8859-1?Q?HNfMlLmQH2zvxmq6zajqJ/aodLZ8rNCHjyitUUqXZLYAo3qjpv/IQnlVwR?=
 =?iso-8859-1?Q?t0fqpFFtc6ZFixh5YFUzj3fG5CNFizQBn6NKiPxo7ZxTn118e/3YD7p6E/?=
 =?iso-8859-1?Q?asZdZjCIK6y1Y1reGwd3mvDs5KCBOLaiEwXsRpJRmJxv+BMXVyaYBZ3Srq?=
 =?iso-8859-1?Q?ShcGFRhiyI7XP0N5u7WzjOxQtSX2uq61i2cIqPs99nW+ZXdaZTyikKO++s?=
 =?iso-8859-1?Q?3amDe/6ZPiI6h6MDaq0fqPfqb4hLw2LuDzYqXLfStjiWQs0gVLo5p+Kyfm?=
 =?iso-8859-1?Q?wGJedcI8HQm9LpRvwM6g0gyQrTc/RlM+qO/9b68uojE7s6JzqEkyuNcALH?=
 =?iso-8859-1?Q?LZewFamWfLsy0aTVKpgDJYY+/jo7jJhoftVAd5mAwOTWeiOt7W5xUvtGlM?=
 =?iso-8859-1?Q?Ox2Z8xi17ozQjg3OHXxdGXORECZRPjc+Ro7PDO7vevoDkEGXG/Yee1mg8+?=
 =?iso-8859-1?Q?hLXkfTcG/vgbX/PHcjKhd5t4KG21Cyty6O0EhSxPrOzNyQ2y9R43//Gz33?=
 =?iso-8859-1?Q?hj9wLGhUL5GEMmxkqmp/IBvW7mH9DCXIJk4Nu1rXkPmvtCFnkKH8cHDJ1U?=
 =?iso-8859-1?Q?3ZqFoo2vdvo5Ah/S68E3ImiowXfhpHFxQsW3d4e2//ZM5F8Lj8E5qiZSzc?=
 =?iso-8859-1?Q?H/IB8a6tQ8V5AbUvwUK1EdTBEPMrChcwb5qOfU49AZtpCeUuluApsajDa3?=
 =?iso-8859-1?Q?o97sqcSFBvMV4e/Bfp5jee8lSHO6VxeTsUani3SlBPVIMaChjeRADaYNoe?=
 =?iso-8859-1?Q?NUTFqPQdE/zXrSUlFd5dzFl4ZbVQvhjDkHXMjPYyqjpEzjBpLH0LTaIkUt?=
 =?iso-8859-1?Q?IO5hZRylD615N+lEk4Iwcv7DgdP7mI0PrbLf18BCdV5a45yzqM2yagJpyp?=
 =?iso-8859-1?Q?z6FGbF3OYeCCS6yhd5LODjmDNtvXoSoVWIHQ+2/dgutBptEcXYtshH+9hg?=
 =?iso-8859-1?Q?y1pXzCkgX0cl3TqhMnLXP8bhS34heBBgI+TzJQ1Y1aTvj3z9JjNb9kKuAn?=
 =?iso-8859-1?Q?so9aPVpmwEkvWxjFTmjBd/k9P3PWoEpuZzIsgEK3nK/FD2JwRE0g0eoW0G?=
 =?iso-8859-1?Q?2pp/bYWGi5TFTGJU?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR15MB4840.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(13003099007)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?FTV5bo+2YQV3IkXVgF1msMsT2edcVIEhelo82wx2Lt8Vm9fxqbl6yLR/Hy?=
 =?iso-8859-1?Q?BBb0wV2noJ3QSDK2yh6JQ5GeH5C0lOh/1WUJZff5dbuXhCuPwGOVPRfJrc?=
 =?iso-8859-1?Q?+wJ3XQ1u4k/ZzhnkzROkOWsHrjN0EnKn3LEDUnqOsg8hQxndCQYcnYlcVb?=
 =?iso-8859-1?Q?cp5IWnE5d7qmvkesU2xL7U9thPZ30Sr3zFB2zmqMpKHIuUdbE/NI0fNy0Z?=
 =?iso-8859-1?Q?Y/WbY4BBkfA0KKreYMrvvi2qjtIXWZu6SHfM2cMhAg+rewM1cXWo3/s6I4?=
 =?iso-8859-1?Q?OjMZrsStgc3blCQXV/3isKgM2ntB3dAdKV1zYDWobqzt5Q7elA2FzoefgY?=
 =?iso-8859-1?Q?DUuEv8YkcHuU2BCQ9DB5RITyQo26GIIA8rUGCPM1guxtFL1kGbKO1CsPu3?=
 =?iso-8859-1?Q?1kOOc1Z89lrRwUuybT7uXDt44Hp+a1U76CB0iO17BVsjKuJwyyx9sbV1CP?=
 =?iso-8859-1?Q?MMJNbuJJnTn4XFzwCAD4GUOHZDGQ/Fe5SS772WDw3+Z8+x4RkMW5ZpN7nM?=
 =?iso-8859-1?Q?bXfLry1Jp/L7R7XTNAo8EHo7zwVfq8q9za7ZA07LoN4jnyItkMpLl/Vgn6?=
 =?iso-8859-1?Q?jozs8kN+YhpSy1mpwyVky2MFhZ6AnlKQEric/EKqzkXXQwY3kEIaj6oCBG?=
 =?iso-8859-1?Q?6+M+VXU5Nlxyq1zsd+JeECqc4BDEe+5yD66VU8jusO5bCMsfQlJ/Fd0GiM?=
 =?iso-8859-1?Q?zapuT4mxCJWSZ1owbReAvMXTWlLdvMrRYEzyKHo7kQ4UMJ3bblfSuCEPTP?=
 =?iso-8859-1?Q?B+ZmIT6kEHU8WV0CflqoNDYhkbdJQKaQv+/NsQuuVg86gkJEgJbyKtLuWa?=
 =?iso-8859-1?Q?t8eourDMgU48Kk7sqb8gjzAkQLmb9xYCDMOhVBAXzWDcrQuypx2FCeL8CO?=
 =?iso-8859-1?Q?eWYJU94ndOzDiK2kXIdeNOi6+btYbqXXBC17guSEAWMfsc5+PRSLI2i7xC?=
 =?iso-8859-1?Q?ZxD9r/mudRYUOZu73X0G0ubxq6z01U8YDbkeNrcqf4T/0rj6lpsABQYgm5?=
 =?iso-8859-1?Q?oWTyJXqe0lIBTRHKw5ghOEEG0IZgaQKTmCZAVXuCg/tKjEt67ln1hrAl4x?=
 =?iso-8859-1?Q?LEqEd5pdKSNwAAGjKlYVS55LMcWw+7V4Trw5i/vLwzJvPdqO/5OVAgSQME?=
 =?iso-8859-1?Q?WkN+wI0tQ6++RvifGWQ6T+8UrpqaAUkoQ3h15Ncc8mU9EE4eF0lp+gvvIE?=
 =?iso-8859-1?Q?PpER6FLwYPCajQTKsPZN4dwgDaKQMm8MKI3UC0ee4i3dmwzixGHurJJgkN?=
 =?iso-8859-1?Q?jrRtIhwIi9tSkCQVaWJTOPsic9rF00MweEDtlHPjDVnRo3qNruI563BjM9?=
 =?iso-8859-1?Q?hHaL1hG55sQRJsxZub8lVxuTKsDRi7BkyAijqQ3SC0wtwS8KZhuemCCowT?=
 =?iso-8859-1?Q?HRqntfYPGSRbSusQmKLTclIEjKqJBanDnP+/c6SsnZsIVHOuReR2rfDmPR?=
 =?iso-8859-1?Q?Kwh6mPtukN0B9xKu4dJGkL9Cq0itr7ZzTix+ZTcZK47CGXsoccYhdpM0LU?=
 =?iso-8859-1?Q?dhCyDBYErDrTXMuZjnMhwuHcC2RSdkm/uKrHGc4Hc2MBZ7jo+aYk/Q5YQr?=
 =?iso-8859-1?Q?KUfvmtKV6ps2P5BO7lgVAbTGO+8lg8Ma6H4j292C+IhWrqECoLrrihVffp?=
 =?iso-8859-1?Q?aHFo13FInTAWPZAoIcKkP1fuEOJ8XzFsq+xHFywLtYQwktTiAlO0WP7Q?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SA1PR15MB4840CBCB4D36E36C85723862DAD32SA1PR15MB4840namp_"
MIME-Version: 1.0
X-OriginatorOrg: meta.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR15MB4840.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f7fad1-f426-42e7-ac21-08dd6270aaaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2025 20:50:19.5511
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5wvSyT0qdqRCAsedqBNM27aobFAUgbVz0qWR8PhepaiYfQEYOTyp+sU/F+FprkJM4sjjNa5CeqHwIJRJnHy5bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR15MB4946
X-Proofpoint-ORIG-GUID: yfkrp4ZzEEZzvKtRA27uMTQAErFrngY-
X-Proofpoint-GUID: yfkrp4ZzEEZzvKtRA27uMTQAErFrngY-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-13_09,2025-03-13_01,2024-11-22_01
Subject: Re: [oss-security] CVE-2025-27363: out of bounds write in FreeType <=  2.13.0

--_000_SA1PR15MB4840CBCB4D36E36C85723862DAD32SA1PR15MB4840namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

In the following change

+        if ( FT_QNEW_ARRAY( outline.points, limit + 4 ) ||
+             FT_QNEW_ARRAY( outline.tags, limit )       ||
+             FT_QNEW_ARRAY( outline.contours, limit )   ||
+             FT_QNEW_ARRAY( unrounded, limit + 4 )      )

The out of bounds write requires a short integer overflow with a limit valu=
e of 0xFFFD - 0xFFFF. In the patch when we change the second call to FT_QNE=
W_ARRAY to remove the addition of +4 the size value is now negative and the=
 call to FT_QNEW_ARRAY call will fail with an error code causing the logic =
to short circuit and prevent the out of bounds write from occurring. While =
limit is still signed the security risk is mitigated by the early exit cond=
ition.

If we also want to make the limit variable unsigned, we can additionally pa=
tch based off the following FreeType commit:

https://gitlab.freedesktop.org/freetype/freetype/-/commit/73720c7c9958e87b3=
d134a7574d1720ad2d24442


--_000_SA1PR15MB4840CBCB4D36E36C85723862DAD32SA1PR15MB4840namp_--
