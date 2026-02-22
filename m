Received: (qmail 16168 invoked by uid 550); 22 Feb 2026 19:46:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16062 invoked from network); 22 Feb 2026 19:46:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=cisco.com; i=@cisco.com; l=26856; q=dns/txt;
  s=iport01; t=1771789604; x=1772999204;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=Lonbe36NEzENUuyfXZGxAYfRIhGL5YYYNbxU+QOcpp0=;
  b=LYFDLDDNTke/vIsIJiobO4zNVMEMOJnRKZZa1YK+S3BkqMEOpJtdRY0s
   AvGYVeMQZ5AfO4lmXqs1cfi+Y6GMmRaF4hhbL9T6UiQrL51svYdjPBhHg
   YMjXiN18hSyNft4UAuyO85LtYS3AqVewsJ8jWf9uJl0tMy5Ce+pOVqIvD
   BOXPPQcLzGPd+ZlVlxZzr6KFGjv174ticHWZKlRg5EhL6lqFj491NPj3N
   YsgHlywg3mq6cOnyKioIhbjrqxPx14D3iUlJO0Z0eE2QUGLyB19QrUSMK
   j0he4cdPy1kNS7X4lGT9LXHoYtY1DqsJg3pK9CAwXM3FOR+NvJ+7pHNiJ
   g==;
X-CSE-ConnectionGUID: QFGUMqoURqSMibZvj/zHmA==
X-CSE-MsgGUID: PDj5p4LZRiSeoXa7+ztAmA==
X-IPAS-Result: =?us-ascii?q?A0DAAABRXJtp/47/Ja1RBgMcAQEBAQEBBwEBEgEBBAQBA?=
 =?us-ascii?q?UAlgRkFAQELAYE8MVMHfgKBIUkDiCADhSyIeQOBE4pRhWaMUBSBaw8BAQENA?=
 =?us-ascii?q?i4BDhQEAQGCE4J0Ao0fAiY2Bw4BAgQBAQEBAwIDAQEBAQEBAQEBAQELAQEFA?=
 =?us-ascii?q?QEBAgEHBYEOE4ZPAQyGWgEBAQEDARFaBgcQAgEIEQMBAQEBFQsHByAHChQJC?=
 =?us-ascii?q?AIEDgUIGoJcBYIdFgcDNgMBAg4GnVsBgUACiit4gTSBAYNsQdkWDYJegU0Bh?=
 =?us-ascii?q?TuCeQQaAQEqSWyCW4EhFRsEHYIPgjMnG4INgRVCgjAHMT6BBQGBGUICAQGBF?=
 =?us-ascii?q?xsDBwEBCgQUCg4GAQYPCAEIg06CDSIEgg0VgQ6BRRx2BYVvBQGBRoEHgg6GH?=
 =?us-ascii?q?FJyIgMmMywBVRMXCwcFgSNDAyovLSMPPAUtHYEjIR0XFB9YGwcFEiEqB4EqA?=
 =?us-ascii?q?gIEghN7ggEPhmp5Ay5hGg4iAiwSXFAFPgtgBVEDC209NxQbAwSBNQWNOAdUF?=
 =?us-ascii?q?SqBQ2oHFic3EAoBByICIi0JWgIPChEBIwEBIwUGCQILBikDkk0TCYMrjCqBf?=
 =?us-ascii?q?IIhnhtNcQqEHIwegxaKKIIAhjIXhASBV4s8hwKSUpkGIoN1hw+CY4QJkSsCK?=
 =?us-ascii?q?ggZBYUHAgQCBAUCEAEBBoFvAzINHoEucBU7gjMBMwlJGQ+OLRaDXmqEKYJms?=
 =?us-ascii?q?wZ4AgELLgIHCwEBAwmRagEngVUBAQ?=
IronPort-PHdr: A9a23:6JT/AhED+qOBoGLYp+mIep1GfhMY04WdBeZdwpMjj7QLdbys4NG5e
 kfe/v5qylTOWNaT5/FFjr/Ourv7ESwb4JmHuWwfapEESRIfiMsXkgBhSM6IAEH2NrjrOgQxH
 d9JUxlu+HTTDA==
