Received: (qmail 11962 invoked by uid 550); 2 May 2026 23:22:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20285 invoked from network); 2 May 2026 23:02:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hp.com; s=mimecast20250822;
	t=1777762918;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lGS9Fa1ynAvQ9jmmY3hCzEH2BYJMYM6emw8EUfZSv8M=;
	b=GFKozhMUhxVS15UrIg7whk2//0MhKT85V8MPif8t1U+SpQnOKfvKgW8hIpj33mLod1fhFm
	2iUSnhpoBo2EfX7hwiOqiKheiwdZTyAKAWcwvQDhQ+IUlNbkG71+WDT40rOR7e20yTOHOG
	mpUmzyQ+VZv5hVgxFvK6lGJqFb7UpkBMkIeVH0d7Krm89PvOu0AjjyCCMXYCGwfGAywnHE
	79juDrzavQoBefZ3dsufDm7PQYgUnyutLWu2XQLg9Wl9+tcQlzK10MBLNg2MQHUk/JVRKw
	aiInNcNMWUebvPT5q8udK210DDG4mVG/Sz8eRMpsqtEdhUbYamaOoU/XOvcq9w==
X-MC-Unique: cizsqs_cNQCDiANYlz6y_Q-1
X-Mimecast-MFC-AGG-ID: cizsqs_cNQCDiANYlz6y_Q_1777762915
From: "Malik, Vaibhav" <vaibhav.malik@hp.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Re: Re: CVE-2026-31431: CopyFail: linux local
 privilege scalation
Thread-Index: AQHc2ma2gPwny/i0Y0yI18tKyaUUabX7KRsAgAAQdICAACAb9w==
Date: Sat, 2 May 2026 23:01:53 +0000
Message-ID: <DM3PR84MB3444BB73B83ABF54582B9C9F82332@DM3PR84MB3444.NAMPRD84.PROD.OUTLOOK.COM>
References: <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan>
 <2026043026-treat-devotion-23d7@gregkh>
 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
 <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
 <20260501165221.27420-1-justin.swartz@risingedge.co.za>
 <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
 <20260502185608.24115-1-justin.swartz@risingedge.co.za>
 <20260502200500.GB229884@google.com> <afZmueWiq1XOBvF2@gxis.de>
