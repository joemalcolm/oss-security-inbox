Received: (qmail 7948 invoked by uid 550); 31 Mar 2024 15:09:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7344 invoked from network); 31 Mar 2024 02:57:31 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HWkKwU48AbAGSDQpIcjQl1zDlBdP1B+bpHNf5pgG2PrSy7fVke4TX6j/mHFw+QH3fbP0Igq4GZMSFu3A4sCioS19Xkkaxg3lYHcNjsUmC0YrKLsj6YW23LgJ7lWqw6FygwKcqVWQ4uFVEb81/5MTrTwX2iv/kK1wPogLOEmlfIauG4eIupCQXE3IV8neaHJm8w8xMZHK1qR2XlJ6xGBAu61u/eQCKRkFaA89e6A217HkWAOmnAWeLltSARx3Dzp/wRqR0NRAdwlMwplE999P7a8eZsUFUUqCm6QsUpF2UJ3qFNKfWlJpJzb25fIcAyi4YeOExxE8+JciSIYWbow/wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gfaC3XW1jJnOxqEmHiCGvcr5wYLHXEWg+vsrQU3/lpc=;
 b=j2XZY0vhXmvdJJvORnpm9awGHlQbl68AkxUuBugFB4BB6tg6I3vOT6iwWKeHL3NapcYgvZIRgxrFQskce9snACPucHdrbvChOIg+S64HBTLbyd1kUgn/jLU9Y5AzO855rMetag9TVYDcmJ9jkTpqxQ7JR+EXAgpIIEC1Rbej/XhdLZjUchJpiQx+hO4BsTM+i/PJVIi4YtH85nrsSRSLQAsogEPFhF7iXHO1eLL4bUFwRfUpJ0PCRBUVOf+70TacF/64PZPbtAwvlvtDW8mqZ3uAr6AxRguGQLymO1YEBeladf9F7PEJPgtIsxzHqRG6DEOJ+cnTNW6+HBWfRN97CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gfaC3XW1jJnOxqEmHiCGvcr5wYLHXEWg+vsrQU3/lpc=;
 b=MUEU5lScNZ56C88AH0SqqWr521xDi66DBN9VqZ0R+dxxYsqJTe13IH/KEIV6Ocz4vapH77FVeGq2Fhv78+dWM5ZSwZPfPV9G+AoSOvPExKgnVHNj+OCaO6vvlJuz2pAc+pHPDpNn2zByGq+eTakOPpRMyVetjU6m4XaPof/rgPvLyR2witxdgUO6H9swZql4nfArLWiLgy+ZBo5RGAcKprV9KcctA2q+FSOk9SJ8Y/K560xF79vS/KLuUvyeQPe8r3GTA18Xim7rCJo4Lt6xZcm7ooBJdVxj8ICV4PV/ErreWtcQuUr3w1v/5deJEcWfFQjxAnC2KdLyE9vSZDJw/A==
From: Markus Klyver <markusklyver@hotmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise
Thread-Index: AQHagwGmldUF/w5bMUmrEdWHA+hIo7FRALAAgAAnhcM=
Date: Sun, 31 Mar 2024 02:57:21 +0000
Message-ID:
 <DB9P189MB204951E97ACF9DB11D029E50C3382@DB9P189MB2049.EURP189.PROD.OUTLOOK.COM>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
 <uu7k2m$61a$1@ciao.gmane.io>
 <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com>
 <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org>
 <87cyrbzw2z.fsf@daath.pimeys.fr>
 <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com>
 <5e72e6db-733c-423a-8213-f4698780cbab@wichmann.us>
 <n13o1633-6409-9p3p-95or-94on654ps8s4@vanv.qr>
 <CADz+4x_dLKtA8bz=ATTLdrO6GGtzgC3fzxA7ccvGKg-5FvStvg@mail.gmail.com>
In-Reply-To:
 <CADz+4x_dLKtA8bz=ATTLdrO6GGtzgC3fzxA7ccvGKg-5FvStvg@mail.gmail.com>