IronPort-Data: A9a23:X0nhla4YkSa75jaN54LTegxRtGjGchMFZxGqfqrLsTDasY5as4F+v
 jZLXz3UOvuNYDD9fognaoiw9E4GuZCAm9IySwpqqShhZn8b8sCt6fZ1gavT04J+CuWZESqLO
 u1HMoGowPgcFyGa/lH2dOC98RGQ7InQLpLkEunIJyttcgFtTSYlmHpLlvUw6mJSqYDR7zil5
 5Wo+qUzBHf/g2QqajhOsfrawP9SlK2aVA0w7wRWic9j5Dcyp1FNZLoDKKe4KWfPQ4U8NoaSW
 +bZwbilyXjS9hErB8nNuu6TnpoiG+O60aCm0xK6aoD66vRwjnVaPpUTaJLwXXxqZwChxLid/
 jniWauYEm/FNoWU8AgUvoIx/ytWZcWq85efSZSzXFD6I0DuKxPRL/tS4E4eBKM3x8NuBlx07
 Mc9KTo/cBLElcKz6efuIgVsrpxLwMjDJogTvDRkiDreF/tjGc2FSKTR7tge1zA17ixMNa+BP
 IxCNnw1MUmGOkEVUrsUIMpWcOOAmmb2fz1HoVi9rqss6G+Vxwt0uFToGISKIIDUGJoOxi50o
 Er+02akGk0+Buae8jeCwnvzxf3TtCbSDdd6+LqQs6QCbEeo7msIE1gNWFCmu/ilm2a6WslDM
 AoT4icosqE28AqgSdyVYvGjiGSPshhZX59bFPc3rVnQjKHV+A2eQGMDS1atdeAbiSP/fhRzv
 nehlNLyDjspu7qQIU9xPJ/Nxd9uEUD59VM/WBI=
IronPort-HdrOrdr: A9a23:RBxTQax2pfAh/pDZt87UKrPxbOgkLtp133Aq2lEZdPULSL36qy
 n+ppQmPEHP6Qr5AEtQ5+xoWJPtfZvdnaQFh7X5To3SLTUO2VHYY72KgrGSuQEIdxeOktK1kJ
 0QDJSWa+eAQ2SS7/yKnTVQeuxIqLLogcLY4Ns2jU0dMT2CAJsQljuRfzzraXGeMzM2fabReq
 DsgfZvln6LQ1hSRMK9AXUOQujEoPP2tL+OW3Q7Li9iwjOjyRez5pDHMzXw5HojujV0rosKwC
 zgqUjU96+ju/a0xlv3zGnI9albn9Pn159qGNGMotJ9EEStti+YIKBaH5GStjE8p++irHwwls
 PXnhsmN8Nvr1vMY2COpwf30QWI6kds15ai8y7bvZLQm728eNsIMbsHuWufSGqe16MUhqA47E
 uM5RPBi3MYN2KZoM233am5a/gjrDvGnZNlq59Ts5SaOrFuMoO4auckjRho+JtsJlOJ1Kk3VO
 ZpF83S//BQbBeTaG3YpHBmxJi2Um00BQrueDlJhiW56UkfoJlC9TpS+OUP2nMbsJ4tQZhN4O
 rJdqxuibFVV8cTKaZwHv0IT8e7AnHEBUukChPfHX33UKUcf37doZ/+57s4oOmsZZwT1ZM33J
 DMSklRu2I+c1/nTceOwJpI+BbQR3jVZ0Wh9uhOo5xi/rHsTrviNiOODFgojsu7uv0aRtbWXv
 6iUagmSsML7VGeb7qh8zeOLKW6c0NuJfH9kuxLL26zng==
X-Talos-CUID: =?us-ascii?q?9a23=3Ad6VhxWoLWg4h1N20O+ZDF07mUfkLXUD41XDtGVa?=
 =?us-ascii?q?DLGdjeqOXDk2w/Yoxxg=3D=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3ANPu0Zg4cqKD25BN4jTl1UWeMxoxQz6bzEBwpo68?=
 =?us-ascii?q?HgMSDBSUveCWBpTGeF9o=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-CSE-ConnectionGUID: a/MFgvftTMCVb9iH6DIWyg==
