X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1141" "Wednesday" "1" "December" "2021" "18:40:59" "+0000" "Travis Finkenauer" "tmfink@juniper.net" "<21B1982A-2C53-4E5B-BB7E-178EAAADB089@juniper.net>" "28" "Re: [oss-security] IMA gadgets" "^Date:" nil nil "12" "2021120118:40:59" "[oss-security] IMA gadgets" (number mark "        tmfink@junip Dec  1   28/1141  " thread-indent "\"Re: [oss-security] IMA gadgets\"\n") "<20211201080633.GF4037@suse.com>" ("<87wnkp8kmj.fsf@oldenburg.str.redhat.com>" "<20211201080633.GF4037@suse.com>") nil nil nil nil nil nil nil "Re: [oss-security] IMA gadgets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25727 invoked by uid 550); 1 Dec 2021 20:21:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17544 invoked from network); 1 Dec 2021 18:41:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net; h=from : to : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=PPS1017;
 bh=nQuNk816jGwSXc9FOKeEEU6gSymYZvxhRVE6Cnxcfvc=;
 b=oqk0gZRFdV2WKZRXciqAKTLcaIv/dyzXX3FQzpiC1J6vpR99//jMQRF6I1X9wYFa/e8t
 0NNaTa6tBPH70Ux4ei8Mesbq753rIpKoFlOv+YzoQgLV6ETh7oUfrcneFX6aDOPqbOQs
 NW2lXpcDPUDucuZ4RcT9+ix/YTEwykbkvHI76r3Zz8pQ9rfT3HQg/OvtmU61KOHAqj6j
 Or/M8jdmp6+OsmicToZvoxM5vW3mR/x0YpxOHGRviYYsmaowxGJYu8e/HWnpfysB1sbQ
 +r5J2l226ox4mTBORDG8j71uqepy8fIWntJf0dBVgvCM/uxgRqyvU6OvVqajbAzycHDy Mg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lk0gP9wrjQXszrut0Yzq54nLsZHT164lT9aUP556ZZ4a6LqJAyAsxHQn/MKvAcmOYP8UVhfAZt526AvXme3uhswnHccXkUmVnPr6/ESSxnkqow7usIxb89zgAsWAGwDgFu33vXBRN+DpUosZyasJfQRFBerq3DhD0XFmDHd3nSxS2uYOfaH5omNrL5EAxxYHGvDV89jex2bhLlfUz0A8Gqccb1S3dw4vYiY8c+/PZ01itYXIYhc++7TuSoQZGV6WiUpysbZi+std7HWVhmMxREBZ8VZfVDbxaL5HuXggRLTfKeSxja5L7FUzMV/v/QCALtUd5e8BKIyv+5vIs89vzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nQuNk816jGwSXc9FOKeEEU6gSymYZvxhRVE6Cnxcfvc=;
 b=YUVz7dJgLfY17rr1YPJDc7C4dfO5lTRjc0qFSz54co/s52s6e1Z5P0UveOyDhUekpOr4bvVAkWo++TKr2+YbFrUcl0inA2JUsOILT+ZQzF2AKd+eynXR7YM8tDJcEqActpLaqY0o1u5E5r9kYqmvo3yheee7KeoN2W/ErSDZrzocU3bH3qQbpQ8YOo815EelUjrSs9zH/S/ic5ZpaC3Dt0/ePOb03WsODFww7Qq8uJnoHqMxQSHpSxTITQSIPjdOw+hV7YBjg6uB9jJ9lWcGc48GbHE2pLsoVst3+B1u7yQfyMD0Y93E/oCv0sCCPW1md0SYk+qaU/QeuG2eosmABw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=juniper.net; dmarc=pass action=none header.from=juniper.net;
 dkim=pass header.d=juniper.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nQuNk816jGwSXc9FOKeEEU6gSymYZvxhRVE6Cnxcfvc=;
 b=NawR0mphRrJ4sBwQyEojTy6YeQkSPXTlOZTtPJPGJL+FwBI8gjqeMOZcn8yRz+HojoF7jtS+55LP+gfO+hTVFKtRhyHitzq0SS4edI8eC1TCtfXNZJN9cb8z7qqlbeGOlkKYK6wp9TaxaFj80a7dlz8UlSbICjWdlJ6Z2tHW6ws=
Thread-Topic: [oss-security] IMA gadgets
Thread-Index: AQHX5idPdj2vgruwQUGOGd/e/KoUD6wdSGaAgACxQoA=
Message-ID: <21B1982A-2C53-4E5B-BB7E-178EAAADB089@juniper.net>
References: <87wnkp8kmj.fsf@oldenburg.str.redhat.com>
 <20211201080633.GF4037@suse.com>