Accept-Language: sv-SE, en-US
Content-Language: sv-SE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn:
 [ey3E1/atBvmi1i9DMQbon1rBwc6FMnF6NYcnp2KPc1L1gimdVkxk0FC4TbI0acDdk+yEcXKpoyQ=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9P189MB2049:EE_|AS8P189MB2491:EE_
x-ms-office365-filtering-correlation-id: 9a2d7261-d7e1-4017-2c99-08dc512e4912
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 u4vp2iYAE5JiyEYiIP3MkABwtnjd1kvCqi51t/558EV79tdDcKCpGc1RYymXasGMEmKwU3friw0LayFI+nOD6xlZLuhLXFgEbBBTdku9C7QBpDyEXeJ3TvZWVHPDe8IqAAzYd8Hw+YVq2p9PZaafRBdqyHGyat7VY7qkYVeDeykis+u4Hj1eA34xsDuDyU+76CBgdJYlv40zscj7W6RgtW0UvwgX+JBVgVsFwyfy9vkPI35J+B/0CwvK0nB55by6ZZMrquCpJedaAjXazJjAKFkei4xKHskMz3j97nNUJNrdxYE0sQQoLyCVQwESDvaidDjcyEzhWcjuBACxe31XXKwpTeo+6faPSbiIe1vp77fZsfQUXTHvyAhJUwU/owOyZ75wQN9WenrEGp6xCEU3PPFXWHSQnWn/XOKXa8eVHFshVWDABbwGDRK/hnzaBOyuV62T44DnQJteQQV5MltW6CKTukkKX3d+oGk+pY0D1nSEV8twJBXbfhOy6n7DOEVZSc8JpFaveWooO2Z6L9jSwH2vtMbSGDXH/fi/oBGhc6UgSaO3HYDnKA1hTst9QW7B
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?pxEvuEu0tNJHul/QDKGTRj4AFo/jgp0vSkJRYIxhdJ4wCIK0W1kQZ2BUgr?=
 =?iso-8859-1?Q?qkHvhS2QbTua7ooaBxRT5mBgWz0vcy9Ip1XN0DXCdTh/jeQOpKkh+WGKDp?=
 =?iso-8859-1?Q?RW6NXuYXov5B6/8de52kqB1jwJE+UnZbEgLHExVJbRbYSq0cucfqJY6GH5?=
 =?iso-8859-1?Q?9xlkFRJpT6D1mPTQfUQ5APOl+5zVoPSieUuVzio224az1RT3PhBX2qveo5?=
 =?iso-8859-1?Q?TYuBuBdu5Ct3Lc+i9/+4UvTzrVXARc2/7kpkdlLt+c2mtJoFI5Z+5LItpy?=
 =?iso-8859-1?Q?MQZwbCqdSgg7bwrwBTYO+ymR75QvqU1Va+ZLBxt98awhSwnWdSsZr8cXe0?=
 =?iso-8859-1?Q?XwlLUwWEV07z5upexLI9ko2ei4ICK68p+WqpFKOO/eS6rnIVvnqVCQtfr+?=
 =?iso-8859-1?Q?oqh/q/ygyVTVKx/QojSwBzC7ZiuufZEUc5cOTkvgJ7sU2r0xm2AMDO+KxR?=
 =?iso-8859-1?Q?9K6r70fUVA0nnaWcH4+uKHrTPRuk8r3j4vg9M142tJg6m9IqQezVuDhUbK?=
 =?iso-8859-1?Q?u4QPyyypF/9Ue1aujFcWOU0heoFgwGVj53rMDJg2RCvCqvTbRBz1rAGzB7?=
 =?iso-8859-1?Q?DiQ0j7FrS5wGZFHo32TMc9JQkgZUP/M1OI2Vojwtxd1H10TVkw0zfFa/kO?=
 =?iso-8859-1?Q?Z1Sf+SiOS/Wg1mSpTR+42VzqD7L8ezheL3K61j8t+LCMDDWcKDeTQHlNoA?=
 =?iso-8859-1?Q?YZQaQEgeU9dtCds7HtsXydSZMoMgpcP3DFbthx6nKGxweuBpGj4zM8+e9d?=
 =?iso-8859-1?Q?ulRfqnfDkZf9pI6q80Huo/jBEa1F7i8410U4jVptzF8AiSMrj8T4ZpSR8R?=
 =?iso-8859-1?Q?0Dv4QGa8qAqLiPX9hJsqVMIXTihlWwm0poPg3Neb67z+S1B4Fzow/JM7+5?=
 =?iso-8859-1?Q?MppaLmFqyN+hHAhlJdYGSnD/AwhEKwEgErUUei2CfFRv+ZPKPJI1teob8x?=
 =?iso-8859-1?Q?E8mZj1K9dIGNLelubBiTDdA8jQj2FZiTnRdQ1UaKi1UDjXtXmcSNDosYGX?=
 =?iso-8859-1?Q?23WnoWVTqA+SWfEosbvviXZ2D5kGn8GQTKs+3L/+TMBVNMy6Pg3HR7+w5P?=
 =?iso-8859-1?Q?ma++DZpPv8KPKfj6QxFfVmbIhHfnsmjsHd6d/XTiyb6hhCZ/Z1+a0ZvalD?=
 =?iso-8859-1?Q?a9r4Yeq57BWhROsIYEzXhyAKZ4JXodC2fQ7s51l+Fruzg4QcE5jkO5NsSg?=
 =?iso-8859-1?Q?ZCv0oILElpZV5jeu4aw9hu50mqHITQ6PtWOsf7O5yRHdbAeOq+ZtZClsvB?=
 =?iso-8859-1?Q?9Xd8x3gWBIWKBrfp2Wb6hLGyZrWlzJEPcHjUcCj2jMZN6q+YirlXVFIgCE?=
 =?iso-8859-1?Q?Lr49V4U8eA9Y897hz0iraKsElRXkwwpmUA9vR2d4wMKx9rY=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DB9P189MB204951E97ACF9DB11D029E50C3382DB9P189MB2049EURP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4734-24-msonline-outlook-c54b5.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9P189MB2049.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a2d7261-d7e1-4017-2c99-08dc512e4912
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2024 02:57:21.5883
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P189MB2491
Subject: SV: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

--_000_DB9P189MB204951E97ACF9DB11D029E50C3382DB9P189MB2049EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

In particular, people shouldn't be able to push blobs to projects without s=
ome form of checking of the blobs.
________________________________
Fr=E5n: Pat Gunn <pgunn01@gmail.com>
Skickat: den 31 mars 2024 01:35
Till: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
=C4mne: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to s=
sh server compromise

I hope this spurs efforts to create better tools and follow software
practices that might make it easier to spot this kind of thing. I wouldn't
be surprised if there are other commonly-used tools that already are
compromised but don't have performance issues that have yet led someone
down the "that's funny" path that leads to easy discovery.

On Sat, 30 Mar 2024 at 20:25, Jan Engelhardt <jengelh@inai.de> wrote:

>
> On Saturday 2024-03-30 21:43, Mats Wichmann wrote:
> > On 3/30/24 09:32, Jeffrey Walton wrote:
> >
> >>> Someone asked what would become of xz as a project. I do hope in
> >>> light of this event, some people step in to help.
> >>
> >> Perhaps Lasse should turn over control of the project to an entity
> >
> > In light of this scenario (at least what I understand about it),
> > it's got to be even harder now for an overloaded maintainer to
> > accept help of a significant nature.
>
> I think it may not make much of a difference.
>
>
> In the instance of xz, the usurper convinced maintainers with
> contributions over the course of some 2 years to gain reasonable
> control of the project, and in essence, users.
>
> If instead, we picture that a maintainer withholds control (either due
> to lack of will, or lack of time), an usurper would have to start a fork
> and convince *users* directly to trust and favor the replacement, an
> undertaking which might have reasonably taken about 2-3 years as well
> (judging from the timeframes it took libjpeg-turbo or systemd to get a
> footing in distros).
>
>
> Other software might have completely different "usurp time"
> characteristics. That all depends on both how integrated a software
> is in the larger ecosystem and how many users there already are that
> would care (for either an improvement or when it breaks).
>

--_000_DB9P189MB204951E97ACF9DB11D029E50C3382DB9P189MB2049EURP_--