X-CSE-MsgGUID: qFQPuDmBSKi/OFF4Xve+yg==
Authentication-Results: alln-opgw-3.cisco.com; dkim=pass (signature verified) header.i=@cisco.com
X-IronPort-AV: E=Sophos;i="6.21,305,1763424000"; 
   d="scan'208,217";a="44889787"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XCGkCZVEe0IhQsunZiFfVT2s89b3nLGp7gsscXiJudRJw04JJBK1+gRkG99CPEJoaStVv8Oev6Bbd/Xnbv0TyjzgNIspv4b2YShPt6oQOOOU3WzPjDXHtVDaBu0QbElNp3v7sRre6r8woXAidddGBLPbgoCeBYmKjgv6D+i3TAdyuslI1Fzls9TCG/bgK315PO3C3Ox75/D0eHhbJ9fYmppgaH8vb+CE70JzsbtMR8TppusQASrUXboUA+eUyECIK1ZMpGnWnbqryKeVSoRUHutX+kmkT9MErm/W+euNvPmp9dCXIBN0jUPLujomo8a5wqmSEL4H3AN6H1nk3q6kaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lonbe36NEzENUuyfXZGxAYfRIhGL5YYYNbxU+QOcpp0=;
 b=RtsuHeL2X8VIrfm+3ObdVFaxlP7iyo98vzpgp7I+Y+t8/ek/NkkR5Kr89MumVOTlot6XNhbol6f6p9t0LHdcYOEwGTibR6boSVOPYKSVMZr7+Sz5U1aZ9zs4OGA7d6DKtTiOhnFIAsYDGOS+RIDasC/NFOJTIupbrPzFSLW7cKJ+SNTPPbp7d9aWVVq1SAgRZlCthpDMdvIzPBAr4/CnYNWAcDZxJ7TDN1lFYsC+X4Jjkq4gcdV+nc7QQonWm5+x00moyb8Od4OqKEHsxA8yA+BnP5fqqNBe2BqGzmT1yhILpofTHYXnkTFfV61QlD1YZbE2Sf+FjQdDQdGNRnM86w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
From: "Tim Wadhwa-Brown (twadhwab)" <twadhwab@cisco.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Raul Vega <raul.vega.dv@gmail.com>
Thread-Topic: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE
 risks
Thread-Index: AQHcoT1u6Mb2XXahHEmrEl+nCKAn7rWPIdjm
Date: Sun, 22 Feb 2026 19:46:29 +0000
Message-ID:
 <SA3PR11MB7583F216652A7774997BE2A2DA76A@SA3PR11MB7583.namprd11.prod.outlook.com>
