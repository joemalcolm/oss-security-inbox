Received: (qmail 11370 invoked by uid 550); 30 Dec 2025 01:01:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21578 invoked from network); 30 Dec 2025 00:57:44 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rJhr8ZjixvVxQ+Ahp0FvLZpUjh6RoBXfUrt/JvkC1ROSJGi5oDh5yGSkSsON0JlxiJho6pjvhUVTBilyjGZnXHNHI1oXfHpkA4S556ITlsY3gtpofR6ZJpJFZE4g0jEtAAqxw6x1dySH/WViTzFiyO4H2KmkH5pZv1Z5j9ODmliMgf9/scvZ3b2yG8p0soCjp4jdDcOO8AAQZ82bgV75E1pVBc2EPBdbdf7+q9Kxn1gjGLBYWJDTyahpnMDKdd/uTImarDGamWYiMyC2brktY7Vd/hdlUbuhgEBFYrHfMGonkfB0P2DJ8csKASCehOwvTu30eU7qT050OqBEwcEN+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45ubzDw02FCsl6IU2Tb7ws3jNl3kU3sfhGQs5AKGsLc=;
 b=R5fqjUsN+UcdHp4l/GaLwI8VxkbtkK7yk+tzc7eKvNQuG2g5Ts3rFtL+Mq07cAWutxl/zhXJ9ycLsHImS7avvsKIqqAs8bgCpacmxPySX8YpkmSl3Z/W6JpXe64DK3iBFo5MH6NBwjRDYLO23DhJIu4lDaU2k4kR30FMsqOSMVPHqsz4fwznWiVU44m3SdFaWUV8X4KtLam+3dtlUf6ptvMrmrgBXI7u6apzeUOhNG53BE5EBh09V+FZC3tO4KNOz93GCKtxe3mr1/d1aDb514BEpKODWY6Oy86B85GpAt4cYh50AfTjeMwRnuIJ4HssaLJwj2VV4PblrQ/IX5343g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=45ubzDw02FCsl6IU2Tb7ws3jNl3kU3sfhGQs5AKGsLc=;
 b=BJ7kg6k9Trr8g3SYh0WSgaWnIbOkouqCOchXzUaEITXedwn068vTC6IFwfOhpuNfmhRpYtmWiREafFQFiLxdA7y6nF969vD2LcW2juiAoXZ5gXsFuVkXRRAodZMLNEf6JMhXv/mhOznq80VrIH9nINIrI2281X4zEC/EolveUl9GbrDZkvqWqHTh7ZI2P4B5a+pD2tAfID09OIiLEaITJIjCqWAtlc4TJxWw2uiFeT/2Oa3AhlDtSOQn29NsIsNa5/pIc2VU4vyOkRYiEkmQ03L7Kj7xRUnmJlaskRfVJ0f/0kCjYCTNEtrVTNlGGNiUum99KS9B0bNZIrPsZ6ONKQ==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Many vulnerabilities in GnuPG
Thread-Index: AQHcd6ITPUNTv428j0KUV5yevVmCvLU2qG2AgAK0ajE=
Date: Tue, 30 Dec 2025 00:57:31 +0000
Message-ID:
 <SYCPR01MB366178C350BB2649FA5B82D6EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <0bf8169edb12d002a4654c4ccf6aa54d84eba14a.camel@verbuecheln.ch>
