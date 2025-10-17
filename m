Received: (qmail 1604 invoked by uid 550); 17 Oct 2025 00:12:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18178 invoked from network); 17 Oct 2025 00:08:54 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UQwnVV0perjeIDzHPx93sbmy6si7gtuxLGz6HBmo8yiEV4DWcc9bCzNo8wit8n/+wkYHMFWw2Dd8rf79Up+uRa+8SmFQex/A4uX+jyRnIx9CNMTNiOIUJCoH83g1QyQSj/dxHp9CHnWaHh+VU9D8QBOu+xuaS9sTD9jWp2UPvyln346DTi+70a+Fw70zUhdNBvp3EoYCbq47NjZTwf8sUnq4WPArOjFY0XySJBK3oQ37YF7aHWTlcocWNoBU9EW7UG5eOohQ7F4iYc9tw1f0uHHFtVybdd+wEvtid8lpG2suikkQVn4lp3ZT25rMd9wvr40vjy8ZJDOLreo4/oRBmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lw3UDYzobbJCh+b0OesV2dMvwmBE+ldzz2HZGTpQb4k=;
 b=ee1KEhT/EVpPAj+xvcDz9KhSByRC8Zl04skcomGRvQH330UAj9lDIrroSemFC48/ZqYp2RljGYRM7FrohvgTGCTpEfxfWwKfWMzRUPx660B9gjJ8DAw9fZJyQ7Q6Mrnm/07FS7egc3qiGCwYESTS35sDWsxPmi7b9zDEuVMxRh+1k6b/ME46mJe9ofXttvl2vGvjG1akLsR8H7wkCl9VWvM4GEFpYNDx8iFBb0y56HQU5SJFNKEHxY10u1IBm24mlDEN4bqksn+EsYCda6lIpcaB+QvmJ4oqPzPNhMPiADT9bSBTqYtVmSlnw/u+XazUxx5SGgWEWlkWA4lyLmApRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lw3UDYzobbJCh+b0OesV2dMvwmBE+ldzz2HZGTpQb4k=;
 b=FKJdxLGoIUBN6O3dqGTdubC1oWNJXZfff4po/TZn/2ofWQwfkgFcSJosYHDXm6AT2CCIrHrUlTJW7rBdhUuk/RV9+ENYZ9fLA8h+FoK6UbKTclcFmbrWNtCROsgY7sAogQMDP84PpLiM4cQFezA/Sc2wfE90SjFOjSVo9KWXr14ml1ZAltAT80BcLihmPM+WJPlrJcjhiFJFjzBvmDBgAeD0OTaOC9/D/ToHy1e8c5odfMiRY01EdhcjJXjOwXrUgkIX59YpP496TUpbQOgIAOFY4Zhg6GzODZNhbHuej7zBox5RPlnlh8r9+04nAsLihAm21rzhwb0mtOdgR+JLUg==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
Thread-Topic: [oss-security] Samba security releases for CVE-2025-10230 and
 CVE-2025-9640
Thread-Index: AQHcPgYsvE6iqaj7vEexchv0CKWFHrTECkGAgAERnYCAAFxVWQ==
Date: Fri, 17 Oct 2025 00:08:42 +0000
Message-ID:
 <ME0P300MB07133CFFF9E6AA1309869788EEF6A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References: <20f5f042-d3de-411b-aa09-b2c46ee19cc8@samba.org>
 <da7aa05f-01c0-4798-8496-33f1c0010e4e@catalyst.net.nz>
 <2338e6b3-44d5-4d9e-bd94-e3b96534359d@catalyst.net.nz>
 <bb119ae4-dfdb-4cdb-bd25-edd7f19005a2@catalyst.net.nz>
 <50bcfbdc-b717-4308-83a2-1937bd361631@gmail.com>
