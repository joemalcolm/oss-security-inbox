Received: (qmail 25775 invoked by uid 550); 2 Jan 2026 23:15:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26424 invoked from network); 2 Jan 2026 15:23:31 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NxLNwdOduLvnUOjharuPfwiYFpF3RzGCcwapyAWR1PW7R2fLBesPk7ICFZm+MCrFSsyIAI0sEytb47OO8kkLFI1/Fhd2c5+dGVpxn2Or5s5ZSg1JmseeY0xtneMvIBHveMizLUTKzvDgRSaxRVCooxgWsFbIa8XH7HhNI9u5qt54h9nLh+uvr9McH8zMudLO2e7+3I/ZL6tnyfLuKFwWPfIBW/E9nAXbgZl95of4XeLcVbboclAVU2Z9hz+7irqC3vXZZTt9yVVboZ7OFx/bEP7Blbp6PZE/aVaEjqvlo6QUBIit8gvMDJye4F0iJ5Zt1g4r1PrOPJS3fwvjOJsX7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gUsP85K4TQkaOdCW4CoE/zIHK5vNoT46A3MLJyLVwHc=;
 b=moIKxxnCQ68n+8uD5THz6AO468iGwo3G8gDhBD7WAdV87fTqNbwyZm0G+wVhux8ExP+FdzK7pLRm2woOTnUtaqUov8ETgoD5CMow91YW/TF8UYyNlXFKQPjgi0HWml7ZRXQG++92DHbtS1TkxFT66vJ1h1hPasWlWKy0SWyjkYtDlGAjQYV2QTWS3dh2cchycZiI/Uz9LXiblL0ROitJB25L8z/rW+7NbBQEYGwVux+3y6fYcOmi3NY5Dm7t1yckCGjHUxzpIhrksXwHWXJIAzdamszaaXR3KO6aJMEby1APkOaWP6QhvuiasMiSgasZdpvTcgMtJ9iNlGdRTEm/ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gUsP85K4TQkaOdCW4CoE/zIHK5vNoT46A3MLJyLVwHc=;
 b=g0s6rpvOj/4hp9r5N+3idt5njegIdR1feTgxzBGGdk4tWfL5+5yDcNFkGQs1oNCJ/HU4XPrfbhHEZCyyWcVoL/4nbr2DDsDNxF3v1agWnDc8lJ8E1pZQYCoje05FRt0YXYVaes5l+fDiXsPbUX1MMOSf2+gD2khpMUFH8ch3y/ITTX56UAAXCLQL0GUa8ttwVptOMzmv3oS6i+5LBChdKAmvytG1hTBymOmFhwySlRi+JX79Max2TjrklIJLnDZtNB9rroAavIPBgSSHzGxmUInVC/Bm5QW1noSaghYB3QyXaFO6zndNxyHCAAUeBo1JJ2tscXv+4t+TVNfjvDkF0A==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: Collin Funk <collin.funk1@gmail.com>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
CC: "kf503bla@duck.com" <kf503bla@duck.com>
Thread-Topic: [oss-security] Re: Best practices for signature verifcation
Thread-Index: AQHceOWNA9ZyWfnZ5Um30+gCdhSbFLU8L3lzgAAuSYCAAYX6a4ABIUh5
Date: Fri, 2 Jan 2026 15:23:14 +0000
Message-ID:
 <SYCPR01MB3661379F4E31EE1A57A2F310EEBBA@SYCPR01MB3661.ausprd01.prod.outlook.com>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
	<928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
	<6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
	<878qei6bq7.fsf@josefsson.org> <87ms2y1d2m.fsf@gmail.com>
 <87eco91kzi.fsf@josefsson.org>