References: <20260219011438.GA17271@openwall.com>
In-Reply-To: <20260219011438.GA17271@openwall.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA3PR11MB7583:EE_|IA1PR11MB6268:EE_
x-ms-office365-filtering-correlation-id: dad0a849-0a9b-4398-7bb7-08de724b1277
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|376014|8096899003|13003099007|7053199007|7142099003|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?P3YCqLD99SdUMVZuUt8Uo1ZtMDMfXNFd6RY9PS2k96NEdgeDhKtB687T4O?=
 =?iso-8859-1?Q?ebY83S7QWnFnKt1Dyzee1wDadPzftzl6tKU2ePkdGH9Bo6m6mmwU8JHi0S?=
 =?iso-8859-1?Q?FyLOdzSzr+RyLtWIS7LSzDzZPkOvDfNEPuQtx/PeokBbW1oZQAEmjUQf2V?=
 =?iso-8859-1?Q?nyuwR8aJlt1EKkWKFyT0vRpnni4aLvEoUjPCQFA7F4ONS2BDyK9ACZbMB6?=
 =?iso-8859-1?Q?JnrKtMo7nrKgcz2X4G+9i/PibTDk7yvtEYvh70CDfKZIo2B3kBmNYWHi9L?=
 =?iso-8859-1?Q?Phv+BOOZzn5tjbzrihH6ZcnNAAVu6r+Kyyda2rAauQe77Jtfjm7zbkTYjs?=
 =?iso-8859-1?Q?KlyGxwyAGOlPTgt0Rp2q1sFpEilX1MSBR86fyn/S8dwYbbctSwVM+gc7gB?=
 =?iso-8859-1?Q?lIsnHjLIh5u5Rl03M5Df3Kw/3XSSzPjSkvx2P2NCKyKAekARMZkmCm2AQO?=
 =?iso-8859-1?Q?QERBzx0DpuQdTlVykTSxJfBegfF1V8fKWszSSUjg3PzyGexDJ8KBNGH7Xz?=
 =?iso-8859-1?Q?luupLdHpzls37G00xNsLsMi07x8fjrSKLhEg2yesn+WMvmz7QuVIm5hXA/?=
 =?iso-8859-1?Q?ra1FIXyW2CgcDNQbkVUPFNAsD486T2rtxCLLMn6dYTTM1EQUP5fQDffGPF?=
 =?iso-8859-1?Q?wpYg9iHTXALG2jGY8OidEHROX9pm8pWBdKF40l5fN4rkIffZxaXQ2LfDRK?=
 =?iso-8859-1?Q?iM0mqd9oaLnFK+JDMX2mofWe27/Gisp2l1U8G/kFsKM39C2MArbKs9QQBi?=
 =?iso-8859-1?Q?5SX/ie2rMLRHj+lYgvzQMiXNAyM0lPr6J02UjNdJ2sbS7ZaSWuqP0pw8bO?=
 =?iso-8859-1?Q?/hgmv0B6MGF5H6CJCYuHPzk+gBAxM2QEWTVASIAOupasmR9Yl7PeFfYQd8?=
 =?iso-8859-1?Q?OXHrKi4QplD70Zr+v1XDLMN3ANdyOEc5KbgFvsYqI+nAwrLz5zyE1D2z3v?=
 =?iso-8859-1?Q?EFRjLuD9rFfsxdkgyof72K3L0NJxnfcoqf4Hziw+EmTgHcFe6cdmBpbTPx?=
 =?iso-8859-1?Q?uyKO9zpCvoxY46R3e5rirnW+T+JXFs0rF1oLBbHNgZCvqYd23IB8HubsVv?=
 =?iso-8859-1?Q?PvvIwkfDhu0eyH07OStXwor+Fqg0e1mlKIVbh2/qw6r7AvBIB90cpeM6sK?=
 =?iso-8859-1?Q?8YbSV41oa8vK9aleKZC4Tv4hSwtQIBmql9GxSfYpJiaAFgm6Vp1E6G8E4x?=
 =?iso-8859-1?Q?wI2K/8BCdrG2cAxva5DvKC0d11/9HEMZXMNVF0gef1QniOWf9CFRyYB4sN?=
 =?iso-8859-1?Q?nLVO5yhQRQQO9eN4ApZk+RND/TqwwIh3hdFu6qI44Wbadwd818l/PAFW0S?=
 =?iso-8859-1?Q?PsLeXK7m47wba5uLKq6biKKYrncnf8ae2jo6UfRTvsmSOBSZS6eBDW9QVc?=
 =?iso-8859-1?Q?h6iwTvfkU5mRYwPIxSuwoSl2iJSMgw5VRJFHHUThvV/vESGgYOOmE3kRsW?=
 =?iso-8859-1?Q?m7lZyeVskZtipdgaU/6dmObGwYZdilkb/cxCf0WrmRRLJuwVJRsjlbC1px?=
 =?iso-8859-1?Q?R5XdbTNaAIZ1qQgGgJfOj+TAjb4YDTkHBMhDCYfoIbnBNQ8hJTT0FN486S?=
 =?iso-8859-1?Q?GW654x+PbIGjiSM9nXoC4Y3ActNspTwJXZWAxQwATIVDAuZrYtObiWl08j?=
 =?iso-8859-1?Q?VYLbAN01GiQA9+MpFOwjhZvQTwfAd0x1nHpkuaWB8ZM2o5pdfBGGmwmOP2?=
 =?iso-8859-1?Q?ctCcq6h1qLyxyOjXWw2/bLdIxklnR4Ayatvm60d/?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA3PR11MB7583.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(8096899003)(13003099007)(7053199007)(7142099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?fk+ZLMWbeZXKu6Q6D7eHGHsA9uBUWbOD/2DH02eeNvOfJr+od1bSzDavtG?=
 =?iso-8859-1?Q?ivsGVh+xg8xMvR66JE5dbOOJYtIwzf7lgJvnJMK+bPP/2U1ubjLbiF3rwd?=
 =?iso-8859-1?Q?19uGs/0j7x9jWJ1EFMr8sSazA8VCOQ4oe7iJ18KF1Mlsh6TlZU+SyaCJb9?=
 =?iso-8859-1?Q?bFgMBzSv4H6Dd3hiPXDzIV2mpBD0UtX40cN3nseL1vqEfqUQq+FihMCSC+?=
 =?iso-8859-1?Q?h1qNg+L05evAl9cIuVJ8qK6GqdSSSpIGuWB81s5GdYQPtr/4WNk+hdCWmh?=
 =?iso-8859-1?Q?szqaXxMOcnynoJ0gfECUlKcUltGjoBLD74u54pIEglEzAllma/LfT2yXg+?=
 =?iso-8859-1?Q?K6COnLdav/d2FAc0CP9kPHeuuNIoB+a18SMpuuuw69P5BxD/mBJu63p16J?=
 =?iso-8859-1?Q?ru31T7zrZJ0EyHSKjYvcErYGQBMfOWD69BTR1Hl0jATLaqCxfhwSmNCd6q?=
 =?iso-8859-1?Q?ER8CMD7aZVF9FH5mz2ERoyxCCi06Yc1BJRazDYGZKj1f2O5TJPyTl1drut?=
 =?iso-8859-1?Q?WHh00tpKSQ7OPHFJIfSmZT+Z8vN0zEQxqbVzZAm7vwNy4JVKVZn2QxLIWX?=
 =?iso-8859-1?Q?mb+gzhBdNI2kML7pL/wK7AN6ZFlWg8p0pwsXbIfokvVdPvLPCu3tTSfFia?=
 =?iso-8859-1?Q?TA572pOck1obXMvSOC1JvyugIIm3RE2krUg/VUJ2Em3LdnU2Dl3SNtq1S6?=
 =?iso-8859-1?Q?tGaB/rssrqEeLrHobdoRyPP3juYcKg8+udE/89+y/CPv+tOxpmG4Axi+ne?=
 =?iso-8859-1?Q?RJ9QDmsEzjR1iTquQcJKucQyvpeVB6uQvZ6UhxYBO4wwPTMOrJxIIHhlk6?=
 =?iso-8859-1?Q?IOHzvdl8VDW90Gs0xZ3Nw8m0bFOrRYwC8I4nyAgbeDBxQoztjh8oWX8UQY?=
 =?iso-8859-1?Q?Z2EBxaWpYqkGaQrm98aZxBYuuUlShmGerJNwYJ1Kd9PGngE55ApYCOqSAs?=
 =?iso-8859-1?Q?1y3MbEh/DFzfLLt97yAcPp8/qEoSYiOf7VWR2X8vRxSh6x9H9PWDvCOhSt?=
 =?iso-8859-1?Q?G12ZG8oEhpl9AiLpyHvZpCVwkcxn80nj+H6bM8gQHDDtSHhQjNNY8SkCrO?=
 =?iso-8859-1?Q?L07N5ymveR4n6X8w0AUTt4Rah4Vh3BvP2AHpZrUa6xFHcuTjW2Hi5+ZmCA?=
 =?iso-8859-1?Q?c27N3QgsnfXy3SCbXik2K1h9Si/NGbfZ+gXSmfeLKZxXebUVKIhHdSVge7?=
 =?iso-8859-1?Q?38cnpukjvFl1zPlqWzvpyNs3L4H/F2k/NwKmHyuXzy1ciyHQcwlWCDPm2e?=
 =?iso-8859-1?Q?rBdeI6t6Aalr+n6CCNZpgej0FWJY73qzo14gRiR9cT4aw2zGHFFCgg5M9L?=
 =?iso-8859-1?Q?7ZFl7ng/D2hdN9Mh1Pdw7AqsPooj0hG2YehrZUeds8ONtQRWasLxZp1CPD?=
 =?iso-8859-1?Q?8DeHLlwbIc8ckPAiHT0a6zAp/g1npuK9gBlHHgre9Tz8+pv/afdYjQspnF?=
 =?iso-8859-1?Q?kAmGiOk1g2WXePlher09fFkjuTs6NZgH4B8TgGZu0CDbd0oawe9H02Xcuy?=
 =?iso-8859-1?Q?fkU/PU2UvaMqcGMK8Knct9BXPqKox8fnehSsgFnfVoDF2BeeYtHvIlCazM?=
 =?iso-8859-1?Q?ghjwsevpm5EXHrX6WbdAnSAAgBEEwryYS/T2wS0lsRW2eAVrJ1/HfhwK0P?=
 =?iso-8859-1?Q?5hutArmvPePmWgh3+14oGz69a/1ZIiVplq4LsMfmgFg2VwXSOtwNkPpTJd?=
 =?iso-8859-1?Q?r5F91uD23v9gl/sj3lFCEB0D7OHQP4AaxkxcX9XtGNnZ4MTsV53xMyko2a?=
 =?iso-8859-1?Q?t/PR7jcXGcMgvqObKSSuMSyeBUTgKc77Vw8XDnXchiRPko?=
Content-Type: multipart/alternative;
	boundary="_000_SA3PR11MB7583F216652A7774997BE2A2DA76ASA3PR11MB7583namp_"
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7583.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dad0a849-0a9b-4398-7bb7-08de724b1277
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2026 19:46:29.1056
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pvw4jqflVOvkB1YjJOMLctCAjsW6CoxDZpQMph5h0MwtzRamnAPnu1G7vnoBlnBwBqXQF+pqSKRPTS6GH5Ko1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6268
X-Outbound-SMTP-Client: 173.37.147.251, alln-opgw-3.cisco.com
X-Outbound-Node: rcdn-l-core-05.cisco.com
Subject: Re: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE
 risks

--_000_SA3PR11MB7583F216652A7774997BE2A2DA76ASA3PR11MB7583namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi *,

Apologies for the Outlook formatted response. I'll keep this short. I had s=
hared this directly with Alexandar and Raul but Alexander suggested I write=
 something up for the list.

The issues described are at their heart real in that threat actors (and peo=
ple like me) absolutely do dump memory and steal files from /tmp when abusi=
ng KRB5 trust relationships. The two questions for me are a) given AI's usa=
ge in crafting the report, is it novel or is it discussing something that h=
as previously been discussed with vendors - it's not, see https://github.co=
m/CiscoCXSecurity/linikatz and various other (un)related works, Linikatz it=
self was published in 2018 and b) if this is a vulnerability - aside the su=
btleties of specific KRB5 implementations, for me, this feels more like eit=
her a configurational weakness than a vulnerability per se.

