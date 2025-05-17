Received: (qmail 15916 invoked by uid 550); 17 May 2025 06:29:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32721 invoked from network); 17 May 2025 06:21:57 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y0wnoLGc72K/TH3L4wnxIOMsPipnUZ6EuHty5kXSx+ncxxu8w/3od0muZuUcX1jamEm82BVxQGfjrJYpvIqhU6vNAd+PII2ezpx5nGIA5fJMZg3Tcw0rInZKoZUWWuw8IqNvxeAbPScx1WbsqdUeo44+uvW1Be7oY4IZX5bksozw969DASUEgK4044XHRqThigYrvwMFT13ISUgiBbZ1yqWj3syZ6cjWxeuAtnkXIoJppLpErjJRj8bZZEqpZMRxckm6j6EcJR996cfxZgirkmakK9Ge9ucoEQCsvFwD7gAe9q3LHdIm/1EUc8Lbsf4OxVtsch2287TA2Hd/ENG3rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zauZZECp5+kTGYexp8qKYChNklfCHvcqaGGyWLlb4QM=;
 b=YI/6fIIj34umJLQRfE8+yn6q7oaoonS+/xcMJ1KC9AOZ7o/d4M5qsgnpzGHG1d011k/mffDXvuFfd25HAaZoKlXlPuhHfR8cQIk2k+dfnwm7NETyAXddHsV/jy/NFSkNIRSYr2dWCu8dMbur2P9YpZgZPAoyAwv9ZL+xc+uTnS67Hy4C1hX5D7jM4npg+EGMwShtZ6Xe1O1R6yiXdySOljXn84+M1LZZY22FVomOJrwV0xBfDoZ1BuYwnKyGuSGyBdqMDVnLURSfvfy0PbOSBYvkzzBLvgiI6egHhI6XfEWubUvfiR5T+9x5f+cNdbEE+MTn0pibEoai0nhIVWMDbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seattleschools.org; dmarc=pass action=none
 header.from=seattleschools.org; dkim=pass header.d=seattleschools.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seattleschools.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zauZZECp5+kTGYexp8qKYChNklfCHvcqaGGyWLlb4QM=;
 b=VUmszdkKsVKkeLEfKiGekfszOgI5XHLZBLeNG+zIYPyt8Rsqsuf7/HHuGllkXdRQoGcnV0nkeIj2PWJ8kS3Y/Aqh6lydXeoAOkSRoWzw1KdfYphhKfkQnFTu5xxviv4ORE9meC5jLcZi9qCs/JCb+1xGuIrkvkHiZnfJJtb/YEJPX8g0ru3YgZs+fVcmIwAQJZ9aUn9JNvEyvTTxg6mOx/zx+m84AdqRzufXfiDuFuIMrnQqhALW8CoCiC3z5QN7AHozfsaWva++D/4q7ks18wmnpT9hf4k8DwpbLIPYDoyA0QD1/SiayaK5ng5/oK6DtewewgTrzeS954Deq7KVuw==
From: "Caveney, Seamus G" <sgcaveney@seattleschools.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	Carlos O'Donell <carlos@redhat.com>
Thread-Topic: [oss-security] The GNU C Library security advisories update for
 2025-05-16
Thread-Index: AQHbxvE3OapCdHuCE0+8eNcDICpHXbPWVWeA
Date: Sat, 17 May 2025 06:21:41 +0000
Message-ID:
 <DS1PR04MB96556A85F05BCD1105205EC0C092A@DS1PR04MB9655.namprd04.prod.outlook.com>
References: <3ac997b0-28a5-4129-af53-675efe4c2dec@redhat.com>
 <20250517055914.GA24860@openwall.com>