In-Reply-To: <afZmueWiq1XOBvF2@gxis.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PR84MB3444:EE_|IA1PR84MB3084:EE_
x-ms-office365-filtering-correlation-id: 41c4aa7e-adae-4354-9637-08dea89ecd66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|19092799006|1800799024|8096899003|22082099003|18002099003|56012099003|38070700021
x-microsoft-antispam-message-info: i2fwnIA4VLgrw5VguVE4h1As/2OTDyAKhcg1bsEya0QhZl+f6Wno9I2sGL1RZa/Or61wujUDkeIXP3QJW2UK9ZtjFTcS5oDVrfR2Xt+wSlSSTesp0SaI/YS1w23Z1jVaAdZMDKM8b3pVAZ2KowEoImHwR8Cx65cR4XIsWsCeXoCZQ5pjB6/aKnafH7ZFTHmVJlHi//AFoYDgfpg4d7cEPA0cwfFXw3RIx9gnNJZcefAhiFgcXYUd8/Smo/9ldJ5z8KxtkzDQQ6ZbPOxJ9NzZcJhA0Y/UzMgR+OhpnVyecqh5RNOH/BeNlmNDWgF11xZTZYxZMFDHTfN/KWHMYTk5UFUQeh7yxSDEdCyj+hyNS2kYAIbcRphvBhhyz5snu8V34twT1Yl1ga27FG5Dn91MJ+9oBodNSYBfx5VEW0nk31S8UysnG6cBIUAsDFL7g9URa4fou3M1ueLEiVywptBspfb7e8ABcM9e1hUeGLeYB47WwYugWVSUaVHlNDv0Aardfs6HGA+4FHmXlXW9ayPrm3/OPBoKitdl1uXzpBlI8zIeAC15Ho3SrHrEZu8VVTUQgJbCoVmsAz1AZVKXU6YwD6tpGkm0CPBjN3i1Sd+MfE0KWAR0Zn51OOQ+sFpnO939CAu8Bqseotk9XagBgEhI/ZpaK0a5i7LoSJo1XD89w5MHinQSx5xp0YvKsqG11lyp2Fb0vwAb5Sry99WiE8pxhw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM3PR84MB3444.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(19092799006)(1800799024)(8096899003)(22082099003)(18002099003)(56012099003)(38070700021);DIR:OUT;SFP:1101
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KD5bKExhEZQigREjV+WdZvCDD32n2UFbxgQ5R+oEY9AlHp6FoUhndQX0u/pl?=
 =?us-ascii?Q?VMGzbs+6XxAJk9hU/CaRWzVqoTcItEwDcls0H5GQYfCa1LKuSP8jV5W1S7zg?=
 =?us-ascii?Q?4kEWYFRAYJLKFplnmv4OfsIihOUwQjUw4xXJ3dnPXjyiFwdLkX50Y/9pPmWC?=
 =?us-ascii?Q?sK2pgLktmwXM0QydqP5uAo0xNhB8OG06ervxkqvm6SLYhArAblj4McZ7rq4b?=
 =?us-ascii?Q?5pha015ubm3aG8ul1FMwLjCcMPLUA67UX91dkdLgkUhf11HwEAA3Qv8r1DcU?=
 =?us-ascii?Q?a6m+srE2TOiuGYURyjCQQiajWWLbW7SuU+yVrQKtADG9ng/mC7OG0ymJ58M4?=
 =?us-ascii?Q?JflzgAcBLwEKwWmvnbjpqFzvjcJpE+4PC8PTweVAOIiN0pvK4oVvRlIqRgK0?=
 =?us-ascii?Q?Up9U/00OvKTTAQjXXrbhDXKyX1Awti2Vw1EvbhGAEvZor4ZGQcFQntC2Tiqq?=
 =?us-ascii?Q?9qQDqFxa74bZLnozjKJdD1F1FyA6hDsR6x8XU6NgM3T30t/LdDibw8N5uF4t?=
 =?us-ascii?Q?zwFEojfxJt2lg1IjHd1KB5tW2/BmLGy7+ftepNe1Z6Rk3jekgcyURdzTrxlb?=
 =?us-ascii?Q?/H8MhugY1iKOVYNz1WijSiMVotMmW4qqV8wClMPvsZRVgZDimKp2iNVSD64M?=
 =?us-ascii?Q?53cutyg/9krKb8QOR78fyQ5I2OMT3MkZfQWFB97JJKydb17NEPO4HtxKdGn0?=
 =?us-ascii?Q?rjJ84PVLzvsEM/9/o2VFqSGmioPBTSO+JWah+jkhLvXE3Oo2R2jk3LTYD4ja?=
 =?us-ascii?Q?/m+adOfGOudWwSBbK42tlFLQIDTaE4t8VgR8x7kCZl+gVjhggIe7mDNBPfSI?=
 =?us-ascii?Q?CuRDs+BUTfWrtacTYNBOAd0zD79NPXsxgTg4KRIbSwZhNyjdEla3Xm3Zd9st?=
 =?us-ascii?Q?gfbjZXLqNRjACjM5r/mrShBJpi2/AaBxGn1nJAjrJniYCEucoR09yGsOPoBY?=
 =?us-ascii?Q?BEtcnX5sWRpzgTb3nhQ7fxPLbbwU7vjsLDUhz3FC91V2z3BDI7bnTr0eQrku?=
 =?us-ascii?Q?1YmIG1fRm8fAwjnqRj2AsGn/WqCvlNQb8EGqn4H0XCni8L/Rkusw6DEbXmHN?=
 =?us-ascii?Q?ktqfknCwTVh7k/+FIzC++v05a4+HJPYXVyIC7CPP3d+wBT8XkbI+k0cZqLuO?=
 =?us-ascii?Q?oJJvhfAkuubrc39mdp+37rITPS+tFg2TOR4XZyeiSJUgLeNZ1dwzvGp4WvWT?=
 =?us-ascii?Q?IlB8NBklTgXy05INyg8+h0jGQEg4hF5GoU5bJXjEhnl6mXq4spXp15CitUrL?=
 =?us-ascii?Q?PlnYR7fWQoRycCOsoiYSQZGD9/oS2H63EGKJmV3bakjbpZab3iIddMDvXdEz?=
 =?us-ascii?Q?IdvyPUCljiFF+pnV5dFMFtPfm/191nBhPhHMPACmnuHnCG9NmPLE7Kizos5D?=
 =?us-ascii?Q?mf3qtXMPL1rJMA+L7DL3mw6AiF4EVAE9bIxUSU5lYrsk1RIhFIB7gljYG7ko?=
 =?us-ascii?Q?TrbeqkDab3BBrvGKPZnxl8Hh38zRILaLW/w4qI6NnIejs3BrXcqQ07ntkRvT?=
 =?us-ascii?Q?R+NOFRMrvHA+33iwAvB+BlPaQkfEbom0NAaUkrUfoz2T5tJa3KlZ0QjW33nt?=
 =?us-ascii?Q?nH2P7z15jnVKiWJQJD1Z5KDibOMRoS8gbXtS82FR1t4F1cI173SwuX8fpfqI?=
 =?us-ascii?Q?BW6byLXwImke3iIumaEHMLdPGtt8h3/pO2QOCz0F2CY18fl/obyBxtz0NfT8?=
 =?us-ascii?Q?IwOUXgSXxdy6Ct0jYftzdax852NIjW1/tMphkbBt2YWz/jN1xnYARcfzsOpc?=
 =?us-ascii?Q?/V73cnqitoG0fYAn1j+Qk7NUILOnjms=3D?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vk91gertgXGoPm08pM40fLc7aYeNbnXwQDNn1Lrn3NmYfOrlQB7X1Uu/QhB8926wWgmj1Y3EreJVk5Fvwvmf2EiCTqhy+MjLsoNgzG3CZk4ZNvtfhAvmOf742sjzrP4xZtCCNVqFG2UdhtYAKuL7l03KM0gY+C8kbMxDwhh4pc5F6jEiH9tntTL+RClU0Mtcj3STCrvC29a5POEkj0XxAf2sYOXs128xLK5m66EXYyELI6YSAA+/HWnGzg/1kiFred6+tJX4k/Ej0HR4lKVush32NQfzCcT9hWpw+rcoB7u6F92sRvNxrmHDQR2hhXk7BsbuLHWesiXzB8bwMGqkIA==