As an aside, abusing ccache is specifically tracked within ATT&CK here: htt=
ps://attack.mitre.org/techniques/T1558/005/

Tim


Tim Wadhwa-Brown

Security Consulting Senior Engineering Technical Leader

CX CoE Security

twadhwab@cisco.com<mailto:twadhwab@cisco.com>

Tel: +44 208 824 0239

Mail Stop BDLK09

9 New Square Park
Bedfont Lakes
TW14 8HA
United Kingdom
cisco.com | labs.portcullis.co.uk





________________________________
From: Solar Designer <solar@openwall.com>
Sent: 19 February 2026 01:14
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Cc: Raul Vega <raul.vega.dv@gmail.com>
Subject: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE ri=
sks

Hi,

Raul Vega, CC'ed here, sent the below AI-generated message to
linux-distros on Feb 5, without disclosing the use of AI, yet correctly
set the public disclosure date to "2026-02-18 (14-day embargo per
linux-distros policy)" (or maybe the AI assistant did).  Unfortunately,
there was no further correspondence (in particular, I got no reply to my
reply, also included below), and Raul failed to bring this to
oss-security on time on his own, so I am now doing it for him.  And yes,
I consider this borderline abuse of the list, which is why my tone.

My summary of Raul AI's message is that Kerberos default_ccache_name
FILE is relatively unsafe compared to certain other possible kinds of
credentials cache supported via this setting, especially with respect to
local file inclusion vulnerabilities in other software such as web apps
running under the same user account.  The message suggests to use
KEYRING or KCM instead of FILE.