In-Reply-To: <87eco91kzi.fsf@josefsson.org>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYCPR01MB3661:EE_|MEYPR01MB7904:EE_
x-ms-office365-filtering-correlation-id: cd1bac11-a797-4b5d-2acd-08de4a12d8e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|786006|376014|1800799024|10070799003|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?78+3YHhskdGCUAobekjE+CFtit2abEO+mFnfN2b/PjBDl3ZSBCW9AWiOfW?=
 =?iso-8859-1?Q?Z5fRQUFR4Q9fnZqQpmfDemLWPwGieiDgXVwnL/Nkec4snW1GKaj42IXWMP?=
 =?iso-8859-1?Q?1zpz20HUnSfjCNCs1X27LFagrGnokGB5GQ37JgvP35zex/be+u+h03acra?=
 =?iso-8859-1?Q?YXADqoqIMTOburnO/lItUhU9+0STnLnJ0VU8GOqTaJp4tETt19NMclgT/c?=
 =?iso-8859-1?Q?ghn3e+w5pcPrjDm0L2ddsSGNeXBv8CI9dE8oraCe89cvZPNP4gByrKYQnu?=
 =?iso-8859-1?Q?j1SuIBzPrbSfI6A4AOrOqLIrDKFO+FyAVQjJt1lblFuiz5rnhrhU+QMkJV?=
 =?iso-8859-1?Q?+BmiWnWTT/PwSW6OT2NUEGqY/Tj0HnI1gmJTCuvVlUhD2ObW0/TcD4YPbK?=
 =?iso-8859-1?Q?ZLAbGgjPFjKKHK6yv9d30e2sq/cD2jxrnKyb6wu7bgvijg7s0DxwoULGTr?=
 =?iso-8859-1?Q?ypkC9LoWLbl23xPOv759X+5tlaUdWaZkTotNHn09TdJkTKtNMy86qiuRgn?=
 =?iso-8859-1?Q?Ladsp8y89ydBhTXK7rJEEd8oQkV+tL9ywCsheW0AOcQjfpogeG3/c4stOy?=
 =?iso-8859-1?Q?rXdgDS60VrxuGtoNPscM4rM1GX/nLCgwD7WmL9qdAA5ebWOZMN0zKDCJVE?=
 =?iso-8859-1?Q?8pjYX8laNK9ZDv1EyE7u2f0SJfYM9P2zKJMYdEeIYBRGa7/KnYuCJPB0hG?=
 =?iso-8859-1?Q?0ETv3cZmrbc2MdhYdTIBYWBGEWBPLkj3wrDP0kVq3CcNZ7yBQk7vmPEFuS?=
 =?iso-8859-1?Q?8Mms8aV9CS64O9ofstOlZ5yTpAhYY/8ngdN6/p8b2tdopISdPDaUfVVOg4?=
 =?iso-8859-1?Q?8rbTRpj1U5xFkgrMatyWV/qRjtGECkqmb61HZNg4V1au0L+G/Wx8VOp0l+?=
 =?iso-8859-1?Q?Z4hnyhtQN2Crli9E27luq9WQ5C/jceUrwt6p3Npzz+LNDzdVUY18ZQOhkl?=
 =?iso-8859-1?Q?gW/p2QNg3MmrYkghqNEBYtNHpErtLEf62ibm9ueHF2/YcI76utPNv2AfBC?=
 =?iso-8859-1?Q?Jv4kgrAue+BJotWcG/dMzt1JTz3S2vTZTucTbRY2zwYVc7gGVW8Ig9bWpK?=
 =?iso-8859-1?Q?IwUUWiZwwxraRtKF7v0L1Np6MJX1aseTqCydQWxoCw8WpQGQBkpfEFyw2/?=
 =?iso-8859-1?Q?o8j8UgEB4fZ/7S1JUdt95RDCYbr/peF6zPOhU6OWeA3iTicvyyxvwBoRq+?=
 =?iso-8859-1?Q?L3Gq3QnbGEC2QTFpTeKk7qnittxguGQ6oZRuAgDtlGT6ebmqY8bld9VgBO?=
 =?iso-8859-1?Q?4+WoygmDGTVvyQ/ARLTOjPK6WvPQNTaMwupn01lt0wRHUb2ZZB9xDXFX3n?=
 =?iso-8859-1?Q?cVvvJr6UG1bFJKosZrwf2B+7iD0SgLUqsVOsYDMlW0vYaZA+FLJIWyBYrz?=
 =?iso-8859-1?Q?6nc1IIpcJEDJssUOpN1X5qMzHVI5OJzcpQDZM06dFzf5ppEEI73SiyD7Hh?=
 =?iso-8859-1?Q?2rQN+iLZIcltpO8+hEg6e1lpk8qzqHp6w/zvPZ1AT9WmwRX4yqYfMA0Dru?=
 =?iso-8859-1?Q?mpuHje+ALOB86wSDWQAAeBvf+Ry8EMxK76C+6BMwH2S59Hewo040z/3NxJ?=
 =?iso-8859-1?Q?rgOQwb1IWuijQ/08JG14rTOcm46F?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYCPR01MB3661.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(786006)(376014)(1800799024)(10070799003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?dbVm0pqyAaURjDbbnUuaVVZ5TnZe70IMixDTjRHQ6y86enaBPYo5GBP7U8?=
 =?iso-8859-1?Q?F1f51b4GBJ+sgvd4Xmyq8VHpgFydA4epNB2IhL7bpzPyOedue1D48BueEB?=
 =?iso-8859-1?Q?rBeUCgf43mxYab9dlxIir59bkHbTbYIGrzZ0YPeZwVd+n7AtOYkqxMk+JS?=
 =?iso-8859-1?Q?0V/XIFsLG21tgYc9+i/LwkX51pPBOlKlok7EiXG7GgN5UXVWxWugMTX2f6?=
 =?iso-8859-1?Q?cDXwPI6rFIN/tl9e99klfAVyYQ7mPpwk/k1A3RvmZpOXejQR+sz/CkUp17?=
 =?iso-8859-1?Q?seNK7WHCWjpLPOEab5Tx+Au7WtOMhuP8kykqkQ2oerbkH13p2A+o6MZLc8?=
 =?iso-8859-1?Q?7WMMTy0zhLt4s69zaJWVjlabhVGNrXwMvMvshGG3SFrcpkAf96lBswrX8s?=
 =?iso-8859-1?Q?tVFwJ4k7NLmDXg9nWtlGic855djM2vo3ulOJdc3uAro7QMI/JTv6LOaXFk?=
 =?iso-8859-1?Q?Gvq/w7zhEvzb9ottPyYOBjN1Ho07WIwkMhTQZyIfdzcqqlddQHiacfzA2N?=
 =?iso-8859-1?Q?/hSxOQf9u2S+Z9zj50+b5l3rwinysYvK5l5lod/BdcMROZAVPp9PxcL0dm?=
 =?iso-8859-1?Q?2ELIkH9vLulq1ju/OcH2vcqzfkgr/UIXb5G+0QfA1gzIwEFj3oQy/tJOQU?=
 =?iso-8859-1?Q?n9UOANzTI5P14fVSh610lL2OLaQ5vnzv+D6ck2yAmtWI+VNNPtrb9sALJ7?=
 =?iso-8859-1?Q?fdrJdMatTe0lPrQFTwf+feslNFnYbVF08UwPENEr8y1Gdr3NkJT2OORA9o?=
 =?iso-8859-1?Q?WuqqITf/8W8YasPR9rHEutx1WzjXWsxiBrW/jjypnrUlLo3Z1CSf4k5bat?=
 =?iso-8859-1?Q?zx89JoHHSUmvKLbjYkFTHo/SLzg21ypnb4Ru8B6CkLkWOUWMomxIHGLfB7?=
 =?iso-8859-1?Q?yqbnOz0o7GYWrA9rp8g9q7AhIiftUOPgptywYqQNZCzNIXLtiBr+e2wk9w?=
 =?iso-8859-1?Q?dtVDzEpsX/M1JmldYN5IdGTYoIOoDbAONte5hENF2pzRns0FlUQOHWleC9?=
 =?iso-8859-1?Q?2p3D1hkumQM7N2xhk6FoTCs8klsf/f6wvrIoyByw5QYVt2bH6P1+hJ35tE?=
 =?iso-8859-1?Q?MBsQKEHKmVrXFPnY9xT8VIKRNNPgYjC0ktu/9RA/OuwC9TGNZMnnWEJwr3?=
 =?iso-8859-1?Q?GdYJwNba1C41B2D2+FVx40Ms7gU8XBlsdqKNhwdvT6s1cuJNcTONEjjrJ7?=
 =?iso-8859-1?Q?RxYsUI59gBHOi5aEnmfdHjoTfFSvYjyXupFfs4UZhEtLTvHljPZkJn6Tvh?=
 =?iso-8859-1?Q?peQZdVO2qMuSDVkHKzKQfd522TV1WNTYjUkHiKpG086xQYabA49XW0j0A0?=
 =?iso-8859-1?Q?E97mfjdwz69KG5MSiahZsVbOmgfoIVfHd9keDJta4bxdEt+1/xR3kZO5w5?=
 =?iso-8859-1?Q?h1Htj5opBD9BFmE8Hf6aCpfZAhSvAJSSLrZ7TbunnIPNbPX8fdmmlKUlaC?=
 =?iso-8859-1?Q?9KEJFcMcz85Oj5GqpcnHavGUjqICeussZlR6C0jv5yhWzZYrVwFePvUFRJ?=
 =?iso-8859-1?Q?FtFPr5HOxukAyaquzHIBznnTsXiCphfGZGKmcaYcYudiN/lIYcdvhLJmeu?=
 =?iso-8859-1?Q?fE8ScfrgkxQZIZ4V14weJXsTr1aOMjyDRJ7EyVYvheA9EuMw3/R0FEvKgA?=
 =?iso-8859-1?Q?2/fEikypnKofKqrwoqKCqy3PggNGEcYixxF7ehEP7DxCzU+oLYoJ8yBeKA?=
 =?iso-8859-1?Q?+yhDzHpbqPGXysFRDogbQT74K/wdF6yxDdftOvQRL7RURbiDxNb3tiK8OD?=
 =?iso-8859-1?Q?alnlCSlfHvvZquusbds53Vc/FuCOOv2Cwj6mNEIRbz8FB2nrE72RKqcTkI?=
 =?iso-8859-1?Q?+qPGwldkWelwh6wbKHQvpxPQH/cLj2hxAK6yLbbP2GjIyoty5Sm0yLcQqG?=
 =?iso-8859-1?Q?BP?=
x-ms-exchange-antispam-messagedata-1: 1s4NYMTcEBJXtw==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYCPR01MB3661.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd1bac11-a797-4b5d-2acd-08de4a12d8e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2026 15:23:14.1456
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KSBiZQKx2fm2l6gC+O8JMQAE30Ow2cvzyyNwSW3XAeZw23N8zSdfNKKHoiv6aqlVjd3deqZcLfvATly/zAPCUIqJIMMdFlkffnTIv5WRDeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEYPR01MB7904
Subject: Re: [oss-security] Re: Best practices for signature verifcation

Simon Josefsson writes:

>I don't think CMS/PKCS#7 offers anything compelling that PGP doesn't, and =
the
>complexity is horrible (just think ASN1).

That's a persistent myth dating back to 35-40 years ago when someone who
didn't understand ASN.1 very well tried to hand-code a parser for it, did a
not-very-good job, and said "gosh, this is so much harder than using XDR!".
Since everyone today will be using either an ASN.1 compiler or an ASN.1
library, or more practically something that does CMS for you, it's pretty m=
uch
irrelevant.

However, my suggestion was to use the Authenticode model for code signing
(which MS put a lot of thought into and which has had decades of real-world
testing by billions of users) but the OpenPGP data format.  Everyone and
everything already expects OpenPGP signatures, they're just applied really
badly (think KEYEXPIRED).  OpenPGP no doubt contains something usable for
timestamping since it also contains almost everything else on earth... let's
see:

  5.2.1.14. Timestamp Signature (Type ID 0x40)

  This signature is only meaningful for the timestamp contained in it.

"This notice is placed here to fulfil the statutory requirement that a noti=
ce
be placed here".  So the building blocks are there, you'd just need to defi=
ne
semantics for them.

Peter.=