X-OriginatorOrg: hp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PR84MB3444.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 41c4aa7e-adae-4354-9637-08dea89ecd66
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2026 23:01:53.7068
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ca7981a2-785a-463d-b82a-3db87dfc3ce6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZsE/cEUtatHt49w3h+MoYd4FeVRfLXY+wqytpTxn6UcsNfzBoQ5gtJ70LnrOv+JEaxvbHcnJHOJWbDGy6oeOFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR84MB3084
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0j2XRW37t9VnFffvv7Xd1cJAgIb-EC0IKgI0FWbK46M_1777762915
X-Mimecast-Originator: hp.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM3PR84MB3444BB73B83ABF54582B9C9F82332DM3PR84MB3444NAMP_"
Subject: Re: [oss-security] Re: Re: CVE-2026-31431: CopyFail: linux local
 privilege scalation

--_000_DM3PR84MB3444BB73B83ABF54582B9C9F82332DM3PR84MB3444NAMP_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Hi,

One flow link or example:

1. Userspace creates AF_ALG socket
A program opens:
socket(AF_ALG, SOCK_SEQPACKET, 0)
Then binds to a crypto algorithm:
"aead" type
algorithm like "gcm(aes)" or "authenc(hmac(sha256),cbc(aes))"

2. Kernel resolves algorithm
Kernel does:
Select crypto template (authenc, gcm, etc.)
Instantiate transformation object in crypto subsystem
Load module if needed and it seems this is where algif_aead becomes active.

Vaibhav

Sent via the Samsung Galaxy S22 Ultra 5G, an AT&T 5G smartphone
Get Outlook for Android<https://aka.ms/AAb9ysg>

________________________________
From: Alexander Bochmann <ab@lists.gxis.de>
Sent: Saturday, May 2, 2026 3:54:07 PM
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Subject: Re: [oss-security] Re: Re: CVE-2026-31431: CopyFail: linux local p=
rivilege scalation

CAUTION: External Email

...on 2026-05-02 20:05:00, Eric Biggers wrote:

 > What it does break are a small set of userspace programs that made the
 > shortsighted decision to use AF_ALG, instead of simply following the
 > standard practice of using a userspace crypto library.

For some added fun - I noticed that Debian 13, for example,
ships an openssl build with an AF_ALG engine, so uh, yeah,
depending on how you use your userspace crypto library...

No idea if that has any actual consumers anywhere out there
today.

$ openssl version
OpenSSL 3.5.5 27 Jan 2026 (Library: OpenSSL 3.5.5 27 Jan 2026)
$ openssl engine afalg -c
(afalg) AFALG engine support
 [AES-128-CBC, AES-192-CBC, AES-256-CBC]

Alex.



--_000_DM3PR84MB3444BB73B83ABF54582B9C9F82332DM3PR84MB3444NAMP_--