https://web.mit.edu/kerberos/krb5-1.22/doc/basic/ccache_def.html says
FILE is the default.  So it may be a case of unsafe default.  Can the
default reasonably be changed?  "KCM caches work by contacting a daemon
process", so will require this daemon to be running, and "KEYRING is
Linux-specific, and uses the kernel keyring support".  So maybe Linux
packages can use KEYRING by default?

In Heimdal, this setting is called default_cc_name, apparently with
default_ccache_name added as an alias for MIT compatibility a few years
ago.  I couldn't quickly find what the default for it is.

BTW, if this actually required pre-publication discussion, I'd have
insisted on bringing it from linux-distros to the full distros list,
since Kerberos is not Linux-specific (and predates Linux).

I'd appreciate follow-ups by those familiar with Kerberos (I'm not)
and/or its packaging.

Alexander

On Thu, Feb 05, 2026 at 10:24:03AM +0100, Raul Vega wrote:
> [vs] ADV-2026-005: Kerberos Credential Cache Lifecycle Failure and Bearer=
 Token Theft
> Vulnerability Type: Semantic Design Flaw / Credential Dumping
>
> Affected Components: MIT/Heimdal Kerberos, Linux Core Dump Handlers, /tmp=
 Defaults
>
> Researcher: Raul Vega del Valle
>
> CVSS 3.1 Base: 7.8 (AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H)
>
> CVSS 3.1 Chain: 10.0 (Critical) (When chained with RCE/LFI)
>
> Public Disclosure Date: 2026-02-18 (14-day embargo per linux-distros poli=
cy)
>
> Executive Summary: The Semantic Gap
> The core of this vulnerability is a semantic failure in object lifecycle =
management. While the Kerberos protocol is syntactically secure, current Li=
nux implementations fail to semantically bound the identity token (bearer t=
icket) to the process lifetime.
>
> By weaponizing the "Crash and Trash" scenario, an attacker can transform =
a transient authentication secret into a persistent forensic artifact. This=
 allows an unprivileged local attacker???or a remote attacker via an RCE/LF=