In-Reply-To: <0bf8169edb12d002a4654c4ccf6aa54d84eba14a.camel@verbuecheln.ch>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SYCPR01MB3661:EE_|MEUPR01MB9410:EE_
x-ms-office365-filtering-correlation-id: bfa94b3d-e520-4ae9-d8c7-08de473e692f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|10070799003|786006|376014|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?X9JEDNxEjLLZ+R1nx/b8z0+aESiy5gbRwnk3jBR3D0xKhdyv+LRSbiY/FA?=
 =?iso-8859-1?Q?6Nx+sLmzANaA1q4y2CPOebSrNb9OyVNqaz+6dmSChh1ReK0WRiU/FVJzEB?=
 =?iso-8859-1?Q?z2rQFoNRUTuoeu8P3AtMpJDB8RzCRNsKF4veNXPIOICVuh5nSqsQVuLDKX?=
 =?iso-8859-1?Q?egnvldGhzb0GEQ6HGpL6tEzzTQlyxd+Aje9ZqQ/8IvxjvHfBsW6uZHLgi5?=
 =?iso-8859-1?Q?sxLWQeEQVhWA91UOafKkgPBj7vcIRAm2d8716AP/NfCIgJGt8fqpYmfJ8D?=
 =?iso-8859-1?Q?klQNYO69DGrxNk95n57BopnqpRwdEAf76afwcymo2il6Jnrk8G6VJEL++g?=
 =?iso-8859-1?Q?ehmolUdB3WzM7eH8ACW0L2ctJTIEjb9ZqpPgjtLBftsT1uLypvF9kZ9Tnq?=
 =?iso-8859-1?Q?JjoXOURtU2Ydqmv9Yz9ffqW0cHYWyFxo5EAdEaSfJMLyhRLTO8cd3jl1U2?=
 =?iso-8859-1?Q?OMwdhkmKMsoATzygQrIHpM9Rm4JJI+eW5UsyjrqAM1Tq0wX19DSqxaYkSs?=
 =?iso-8859-1?Q?Ueigb8k9z0Y4v1tentQNeltE5yMIoPeQKeWVViVL7GdIZJiAZisio4W/8u?=
 =?iso-8859-1?Q?wcLO/zyAByp6fZWxHl1ViAPZ0W0MSqWOS/ods5gu72Pzd2u5vOa+z/RL+3?=
 =?iso-8859-1?Q?J7EH3PKrhcVuNzYO04QoIpOKAshrXxiJfAWB4t8704yYg1er7/Kyvv4zza?=
 =?iso-8859-1?Q?4/SanixuREhKvKEN0FRcMa3XouSEWvtcBPLYLc8OysfMLrC0HQqCmb/EBQ?=
 =?iso-8859-1?Q?uGulro2bDa7UR4DDT4Rl9ENeXms6wjOz2ejzGQ7PZsvlFJJyr0X9UBo5fv?=
 =?iso-8859-1?Q?HU1P7VobT/TSIYj94JkuvEslrX7oyGD+8PU6DG34X9jrzK7EGEJfGKF6wv?=
 =?iso-8859-1?Q?FfJuJfBXppnUV2uNj1g30ua0dbGUdg90Ou89uR54/ofO5oSyNMVXyZWHQg?=
 =?iso-8859-1?Q?GWgIeG0Jo5xbj9J4E+Zl7AUhZtZ5wuxALX/2+spfHW2k7qPbN6UqeejKwJ?=
 =?iso-8859-1?Q?C/Cv6++Dh+WU79mykonPsJtcGONrZ7VS+pJNXOg7Ob/SmOqAzUEis4e+j3?=
 =?iso-8859-1?Q?0EBMrl8NMdvSng87jf8co/n11BETZAzbQ+YQXvxGydJsz63ex4S3dHKmmU?=
 =?iso-8859-1?Q?V+HGn4u9mG7DTUei+m5hsI/MTAMWNgZ98d7Iu9ugR3JUkT+8eTYUIHg4ex?=
 =?iso-8859-1?Q?1PLfe7qPODt2qW1LH8cNhHYOkR8dkPuqedoZZR2ZKwWiL0UpoS26sbCgOf?=
 =?iso-8859-1?Q?02iW7IdUQMz68EHhQELQ5VYKR+HoZmvVU0AbMUKULZk5uckT+HJR0ZNLI6?=
 =?iso-8859-1?Q?aF3mLQH+iSDD7PUGx0QaILGiLUFJDEXDIpi/T5iXd3Bp6iPGNG/9OnubTY?=
 =?iso-8859-1?Q?BX22ObhJR5i95J1D8QuyqBRyW9fk771/DSRnaJObRDYJD/KcV2dZKZfzSH?=
 =?iso-8859-1?Q?2mM1CEjxx19ZgcIKSdet54WroEcqLiFzzrngntmArBXzRxS9M+wS7+Wa2o?=
 =?iso-8859-1?Q?ZhApxr7yN5+mzeeXznVI7Ue7hB4nPh7HdgO7ABDVSg6A=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SYCPR01MB3661.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(10070799003)(786006)(376014)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?dMGkmSOcSU3vXjKoXmTCjmyavTpIZAUcd/ORwqaS1zh7qVzMmRRKtndhnq?=
 =?iso-8859-1?Q?vHEu0MJRU9RJdEqB/++cgVpojsy+aOW13EF7UKCOES8hqw5t3Ks1Gm23mY?=
 =?iso-8859-1?Q?dO9FwtuEvMFbaIpZo0zAfy4jDvbGZgdCvL1RChJCzav4fkh4Ri1m7tMora?=
 =?iso-8859-1?Q?D/cemEObWQulH1TWtYZYWDUOTtCIsr9wZMCYRBqopKGkQGedyV21I+mpUu?=
 =?iso-8859-1?Q?KLSr1romdtx8IHnY4UxP0EMWQm5IPl9naZviyTrJUUwNY3Yj9yS2d7Wd1l?=
 =?iso-8859-1?Q?OJV8TBDaXUTipEuSoxfm5nwNnJgb6g4ZRm9SYgy27uNkfBP3RLLXO/XSX+?=
 =?iso-8859-1?Q?DTzdRPk/JWDh2mBUPyaomXxUWHFQwkQulEhln5hFVWETN7tb9ZSy1suYlO?=
 =?iso-8859-1?Q?mDa0KoPjHG4e9mOCvUIOd9bxCETQS79eW9g4fRqxucYeFwdwSHOa6xeBVc?=
 =?iso-8859-1?Q?EbqWXAu32uGQj6SGdBhkzZlNW/i96q8Vw4h2xhm7/LV1RiRTl0Y8RWMmU9?=
 =?iso-8859-1?Q?eMbBQlG4+ldW3qW570HSPDIT2fv6RE+GPDppvlXo3JRU79nkOo/BNKGc9V?=
 =?iso-8859-1?Q?hbS7g6mEZ1+xKPqTEAdHmyumEoKXXO9V/8gF5C3xoWDEQC2IzOSymcr9eQ?=
 =?iso-8859-1?Q?3mBwtROpLhnMdhiQh9C1BpbVbQlWoXrzKawLd60BIi8aX2pFCv9AGo5rhF?=
 =?iso-8859-1?Q?XRhoXjbKnH0CM5ZqNWQkzY2DOGb5SEQoXdzpwUSQJLYqykWwdV66ns8uWq?=
 =?iso-8859-1?Q?9zXVKRBv5LYO8RZ2/Vx4l5/5v+eIauIjW7NXqafS5YTqE/LyoXBuaB1Z7u?=
 =?iso-8859-1?Q?fgrGYWfUKYDu0hJmKg8YBEzwtH2Pqqzqk9Y9snrOHI0asxmmvBssdy9vAP?=
 =?iso-8859-1?Q?YQrVOUVL0MIsG6nMTgk8S1kjXh1BOLrxbnkVMGkFQmrTt9SlT6Rf7VUQIN?=
 =?iso-8859-1?Q?OH7FbZFMUaf98Yj+1Hkzl1I+UZCdQdHtB5PaezLw6BO8xoblt6oKzvqkCl?=
 =?iso-8859-1?Q?rMR0CI1iM/djMDKPbRE3s2pLS2JdnvhfF0Tw3AYfuV7+XJvnAkXN7nw6D+?=
 =?iso-8859-1?Q?aLRRZsYTFjEb1t6ZmhIzFWo3EuNZLXPEGP9fXtJLkJ5LJ/qLJ2TXBnEjzN?=
 =?iso-8859-1?Q?SBdCnl40MlZDYIgeLB0qIRwEnWMqAbFU2n0WX+G1/3mTrWxKHrBxCxksUF?=
 =?iso-8859-1?Q?3qJF5k+XzMp5tEuiLXtFmcSPbiPl7Fe6uwzoIJPD9o2E4QAEqx90Rp3Cxw?=
 =?iso-8859-1?Q?waeITS0U4hSBxPl1Hd8Botxz+pgJbzKkbwmExENOXR/FBWb/KmQg8VJvBS?=
 =?iso-8859-1?Q?4sKQhhWFSFbcfm8rOZ+jupYEZ3sk+GHyQRc5EZMH0OTRtVSATFGKuznodZ?=
 =?iso-8859-1?Q?UhbPcA6MAYMF/s6WUXrt/H/UwubQ3EyGGHVV5bYGIYVYJWVprl6Y9u1Fdz?=
 =?iso-8859-1?Q?1pDkNxmQ4Q6U9x61qjUDJNuxvbZipRBHHSp0jETFbJ2zuWF+zvy+nTuTiE?=
 =?iso-8859-1?Q?5Cux0CnV5cM84WoYtUBqu+am8ReixwbpCzv3TNSXI3LNN2otk0QX9CxBcx?=
 =?iso-8859-1?Q?i7otchUpALW26vFGjis4zdM2L7MUZ3uQogTkmREBzxHH1l9bRaKtPJwa59?=
 =?iso-8859-1?Q?N8NZz831I3RMog7BbMpiBJ31p3vt6dyRikaw1g/sOdMv5gCNy2bvOn3aev?=
 =?iso-8859-1?Q?UM9MC84nf0yxk0qamYvUnc6dj3+/BInT+Njy7D5/lNQ9JLA9h6B0Pjf1n+?=
 =?iso-8859-1?Q?FvbAWiLl/VO8aC9qK57j8qvSnW2hYtyZ/98ojze6IYtTs2Rq3BS2RgL521?=
 =?iso-8859-1?Q?F06v6BIgp93Mu0jT52/rZb8nL+SCZedyihdFaH22eqGszUUNMSe//zWsdA?=
 =?iso-8859-1?Q?JR?=