In-Reply-To: <50bcfbdc-b717-4308-83a2-1937bd361631@gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|ME0P300MB0765:EE_
x-ms-office365-filtering-correlation-id: 087f1c83-49fe-4d16-13cf-08de0d1154da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?lyElArP4/J4wnz64JiYU97jSnhPGQjHGf1JpJESlMySK50OyAAO3cNj/7L?=
 =?iso-8859-1?Q?nv8LO0uNOgZOwDRDmWsYJJ4+gDB4ozybDT7Xb3asZv2QBl4YHZSf6jNRdN?=
 =?iso-8859-1?Q?y4UCsEgigqm7+UPWbRNvBXV9EGe1HcJg2/JufdOcynW7l8se+WoufQQAbD?=
 =?iso-8859-1?Q?Iqvxaged//HP5oVYkFa6WuxZjn5Ny4cR+iS8UV+Gm8VgjOI4WM3RhGqkAz?=
 =?iso-8859-1?Q?6+sdoL7IyMp72shvTw1/UJioHNEUJpksRq5cET/JPMdFmYOJ/NhkfQ8SXw?=
 =?iso-8859-1?Q?vza0VOkyVJMPa8zYIZ/7dLMCpp9yOH9T1bYqmGqLBR/i+R7DUhl+2+Yj2I?=
 =?iso-8859-1?Q?Ob9tRYuJukw94RvNHv/H7OOn66o9ANfm6Tvuv+QbByLSr5vwAGino2Wen5?=
 =?iso-8859-1?Q?DylqzHqNpZPSNrk/q64FgUcuaISLDQ7Kif3MBCgrRNeD4PFcS2eHRf1Dic?=
 =?iso-8859-1?Q?BlHaBeKdUOnlzZSky/5nBMo8jRGyfzML+q7uoDod7Dlc4GcWOxbKLGw0jn?=
 =?iso-8859-1?Q?0FUagovLcr+FBR5Sm3ZIGqneitFVaWAfQdouHt6Ae9CeUVe/ZZ6eDaOHtU?=
 =?iso-8859-1?Q?aGy42H4d4J6lz6E2uWJxz893766U+uiI6b8hQnChrD5ur5HufCtDq36yC7?=
 =?iso-8859-1?Q?SVSi4bMtBUR3hMXRo4m1/4C3EpKGU8L9Zcxe5eb79hLuoRxzY+IfKDzu1k?=
 =?iso-8859-1?Q?RIdUyCbITFKedVz6AQF/QPXKbINmVDbidqFgxGozGXHAUY2RO0xy5S8hN/?=
 =?iso-8859-1?Q?5MlQzWSrC0AVqcaNvgi26+8aRJ24loY82Bi1BgDcz/wXj9BrnRG85TF7JF?=
 =?iso-8859-1?Q?mQgSpnIWVn7YAYnojP98Yi7/ZGEnz7xWHxRiY9/6rsqHjCoy9lezUw1Ewj?=
 =?iso-8859-1?Q?YeT8IBSIU9ght6CfwOZGLfTQXKSXeS8OPEuJa1u4X//bcMcBOEs8rmCAwh?=
 =?iso-8859-1?Q?+eeJfEA0W0dpmya3BTgaTgbx/mteau1zqFkC8xrv5H+LG4P3+sJsMo7W8x?=
 =?iso-8859-1?Q?ry3QeAMLqeKFnvcwUPbHIa7AVGDLAXM1PoYVUJYroPXNJ1y569CsAO+wyA?=
 =?iso-8859-1?Q?l2gtJuvzmMtE17vfStu4Cj6VAjOD7/v4ccP5+blEtcoB09nCKRd5rDx3YU?=
 =?iso-8859-1?Q?/wN+nryUkAUlpdeF4QCuXoumAbWPMr1KUHMgsNjIKF3XdtCRo5kqr1vm6o?=
 =?iso-8859-1?Q?g47OPmY4DwtqzJsFf+4L5aKIIkqBFHaOlAVEz+cIjQb82q+iq9jX4NMdTR?=
 =?iso-8859-1?Q?8Sa5jAGusdVk6EFuCNha6Crq/Z+eEPXpmvwj7Pf2GbBo7XIKSExPwx9xP6?=
 =?iso-8859-1?Q?PSeAvkjIp18HHfegc4B7ecqF6G5utK8rRNal21Ree1LpaAvnnZHh+qnPyk?=
 =?iso-8859-1?Q?4WG3p/Fit6Iv9RFCgk1nw3wrC+o1oTzcxv3KQ10u6yqZLeiyui2jVJdQm/?=
 =?iso-8859-1?Q?k+gyYNSXloGIAUIzvKrGGsH3woJ15Lp/bboVIRn1aaYFT5i25G+J9Pd2w4?=
 =?iso-8859-1?Q?2U2/8LlP5iZz92txC9/JNIPGlEagqcimJw3gH350lNK2JauDzz5IFSTE4V?=
 =?iso-8859-1?Q?BNRN6hZw2mVbZxJWo5YDR06x634J?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?WfbmnGcS4vJkO6CuZXdZ2PPTpPfOXxZ2UCtvAthi9xbExRk6BlpRc0J+nQ?=
 =?iso-8859-1?Q?AnU1Kqq8yiILgMU5pFr9b5jB2udeRxLiLGvoyP9dMtsDddyic0xE4K6RNt?=
 =?iso-8859-1?Q?4r7QqSq4NjcNRG/hENI9giWXX5Q77K6J4+hNiTCvzg9ECLnMWovgnlIfX8?=
 =?iso-8859-1?Q?PgMMcxGQ0DbaBS2P8GVVX0Iro0R/jBokZPz0YPkmD/3JOVrNKK7bs5mKb1?=
 =?iso-8859-1?Q?W/zFXmyqLmOHkcq3U75frdoNrjSQUN9CGJAX/6LU1NuQ02P5y/BUTk6qip?=
 =?iso-8859-1?Q?krt2p+ztw/wJbTzytVHl0NEttAblmXkt0MS+Set1TCeUO+sfkePsxWB1Xo?=
 =?iso-8859-1?Q?+1VsrJdNsnlwDHhIssNpa+CZOgVmOFA4BZHzn6QQYF3AiLYwIrDU7Fdxqm?=
 =?iso-8859-1?Q?j2GHUjSVxoHqYx6JIFkGnVIiETurVSY5SIQom/9s87Ctwmms7Q8wuqM8QJ?=
 =?iso-8859-1?Q?mLmCl6oXndRe8mr6QIRGW4Rhie7y5Fy8+vXNrfRR0L0yYowe4tiYmmS7xH?=
 =?iso-8859-1?Q?KmWWWYBipjRMHrHWIdqIVRNWpOKzG6fusxnlGsw/pnX6q27PPXoTCeGuqT?=
 =?iso-8859-1?Q?9rhrpEr26SrfeErUnwd5l6DvBcFr7ZreADZ4SR9Joio0+lGAnC9YiwRGxO?=
 =?iso-8859-1?Q?ITsidzvEfKnR4Tn9Vr6ttSDezSHzEAZS2MDfsMDAvH+QiE1lH3M/f02TU/?=
 =?iso-8859-1?Q?skIsn3cgztGJrkxF+l/pMjIBAaIOnKf5lR0pFbhyLLbavhwxmMUSvwPd/v?=
 =?iso-8859-1?Q?vtM9HdZIX913hIvKOHpi/sSleCIXCvn6yUNAyk0fTTaDEHuyYewWPaRJD0?=
 =?iso-8859-1?Q?7eeLHikrSRAg8cqetTaEZbYt9rnGm7c224aOe+HS8s8N9kUxu5wmKQ/M+z?=
 =?iso-8859-1?Q?0Vf5FehaDMLlZLibw0LIFBtoiSkA1poVhYUMeXlbzsZSmDMsodx9d1Q4kw?=
 =?iso-8859-1?Q?c6EJN1aLeJOStt+hoPvxyHdBqdU2gKKv3YtgnQuykVd2U7vD8rHnIF6Eb7?=
 =?iso-8859-1?Q?o7NXktumsUhEt+9/x+TOEgFUxFRGeyMDcpfHeY5nIjUPtoM5b/3vyCQfhv?=
 =?iso-8859-1?Q?qPVzXqkUh45qr+5jmcjKm1ZtA1XTK1gsPKTrBVEnFGBvu/oMlvcrbNCuin?=
 =?iso-8859-1?Q?GqL347I8kPR5O66eKHhAAGw85HgqqCCdmWqcA2pzuFZ/d7RKF9QJ3Bke0d?=
 =?iso-8859-1?Q?86dc5sMZLotHWhvuosipBDZJ0SNC1O75qWJ0wXPbwAmRtkkOp66S8r2sXE?=
 =?iso-8859-1?Q?7qyPXF8ry0DBF62d2M9Q4Pejl9Id/v/MlwZ8QbxnbBBFeCUc364vOlB6Tj?=
 =?iso-8859-1?Q?p7e6x92LpPGQcNaxVGXd4Ba6YQaCIYDiAdSXPKrhiUtmbR33Ju7T5ggSLZ?=
 =?iso-8859-1?Q?v7J54at3eHB3cxQCYCDL4n+oVeuV0TUT6rj0YlG02r5TZFMoaMsOl+jZNp?=
 =?iso-8859-1?Q?vCrPpB0qxHSb+VK1WFLL5hIOpqbWbTsgLniEfzCBLEq9M3q7NMVVOpqyqK?=
 =?iso-8859-1?Q?CnoYbqDhdKcUeIg3wAgJpe86aOKcFwlyMgb/nrbMzmOPMmsQM3mLBcGJBH?=
 =?iso-8859-1?Q?dK6inYlbzLOzLp0jCQJgIUZ8Nv+mlNXHLX7aklDpIZFdro7MA6wB03zxLi?=
 =?iso-8859-1?Q?5XX5S17CMJgPzGS3SskWI7m+YH0gHSb5b7?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 087f1c83-49fe-4d16-13cf-08de0d1154da
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 00:08:42.1961
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j7ysLeDeLVpbTQ6JtyDutdz3H6FRkt8PslJm4wuKfRaWoXaKon1TDswRZtPbzbo7YQ35SuCmXxe5dC7OmYT6wDaliuBD7xQ+aL8WVs8KixE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME0P300MB0765
Subject: Re: [oss-security] Samba security releases for CVE-2025-10230 and
 CVE-2025-9640

Demi Marie Obenour <demiobenour@gmail.com> writes:
>On 10/15/25 22:18, Douglas Bagnall wrote:
>> Anyway, the summary is the Samba 3/4 history has left us with
>> unmaintained pockets within our codebase that we ignore because we
>> assume nobody is using them, but which we don't delete because maybe
>> somebody is using them. There may not be very many more.
>
>Would it make sense to announce that they are deprecated, and then remove
>them in the next release?

That doesn't work, people don't read and/or ignore the announcement
(particularly if it's buried in a three-page shopping list below "patched a
flobblenortz bug in the Wombat 68000 port") and then complain in the next
release when it vanishes.

The process I use is:

n: Present.
n+1: Warn of deprecation.
n+2: #ifdef out
n+3: #error inside the #ifdef, "Contact the maintainer if you see this mess=
age".
n+4: As above.
n+5: As above.
n+6: Remove code.

This assumes there's enough time throughout, so a few years, for everyone to
catch up. =A0If you're doing releases every few weeks or months you'll need=
 to
spread it out a bit more.

Peter.=