I chain???to bypass Kerberos protocol guarantees and achieve complete netwo=
rk-wide identity theft.
>
> Technical Analysis
> 1. File-System Persistence Vector
> Most Linux distributions default to the FILE: ccache type, storing ticket=
s in /tmp/krb5cc_*.
>
> The Design Flaw: These tickets are bearer tokens. Possession of the file =
is equivalent to possession of the identity.
>
> Exploitation: An LFI (Local File Inclusion) vulnerability in a web applic=
ation can be used to "pull the trash" from /tmp, granting the attacker a va=
lid TGT (Ticket Granting Ticket) with a ~10-hour TTL.
>
> 2. Memory Lifecycle Failure (Crash and Trash)
> When an application handling Kerberos authentication crashes, the system =
generates a core dump (if enabled).
>
> The Semantic Gap: The credential remains in the heap or stack during the =
crash. Because many distributions do not restrict access to core dumps or l=
eave them in unencrypted storage, these secrets become "trash" that is read=
ily harvestable via standard string extraction.
>
> Impact: This bridges the gap from a simple application crash (Availabilit=
y) to a full authentication bypass (Confidentiality/Integrity).
>
> The Grand Chain: The Case for CVSS 10.0
> While the individual components may be rated "High," the Semantic Address=
ing of this flaw creates a critical chain:
>
> Entry (RCE/LFI): Attacker gains limited execution or read access via a li=
brary flaw (e.g., Axios SSRF or Undici CRLF).
>
> Pivot (ADV-2026-005): Attacker provokes a crash or reads /tmp to dump the=
 Kerberos ccache.