In-Reply-To: <20250517055914.GA24860@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seattleschools.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS1PR04MB9655:EE_|PH0PR04MB7867:EE_
x-ms-office365-filtering-correlation-id: 73c7bb82-eeb2-463d-04f7-08dd950b16af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700018|7053199007;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?DiV/bKJ6OWHV2NSuHXQGqZCtc4SfizHZUDcv2enWWDUqw2RClDcyXl7Y6Bts?=
 =?us-ascii?Q?JaESYIFfk4WZ4npT8j4uHf4UOBwdNjNGhwiupXL6uxCJDhQA+jgccqgjNNF2?=
 =?us-ascii?Q?vK5V6w8iHWOof9vMavp5Bft4RzX55B5rAW2wYPTlt3I5w+4srdwL0IV6Eefr?=
 =?us-ascii?Q?M9xsm1MY8T3pydRyqFfNFct5A7y9YuQiCP+SqlITq/hP224PhWuWkTqVFjyV?=
 =?us-ascii?Q?o0XrHpfEgyxT/u9ydvzI1uR41WMjZ0tK5pznOP7+cKI8PZ0p5nECVjAc5TCz?=
 =?us-ascii?Q?on+sYC+b6vHvaK3ZjqxeYxlHG0r53d9qksO+4iFMZF+VzD3pKT2yYKSB/gPj?=
 =?us-ascii?Q?cCWLs4yhv63kW2eY1P7vo986UleBiEup+TQRDQ4ZA0doJ1p73etH0uliWefm?=
 =?us-ascii?Q?PJIzDU/Y8xtoECfxOpLdh/ALTq3MfDeYubkp9Xt8v+9GJa17SmhrCo7yAVzm?=
 =?us-ascii?Q?PeTLrgya7azqnz2RaEzOEEQrOnE7BrtS88Z2E4pOyNWP8D/DVLhJZNzo5DxJ?=
 =?us-ascii?Q?c77VO/NX0RENzku1964qVMTizRGmwV0xloHDgKvgYA6PQIv6oooh7VjlX7HV?=
 =?us-ascii?Q?V6R9wSd+1ZiH+XEqlUplKLP7jkWZ5Q10mf38oEcgeCRiR+taXmSXf5A02YiP?=
 =?us-ascii?Q?gF4lIQZ9q1VuR+W8oOrQF0C81ADs8b/QgHcgwIhkJtLM6v3YLK2XhdgszBSy?=
 =?us-ascii?Q?ul4H9ZVdFalfKAiBhYQRSkskCPxuFtoJFMRfhdWiw/l4Zl79j5/wSCHiIerX?=
 =?us-ascii?Q?zUye7QvcJ7AxPmu89sSDN35N7fatsgly1wBlUOSKsNFwAT0KP9B7GekbaRHW?=
 =?us-ascii?Q?CcaQfSfipziudyAO0nFYEA+3A4Y+ixu5Ez2ZWU1m3o/mo2EYR7ECFkoHH+44?=
 =?us-ascii?Q?v3PL5iI8EkAUsiCEbRZW6eXIXTIGiG3Tsx5+KHv4+3gixNUcZVXvwgJpN0Hc?=
 =?us-ascii?Q?Pcjg/iabwQBN0lhOStkzJKujhsFPAw7Xduj2EGAp2sBjRSRLEsO3suhgN1pf?=
 =?us-ascii?Q?ovL5jKVnPceW2irwOB9Rdl22njmI1DTcr5+bexnWzEnAoQefTusID3HK3AGy?=
 =?us-ascii?Q?BF7dRj14bSWpGQqM5AbJp5T/suiEJqybFo8GFd4u5KvAtky6yRBBmYlZwM3P?=
 =?us-ascii?Q?7ghSvoKMTR9BArrYZi5yxJ61eJ5cLDvqHmrqKvUUomPQxRAN4boqBqjw8JdF?=
 =?us-ascii?Q?FnPaGXZ2s5YqGcsv55qQS/eH23fd8Q1oEyzeKKq29upQLcucxlV8/U7RNsO4?=
 =?us-ascii?Q?7b2F4Ds74u5kFnNgE0i5rqW8qXPrgnlxqUc7ilLuGnBlwzoc2Z7TdbCG70Xj?=
 =?us-ascii?Q?I/aZyvZLhTEwnMDpXBpDWIozCME9/fMQRDMPyrW3I2a3Uts3H1d4H24kmNWG?=
 =?us-ascii?Q?A4tNayJYwkOs/cC+TqqtMrMTv0Jca+7kptJVlM4PlZO2fUmSMGWOA4lof3UY?=
 =?us-ascii?Q?ZNDSBdlrgkPVCpDNDrdGj1GRojtYxt/LNslwDXMEDr9KYk1rfF/jVw=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS1PR04MB9655.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?4lwLmkAtE4okPy2ctCO5OkNEYXHWjCC9Gsj38P3Gqo88262CFeC5qT57M6vo?=
 =?us-ascii?Q?EBCJDwVK/FmzvTTSsaI2dtvZn2cEcPZxh/FG3WZvPoGFZU/51AOPK0zyL8gg?=
 =?us-ascii?Q?c0O5cgZG+HzMuZNbQSrys+Jd8n/YdQD7UZyZlJZUDojhFcfYH+5QwI9nzwQT?=
 =?us-ascii?Q?3Sh99jBcDe6uVCKhjTsD36E4+cInb6o47qNNWMf6y2aH8r0kgerhDNuRt1YN?=
 =?us-ascii?Q?/mVz2PQRlFQG8cPdVh5IKHfSTv8nLKdaFCNCfTHBmLgBr4C9sqkrZh/FXtYC?=
 =?us-ascii?Q?eYJk0cTtEgZidsoGSQWWLUBz7aR48tMv6MwYNILMrMroh8sWWodW/J0+nXGk?=
 =?us-ascii?Q?TOvwVyaMHE3pEGtSc/KsNqu9+jyloHs6eY0FDiW4o3vbX4J25WI5aRV6iPy1?=
 =?us-ascii?Q?TPMkzJbL9g5k9HGMkFt3Z8G03w2UyFMVejYVvB1qncwqIYDkXYKch2YxZFgx?=
 =?us-ascii?Q?LbEkVZo9Xbc6kITHk61/b985qgvx/YEw8W7GO10LdpaIC6xgJm82XgyvgmG6?=
 =?us-ascii?Q?0k1kCklAcFSL5pINyKTGOE7FrVU8LWZo19mq9R2rfPEI+qgKpu28IoKf5Xvn?=
 =?us-ascii?Q?3VSE+LlSLokQLDBrS6HnFvtOyNE/ELO2UnedNK8/4gOkCrtzbhGlkXnXShPF?=
 =?us-ascii?Q?9467J4W1mSrstjFkRsGzYMOzQIq3lKp3u/I4lmH4+58s4HgIazBvyuRRUUz9?=
 =?us-ascii?Q?yCAzg7NEkdjJ/S7bcnnIQBQbcYBVacmgVzBJmTVE23kpAt6PHhv2x8VD9JEO?=
 =?us-ascii?Q?R+nz9VjxQ2NOgxRmpa53pmrlH8aYTjuvO/+ZCBTGk2Cv+vh8fttRFSNrks+b?=
 =?us-ascii?Q?GRPMPnKML5CeRdXZFjjdgNtjHimUTUzeUBKZvWxKRhlo1Z4ORlxx5XrKbefM?=
 =?us-ascii?Q?Y9s7t07Mk5cWuVPPlR/PVU7je4UIZ9zeXuuyHccA/oZG67g2NU7Uap9uwJw8?=
 =?us-ascii?Q?yq0JF9Gibda6iZVohxCFzVIzxpjCpV01woOrF5tLga8jwXh1/hUt3fkH89+b?=
 =?us-ascii?Q?1LceapeTWenc/4+52jrWmYGl1+g3cs+67i3rPgygflsrPwlrpUcBcsxNoT1R?=
 =?us-ascii?Q?MEnb6sA1B/+Hq3r2ZP3tVXl7mfTtL5ZJwM/O5LuiJ9pLuih2gLydGoxTAGn2?=
 =?us-ascii?Q?NP++8sJDR0vdXD5T3AbRV12qivGq8cLquHqnZvTfRiijfURO6a4Xbk/HBnOo?=
 =?us-ascii?Q?EPIrz2lxRziYLtjPj/MZM50uhdNzWTDwS6uXpw6uqBIEu5esiQlX781AJDch?=
 =?us-ascii?Q?hG3kr9DVAzyVk48mOm07o9HCbDzCDm/ClvKBRotVtcBrUuSt9d+LEBRYH8xo?=
 =?us-ascii?Q?anb5ZRDZUiZaxihhZ2+nuDSSD6YaZ7eAst9UVCsFdVhP1QQ0e900CfA27jD/?=
 =?us-ascii?Q?ePu3I+50HltQ4uT/d/vHyiDFy00ZfYujlqfbU5TxaiLA8tCQLvGa0/GGUU6n?=
 =?us-ascii?Q?FZIbawQONcNR28n0no7UH5V3TQo2BfVFzv/+tXkduEMNqXrcQJiBkP9o8XoB?=
 =?us-ascii?Q?O94vAFuDKQGq/Fi1j6zirRmI2cL/ugO2RGus5ektGyDUO0CCEfmqfeJaGUZT?=
 =?us-ascii?Q?UHSCDV0DPabtTb4GSwf/jL8bfdJr5bhKK7cmXLtaDRT5vxxggt2+EXEUyWwH?=
 =?us-ascii?Q?Pg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: seattleschools.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS1PR04MB9655.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73c7bb82-eeb2-463d-04f7-08dd950b16af
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2025 06:21:41.3820
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d431d158-6074-4832-8783-51ea6f6dd227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ro9+Guys9Jgm8FiRFXoTc9Tv1cCqODXfWnvjLuEAyCtPezOU36dSFrdCDmlvlBGe+ETjBSeP/uveP1uWtxUyENP8uwe15vQGr6wyGkXOqJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR04MB7867
Subject: RE: [oss-security] The GNU C Library security advisories update for
 2025-05-16

> From: Solar Designer <solar@openwall.com>
> Sent: Friday, May 16, 2025 10:59 PM
> To: Carlos O'Donell <carlos@redhat.com>
> Cc: oss-security@lists.openwall.com
> Subject: Re: [oss-security] The GNU C Library security advisories update =
for 2025-05-16
>
> [...]
>
> Notably, Go produces static binaries, and I guess would include glibc fro=
m its own build?  Do they also use any of the affected functions?
> Searching around shows people building Go programs complain about the gli=
bc "warning: Using 'getaddrinfo' in statically linked applications requires=
 at runtime the shared libraries from the glibc version used for linking" (=
and ditto for some other functions), but only a subset (maybe
> none?) of those programs would be installed SUID/SGID/setcaps.  Are we aw=
are of any?
>
> Alexander
>

Go has poor support for SUID/SGID out of the box, due to interactions betwe=
en the semantics of goroutines and Linux setugid syscalls applying on a per=
-thread basis. AIUI it's explicitly advised to not drop/gain privileges wit=
hin a Golang binary itself. I would imagine capabilities have similar drawb=
acks since they are also per-thread attributes.=20

OTOH, much of the Golang software I've seen that does need privileges tends=
 to be run as root directly, making this attack a bit of a moot point.=20