x-ms-exchange-antispam-messagedata-1: gpZotnE8dECFyw==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SYCPR01MB3661.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfa94b3d-e520-4ae9-d8c7-08de473e692f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2025 00:57:31.1259
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +0CBBolDOHanWLyJOneOzyJBPJAsrRneJVl/oq5D03FZLtAu3GZEqU6eB3BX4f64z3eggKkjFRPxYpPVy+S4rDiMoGWFN4GwN44i+Xk+I/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEUPR01MB9410
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

Stephan Verb=FCcheln writes:

>The overall status is not good though.

I'm more concerned about a slightly different aspect, that two researchers
(apparently) walked up to GPG and quickly found a pile of bugs, many relati=
ng
to authentication [0].  OpenPGP sigs are the de facto universal standard for
authenticating code and binaries in the non-Windows world, the equivalent of
Windows Authenticode, and GPG is the tool that's used for that.  The one wi=
th
all the bugs in its authentication handling.

There are two issues that cause this, the first being that GPG is staggerin=
gly
complex.  It's not a sign-and-encrypt app any more but an entire suite that
runs daemons/services, spawns off subprograms, creates and uses a ton of fi=
les
in its own proprietary data formats, and has a million command-line options
that change across releases (I use it for generating OpenPGP test vectors s=
o I
get to try lots of options that, by the looks of it, no-one else uses becau=
se
some of them function other than expected or not at all).