>
> Escalation: The stolen ticket is replayed from the attacker's machine to =
access internal high-value targets (LDAP, S3 via IMDSv2, etc.).
>
> Result: Total identity takeover across the infrastructure without trigger=
ing traditional "credential theft" alerts.
>
> Actionable Remediations for Distributions
> Distributions are requested to evaluate the following systemic changes to=
 their default configurations:
>
> Restrict core_pattern: Ensure core dumps are directed to a secure, root-o=
nly directory by default.
>
> Default to KEYRING:: Shift the default default_ccache_name in /etc/krb5.c=
onf from FILE to KEYRING or KCM (Kerberos Credential Manager) to keep ticke=
ts in unswappable, process-bound kernel memory.
>
> Enforce fs.suid_dumpable: Harden kernel parameters to prevent unprivilege=
d dumping of sensitive processes.
>
> Researcher: Raul Vega del Valle
>
> PGP Fingerprint: [Your Fingerprint]

On Fri, Feb 06, 2026 at 10:06:18AM +0100, Solar Designer wrote:
> Hello Raul,
>
> When you bring this to oss-security, please start by disclosing your use
> of AI to generate your message.  Yes, there's a reason why I am so
> confident, and I find it borderline abuse when you send AI-generated
> messages without such disclosure.  This is not the norm, at least not yet.
>
> On Thu, Feb 05, 2026 at 10:24:03AM +0100, Raul Vega wrote:
> > Public Disclosure Date: 2026-02-18 (14-day embargo per linux-distros po=
licy)
>
> This is up to you, but personally and as linux-distros list admin I do
> not see the value in having this information under embargo.  You could
> as well post this to oss-security right away.  Just let us know of your
> decision on this.
>
> What you describe reads like publicly known behavior of the software in
> question.  The novelty, if any, may be in combining those pieces into an
> attack, yet this sounds like public discussion material to me.
>
> > Technical Analysis
> > 1. File-System Persistence Vector
> > Most Linux distributions default to the FILE: ccache type, storing tick=
ets in /tmp/krb5cc_*.
>
> What are the owners and permissions of those files?
>
> > Exploitation: An LFI (Local File Inclusion) vulnerability in a web appl=
ication can be used to "pull the trash" from /tmp, granting the attacker a =
valid TGT (Ticket Granting Ticket) with a ~10-hour TTL.
>
> Would a web application have permissions to read the /tmp/krb5cc_* files?
>
> > Because many distributions do not restrict access to core dumps
>
> Which ones, for example?  And what do you mean by "do not restrict"?
>
> > Actionable Remediations for Distributions
> > Distributions are requested to evaluate the following systemic changes =
to their default configurations:
> >
> > Restrict core_pattern: Ensure core dumps are directed to a secure, root=
-only directory by default.
>
> This is typical already.  However, you can commonly access your own
> coredumps.  Same with your own /tmp files.
>
> So are you talking about potential restrictions within the same user
> account, so that sensitive information processed and available to the
> user previously does not remain available to the user for too long?
>
> How exactly does fs.suid_dumpable come into play, then?  In other words,
> do your suggested attacks involve processes that are "dumpable" or/and
> those that are not?  Which ones?  Please be very specific.
>
> I suggest that you clarify the above things in the public revision of
> your advisory.  As it is, it reads like a mix of sensible content with
> everything else an LLM "thought" is relevant, plus the sensationalism.
>
> Thanks,
>
> Alexander

--_000_SA3PR11MB7583F216652A7774997BE2A2DA76ASA3PR11MB7583namp_--