In-Reply-To: <20211201080633.GF4037@suse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3654.120.0.1.13)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de436355-5ca7-4dde-ec71-08d9b4fa1e78
x-ms-traffictypediagnostic: BY3PR05MB7988:
x-microsoft-antispam-prvs: 
 <BY3PR05MB7988A113DCFB56668992415AC7689@BY3PR05MB7988.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QVFfqtuRMPyreDi8MlMWNM+oZedsHarMuzbZulwbEAzSfeuuJ8NC+VT4Kb0yknYX0x+Z/ndfJI0Ibj7jISt6bSMEuv90RaQCHjZuEZk/mdrooTN7rnUN3GAqvL/pwxQkSqJie6rt7SiO0NksDF5akF4YA8qL9kNfWBvwP0RbNpTPMpZKDbUz9VcbMIb3ZYI0kIsrVV1IXEjJZO8LlOoC/OA3XdUwst2/j+7TNbznGCyITTNfsPWNZzglCwnfFJ30RxQvFxG96FWPM57mUnrRYdlKw89enWkJA+QCy0zPhuP2r9Prwc3kpNqixY5AJqq2rrXGxMbY0Wp4wE2C0Yxm90QxQXYL9P/TVGdQ6CqritpPovkul0Bufh6Eg3LYMgxRe5MLHEMnfiHfrkgy9nYTPXjNI56B0c3USvZPt1vXyeBOWfGPMKlR7J11uA+QuDPkEHXu8EE6iq3D0ZzbtEjWqmDMtVFbOe+lFixAAlQME2aMeRmCDqLpNB7DCOWRfLjx47/Cu3+tLjx1w/G/NwSPzn6R9lliiQHK8+0GF4fJPE7qT5Ow9nwrcdLNJyLS0RUbb3ACX5lcuQrlDrQW7hRe7BZ3QZ1VMQHWf/W8V+hbXOxTbyQthFdkAcFh9sLif6jw0r30CbraItfU2/IDPtJXf7jVnH+kByoNpYqfsvApiDxGjBSIgJMOJjnxQTS1RLFiCiUwgwLYNvJ2k2sJeyMq9kaPBdpGbZTlR9XGKxOoRWOrbpqLmZSlZFBl01hKqmUW
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR05MB6470.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(53546011)(66556008)(83380400001)(26005)(66476007)(6506007)(66446008)(64756008)(316002)(122000001)(2906002)(76116006)(186003)(6916009)(2616005)(66946007)(6486002)(71200400001)(86362001)(508600001)(15650500001)(36756003)(38100700002)(8676002)(33656002)(5660300002)(6512007)(8936002)(38070700005)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?GggVKbvmkI1qYoOLzMgoJshI61NY8b6o882JccHaZ/y7jAmybtU0zEtZIbsJ?=
 =?us-ascii?Q?rqEtvPxieBlqAlapOkH0bab3qn+r3mQz7vKK6WsunlN/kp/fNu5ZAwKeQ7LJ?=
 =?us-ascii?Q?/RSllHu5Z5umAd8p0pD5KALOeMwCTXVmVRQk0ASdjgY2xA8r7+4i1enszLlp?=
 =?us-ascii?Q?hxIIOqC2EbgS5MoFVHBSq5i5AxT2suVCtDYDtOEWYyZSvbmQ2DO4KxmfokIE?=
 =?us-ascii?Q?twaptl6Ues4gtMoM04whJ6/OsbOHB8LImXzl0nFXwJxhMhhhmfhfXwo7W/F6?=
 =?us-ascii?Q?JSuVMgQOCiQtXlrHe9UH4OHXL4Kkki5g3ZrmY66ea4shFK51527OYTjlDzWW?=
 =?us-ascii?Q?dYV/jg76E3/o0RqWlK1p1/CMi36KIxpW9OosmY+7ex8k96ZqqMThP36HDhSU?=
 =?us-ascii?Q?SJRYogSMxvL26GGX07QMKiia8gVDBBShSzdBgh43HGgnmAx4L+e/yFjk2JLe?=
 =?us-ascii?Q?OWz3ZLIh/Ka5whfq7tXdVe+rapCrF8XxPa67UKIEMEkMOx3D7rCAYQDcs73t?=
 =?us-ascii?Q?cMTaFKhsLGtTJeohRZCE9M2EjUNoYPPYu9nihHv6mXdBSCnhbj71JXwqHp06?=
 =?us-ascii?Q?rghi6uGoTpW/WBXM0JUbr0zNjFctitDGa9A91OyxI09AIgugZwSZSrzJUN0a?=
 =?us-ascii?Q?jJEkw434qaHIBbcjv4FqWAquWsARrmUXPaeFIpEWzd1fi+y+K24iPyDHBuRi?=
 =?us-ascii?Q?UUdPYWB+mIce04MjR17oP2ko/jtSHD1ynzqfO2yWZdNzAeNJzhmXHZTnn/jm?=
 =?us-ascii?Q?IMlgbCOFA5OTNob08W7AcHNPkRJ3ZHZgQtoGEKnk0d0NEebUgQThuU49Tcg5?=
 =?us-ascii?Q?SQEhDv334WpI0pwwQkWm9kvoHTWzRcFGk3UIFV12JpD4xiZ6eEJNqXDZNNgK?=
 =?us-ascii?Q?DIfxyGD8CDaQZHFHsTnSQbYQEreXlfsHXbYPfPptk7dNgWe5fTQnt7+Owika?=
 =?us-ascii?Q?2LUBNks2lq2r8ihph2NEC0IH6LShCDO/yk8FJiup6WSD8h/g620adnRWZ2Vv?=
 =?us-ascii?Q?GGvoVGQcTXasKtBIc8iDYvNI9WU2KjTdrTrRKV7v2F2mQC53XWLUu2Ex121b?=
 =?us-ascii?Q?cD/VdzOoUmtzgQX5DXXHjpgDFeIOmNgsTugUAVGykLdqYWrapAm8tc0yOelg?=
 =?us-ascii?Q?OFtWbYqWOtxBVl7HyDY7IDahiHx6CZVGcICrYFEP5Gq0/MuqWB4ho014kzJ0?=
 =?us-ascii?Q?XqAAzyvAayOBM8ls4uAnQf3/73eh1MRtiZuQtztreI94L2f2YYA5d+3SfMY0?=
 =?us-ascii?Q?lzCnFr45Vf0WuiAzrYtjBFLk/rVsASu/B2vVKFZ0dmspZbRqXB27rWL70zxv?=
 =?us-ascii?Q?YJfiKZbQmY1Jj7eWE+/trHaIz3HI5x81F+2l2jhNmAwQRjW1qEEOW/tXFMwq?=
 =?us-ascii?Q?PPwMkpOKmU2fwCTSkMNnntrZ1kcS0wQYdV6WFZlIryL32jAfyNyHRna1Y/TX?=
 =?us-ascii?Q?O3wQQIif/J9aCHjOsgMpOxr91/hs1xzY9lvJk4U0d0wxAWT3TALG17NlaYxV?=
 =?us-ascii?Q?/oJmqGijqB+iGTLEQQfVllu/TFaSw/1kPRE+szUXxrRZu62EcECSR7MF4fWS?=
 =?us-ascii?Q?sHJOA0Ukr+txHM4K8pCwTPXhf7GshGuUgr8ejkPzxYIbikqoc/Y/y5z/kSJj?=
 =?us-ascii?Q?8x7wbtXpjjSYfspsvWR/3ho=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <282BAFD16FF63342882E45754CCFBC76@namprd05.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: juniper.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR05MB6470.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de436355-5ca7-4dde-ec71-08d9b4fa1e78
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2021 18:40:59.4521
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bea78b3c-4cdb-4130-854a-1d193232e5f4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LH29geN4p1rV2YJzX2N1/EEA8SO9Cv9MMrs1FQrlr81IB1Z8aTzfzNQAXTB3jnTHNTZkYZonIhKqAVsMMj3zNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR05MB7988
X-Proofpoint-GUID: Wj-kFyT6qyLHIsPnfdFBqA97VUeWwjIX
X-Proofpoint-ORIG-GUID: Wj-kFyT6qyLHIsPnfdFBqA97VUeWwjIX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-30_10,2021-12-01_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 priorityscore=1501
 suspectscore=0 adultscore=0 impostorscore=0 mlxlogscore=440 clxscore=1034
 bulkscore=0 spamscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112010100
Date: Wed, 1 Dec 2021 18:40:59 +0000
From: Travis Finkenauer <tmfink@juniper.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] IMA gadgets
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>


> On Dec 1, 2021, at 12:06 AM, Johannes Segitz <jsegitz@suse.de> wrote:
>=20
> From a security POV it doesn't
> help much (on a normal Linux system, can be different if you really strip
> it down).

I agree. It's difficult to add an IMA-like security policy that is both eff=
ective and general-purpose. But, if you don't care about your system being =
general-purpose, IMA can be useful on "locked-down vendor systems".

If you can use IMA to enforce a "write XOR execute" policy on a filesystem,=
 then you could have separate filesystems for executable code and writeable=
 config. For example, you could:

1) Have your executable code in a read-only squashfs filesystem. Use IMA to=
 enforce only signed binaries will run.
2) Put writeable data in a "noexec" filesystem.
3) Lock-down (or remove) interpreters (python, perl, bash, etc.) that could=
 "execute" data whose provenance does not come from a signed, read-only fil=
esystem.

Such a locked-down setup provides some security by trying to ensure only ve=
ndor-provided code is executed.
But, this setup is probably not suitable for a general-purpose end-user sys=
tem.

-Travis=