The second one is the format, best summed up by Thomas Ptacek's comment at
https://news.ycombinator.com/item?id=3D46404339 which begins:

  A thru-line of some of the gnarliest vulnerabilities here is PGP's insane
  packet system, where a PGP message is a practically arbitrary stream of
  packets, some control and some data, with totally incoherent cryptographic
  bindings. It's like something in between XMLDSIG (which pulls cryptograph=
ic
  control data out of random places in XML messages according to attacker-
  controlled tags) and SSL2 (with no coherent authentication of the complete
  handshake).

For an example of this, consider compressed signed data, so you've got an E=
DI
transaction that you want to compress (it's a large blob of fixed-format te=
xt)
and then sign.  With CMS (Cryptographic Message Syntax) you get:

	Sign( Compress( Message ) )

With OpenPGP it's a crapshoot.  You'd expect something like the above but w=
hat
GPG does is:

	Compress( One-pass Sig || Message || Signature )

which is valid but pretty unexpected.  And then any application needs to ha=
ve
complex and awkward logic to process these things as per tptacek's comment.

To appreciate just how bad it really is, grab a copy of RFC 9580 and see how
long it takes you to write down the sequence of fields (not packets, fields)
that you'd expect to see in a message encrypted with RSA and signed with
Ed25519 (to grab the two opposite ends of the cryptographic spectrum) as we=
ll
as the cryptographic bindings between them, i.e. which bits get hashed/sign=
ed/
processed, and also provide a confidence level in your work.  I suspect most
people won't even get to that, the answer would be "I can't figure it out".

A solution for mission-critical use like authenticating downloaded binaries
would be to do two things:

1. Create an app that does just that and nothing else: Here is a blob of da=
ta,
here is a detached signature, is it valid for the data?

2. Define a fixed format for Authenticode-style signatures in OpenPGP form
that allows one and only one agglutination of OpenPGP packets and fields in
packets that are considered a valid signature.

I've actually done something like this myself, wrote simple apps pgpencrypt
and pgpdecrypt (size around 50kB) that do exactly what the name says and
nothing else so I don't have to remember a million command-line options and
deal with a pile of files and settings.  It's just "pgpencrypt file", and
there's little facility to perform attacks like in the talk because there's=
 no
extra capabilities there to attack.

As an aside, did anyone notice the problem in the code snippet on slide 91 =
of
the talk?  It looks like they've paraphrased but typo'd the original code,
which correctly uses | instead of &.

Peter.

[0] The talk doesn't cover how much effort was involved, the speakers menti=
on
they're not cryptographers but pen-testers so no crypto knowledge was
required.=
