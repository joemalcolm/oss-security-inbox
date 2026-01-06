Received: (qmail 32043 invoked by uid 550); 6 Jan 2026 02:48:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28051 invoked from network); 6 Jan 2026 02:23:04 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J+l28Ass6vsBXiftZALJe//4QXEB6plDV6tIiqN6GQCLhwQlO71GtOvffBIxDUkvhNEZJV6StCFIHjVNRDQhr5Vxgq45yhiRKue3bcwtj7jBbB4akBXL/RMRRtTpwVQYJmGsXYhsG5inxt6JR33SE/MPj6hXwnaQUCHoYhxhEHL1+tZjmhYhgOJ35g4bQgTjxCYvLnv2TVkLccsfNqhQrjh47hEomNb5htQCyALjXXVID2IAxth60aBQIi2kGFarQAZkpww1x6XozrMVB+OQCNgJhjfbFaVBua5Yc+HYq4KBNU4Yi+5wgC4U8eSJPWkrthlIU4mo55jXBs24cReeXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p44qE1rjP5Un96E05ZM15pBnzINIH6FNN0qLBsGLufo=;
 b=F7jyP0UP2wHBc+kvHzxZ/WBBsAw8nlE2W3gH25Z+o4Vuq0P/VuuhEwNuFFl1MZ3h0O5YYXv4I/yDtFZb3+NpA1C0PTWyvvVcBaQQFFc9pEDbfXbRrhVe68gjKsr1UVaJyy33ocLwVFh1Xp20CiHd9Lhqv+6A4QaqS8T4/p09qaA4cf6gLBeskorO3VGWiWBBwYr+q7NK4vpakgQL89y50OPZhmBl+58hwtaan/n7r8nEOCvGN6zzCv665rD2y5TeYODkC2CusZ9R/hZ/VGnQbSbdXAUNovI1Lz4QUzh7uACxW0ua4F8RXskjGxVV8/p6lmChraloJnN40mq+Py+p6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p44qE1rjP5Un96E05ZM15pBnzINIH6FNN0qLBsGLufo=;
 b=SJJrPf7+pmT+tp4UUfBzGyRsM83vWHMYgsBx26tk7OBJnHJNxYh1UY8la1vABeJRUiH9xhI4RSGaEs5a/claxDO21ADJPk69WlaHKpjgs3pvQked/YAXJLV2vKaTJ+SGDutVmwwuPiHURWMXLXr5phVCopwg0yBk7/HboRg1vQw+Z8FJ5oS9K4LpOlyAAgjUlLbMwQDKAcgW9B4uDjJKlCA0bdjHnM24jBjXSILUdIQxRho9CBch6AGfwm1QxhVHw3a8+1Mw2ERBVgpjzeuWdkUxB8axeXXbwDGzcThLpc5skz7XDIFCuTfqvPNk4/fuegrXwq6z7l5Fq75Kmz/ztA==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Re: Best practices for signature verifcation
Thread-Index:
 AQHceOWNA9ZyWfnZ5Um30+gCdhSbFLU8L3lzgAAuSYCAAYX6a4ABIUh5gAHr2QCAAP8OGIABoqKAgAAChQCAAN976g==
Date: Tue, 6 Jan 2026 02:22:47 +0000
Message-ID:
 <ME2PR01MB36506B29C4635FB7A1D94D5FEE87A@ME2PR01MB3650.ausprd01.prod.outlook.com>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org> <87ms2y1d2m.fsf@gmail.com>
 <87eco91kzi.fsf@josefsson.org>
 <SYCPR01MB3661379F4E31EE1A57A2F310EEBBA@SYCPR01MB3661.ausprd01.prod.outlook.com>
 <7002eb83-6227-4de9-aa3a-bfe5cad62320@gmail.com>
 <ME2PR01MB36500CA1987170A857BCF637EEB9A@ME2PR01MB3650.ausprd01.prod.outlook.com>
 <aVuxyNKwrPhbE0SH@donburi.himad.notcom.org>
 <CAH8yC8mLpb6Gr63cQR2EmCfERvCjZ4qkcVgOtamki3cMFC1bnQ@mail.gmail.com>
In-Reply-To:
 <CAH8yC8mLpb6Gr63cQR2EmCfERvCjZ4qkcVgOtamki3cMFC1bnQ@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME2PR01MB3650:EE_|ME3PR01MB7604:EE_
x-ms-office365-filtering-correlation-id: a69436c1-1b3f-4fa8-ffdf-08de4cca7bea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|10070799003|1800799024|366016|786006|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?x+BMmKzWnaw8u50s2l4q6jQKp3pYDoCl7PTL6ixNsT0qXRycsCrgkjW1Rk?=
 =?iso-8859-1?Q?6liv43plN+7vBdhUbAHPjeOx00LN0mmFl/z2H/x19XxCl4+vEe/ZgRIZIX?=
 =?iso-8859-1?Q?5II3f3DMXMW5xIqzKI6eSol7VwxtPe0ge1uuITZrH9MBk+mYLCtCCPZc6N?=
 =?iso-8859-1?Q?lA0voIyumIvyqbSORqIkjOVKtltHaR+6PB/nAbs4H01bQ8ruMN69ypT1DH?=
 =?iso-8859-1?Q?LQv9bu0r9FEVWIKRoFczxTBEJOwWIhr0DE2Rs/CVSZLHgrUtxkAeS1Rw6S?=
 =?iso-8859-1?Q?LwqKrbw0uo88IVeBR1+mpN19jCsGijWn3jYxAkhJaEBH11PHvrcd0rG11U?=
 =?iso-8859-1?Q?BoXSPZofL4EXdQKJ9H+QCWW7NMqLW+3Dsqa+qDnbOEOH3WmOsFB+QudoUY?=
 =?iso-8859-1?Q?sENDdrN6M83EQDLSTsP0lOEsxA1nt7imVWPrUpoiM1RBhRyL6YSNQfG543?=
 =?iso-8859-1?Q?LUCH46HmfJcWlSySguXznEhjOOjM2orbwvytkAbdtuFdFan2+dEkZZ1Xqr?=
 =?iso-8859-1?Q?XL4d5iIz9/NdJC8T8PR9OgE491xSl9aceaHtknMQlnhoUYN4+xbHIk6Adg?=
 =?iso-8859-1?Q?Huymcjw1k1wqlAATPRcPYSwjH/pVfvHCFfL7OasSz8cC24JvWqkmjdG3zQ?=
 =?iso-8859-1?Q?9DBgK35fjYzltBsjrxAFMW2NMrJ5VVdtTzOshHEbTQg082rJzrvOKZo+03?=
 =?iso-8859-1?Q?acYWfczeOagDEUfQSqDUOKPhESYUIjzwuvpJ8+pPkaQrqIH2G9eBYp0fpR?=
 =?iso-8859-1?Q?7mPRRFQ+z+038TDv99OEsJUE5I6biDTtfKCT7OAW2TOo1NbEqu2ZsBEvYd?=
 =?iso-8859-1?Q?tJlloIAuXyFSY/CpJqx/YH2jlxwzSSD1ghiBxlUgH3+Br+Lfcd7xd/sPsv?=
 =?iso-8859-1?Q?6J+Abn1HtYEIYCLRLUpWWVtGoAWcKLvLE31U/o8pHh5/G61/keCvB1F/QK?=
 =?iso-8859-1?Q?uAALBQXALeI2BkgPuoS+KIoWD2VWUveuFYvg10qMrR6fvqGxFScewpNQxJ?=
 =?iso-8859-1?Q?PnaXggvmVZsq2t2rjpJ3MSMs/EL6OQr/w3AzoAkkASuBVdY7zSjY4c+J/H?=
 =?iso-8859-1?Q?8cqInQzWfgJiLx+mnB4cuqcF9PKSSsyoSSL7nIxhr8e0pOIVmKgWVXYZ/T?=
 =?iso-8859-1?Q?wKdBJ3ccVkIZkSrit6P0hc3ECgSDY5qq2V5cxeMui/Ddfif6YDzh7PcqTS?=
 =?iso-8859-1?Q?6RzJ0Mntg6FWJ7BOowEov6WkIBZHGjgiT/Y+Bm04iARuIfeWuQZ/Ygirzw?=
 =?iso-8859-1?Q?OWqpHVdDHCkOzNluhHeOXLb/QWkExDkW35isZMninILC9GhWM242KH1RG2?=
 =?iso-8859-1?Q?qui3ehCM6KovJcMDxCzvxN+RlllwakVF4o+tYDQit1HYqJwK5nW/eOYp+J?=
 =?iso-8859-1?Q?947WDI/dpMowNIqiC6MNtyY0ZTnxeGQbUcICP/rdNPc1DkM51szZ/II/W0?=
 =?iso-8859-1?Q?CX703Z7uX03xICJpOTF6/bb4qo4pYjOQl1/ULqwswYqEyn7ZJdHRD0lFRe?=
 =?iso-8859-1?Q?wEpJYp/YD36ruhq6YCHLmvOEHyZkOuVrgFjKGLoJZdvv8cXnvDz1iKH/75?=
 =?iso-8859-1?Q?0eiCE/o9S46H5nLDaSahJp5x2dH9?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME2PR01MB3650.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(786006)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?+hT29V8JUmmKy8ffe10EYcfndoloNOK5NwhSbvMsNJ69c52fvzNvOj3zty?=
 =?iso-8859-1?Q?kZy24MZuQjffVoNLXrJ/TEJr8WcxjOrpgWvw7AFhljRm4o1NKnyEERIZrR?=
 =?iso-8859-1?Q?gQgYDpdqEc9FzSCRDA5z4WXw5wA3BwiqTXNjGrnAoPBoIG1K7owZkC9XfK?=
 =?iso-8859-1?Q?i0AhwwG2wvpo9ybdjFcJK8bb08ZUL4kyU+5G78MEDl/i7i2iwdIu+p7oBk?=
 =?iso-8859-1?Q?rFDn0Z0N/peFRmP/23oUUBqLj456AbNNNLsoB9Ty5gHuIKOY9F9k35iX6L?=
 =?iso-8859-1?Q?zQIvRVNlVyvtgXmYpIWTjAs7BVJcwjX5i63SJDmAVHu9jwCJoh/e07cQQT?=
 =?iso-8859-1?Q?HjW07CTclyyAMhVCPDzeWzTFO3yQZ4QulD9G5RdxqpZiAZIcdM0G7SiTLe?=
 =?iso-8859-1?Q?NjYMAK6+GD3ClwNnYkFcml/6TKcPTqa04mCqVz9UYBtI29I4/F2ycYIuq6?=
 =?iso-8859-1?Q?QoBchy2DnbSBgTsvq6c00h29oS6xA2UyDSD650wx/rX546PCte1My/QtuH?=
 =?iso-8859-1?Q?3CiTj8CKt6J8N5NW6Y8PxuTMQA6ur7yyP8LZDFlEfdM7Wo3C/7ISWbx/sB?=
 =?iso-8859-1?Q?Gh+J/Utmt8xTBxvC5D50wegIPgiXFBO4HmcvGN4KIYAqKuAVw1tEmdHNkO?=
 =?iso-8859-1?Q?2oF19NoHIzspyYu/nlBUTMOQ+on8PVR5veQqbYHjcd2PLtxpsRElF8WuBm?=
 =?iso-8859-1?Q?9z03Alijtqi3g0TrJxbBrj2nHIjMjQWPiRZOh0kNI5FMcQQpyzKGTl02X1?=
 =?iso-8859-1?Q?7J5H0ZRQ1QfmXQ0UY7vwvHIG05Y94+HrMcVhe4+MaZDi7rs0p8uARkUe8M?=
 =?iso-8859-1?Q?QECadxjSu+2pz3US86bQjCNlDB11xCTUKu6FxB6CfJ4e2hdcH8TQgcUcAT?=
 =?iso-8859-1?Q?H58HeoitMz0rGlNs4kW2Otam+nzfydHsDHDV+QDwRJrHCz4CkRg3V2lMEM?=
 =?iso-8859-1?Q?TPj75tDhLGBw6n36mrjVIxnnXvtx7Fh9QK5phKoeMovrg90kxnjGZlT1We?=
 =?iso-8859-1?Q?1Q/yKHeApGJnDf6foGv5e89AHmr9Q1WitMuaNyrnnLerkmTEhYYjNbjBoN?=
 =?iso-8859-1?Q?b2z0uFncVPiCcErHdq894afFfRBbgO4G1R/Djwj+kB4qbLazgxt7E5R2f0?=
 =?iso-8859-1?Q?vgqO3daW//BDPrBGuuTqDsF8BoEsRIlusctPDIY37Qs9t8q1JvDNG27D0M?=
 =?iso-8859-1?Q?KK5T8qcLc1DHHimgDTX01oNDdRGCR4IScddOS9oxd5VYu/THWAZqlzq7tk?=
 =?iso-8859-1?Q?EZLGE6s146eVf0l5Atprkx6qJ6ygAd83h9ffizcoCABf8OW2kBXtB53JUF?=
 =?iso-8859-1?Q?jNi8XN8Z/INZDo7/jpq/tM6i3h/q10eLVeI13g0WK6HDET3YRmV6cxMhH6?=
 =?iso-8859-1?Q?wj0q5PGIDaDVFjvLwSzbmDGgdSt2NGFtpNszhhCFhNVE+io1oP2urIU2DS?=
 =?iso-8859-1?Q?84XECiLqhusoQ9RgNlarBYppW/0ALSBAMXH5lLBZgcGj0sJ9jHOoRTSy/g?=
 =?iso-8859-1?Q?RP/fileXzEK7pTWRxQoq6aA0U7TKiLdYu9tB7JH/Odb/h51bLP/L2TJDoy?=
 =?iso-8859-1?Q?xFuKVNYhR047cWF5Wiv/ly5ye/aMyY739qOLsC50TqGsu8cL9gXsDrwB3I?=
 =?iso-8859-1?Q?g0CuKgj+nWnTndBE7nvIY46W3uP7HqLkMFaPvr8S4w8Kiw3wrCHpWeFtdV?=
 =?iso-8859-1?Q?Lab3SKwtlP72Ly/lCpvB1XEnUzw5sYnyYRprubHNSoq3e0ZAq6+qO/pdhj?=
 =?iso-8859-1?Q?032PJBh/pzb3jgnW48S5/S4psZ39Tc7ydtIeY1r5orSttR9/gOmDOqXfVv?=
 =?iso-8859-1?Q?JeDgLBfP3wkchS7d8RC/eADAhnq/tCNFf+GvAP9K1WlcLCNo1EDYlxhh60?=
 =?iso-8859-1?Q?nW?=
x-ms-exchange-antispam-messagedata-1: D10a+wk9qQXAvA==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME2PR01MB3650.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a69436c1-1b3f-4fa8-ffdf-08de4cca7bea
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 02:22:47.9071
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xXxCyEmSrNbmLFTg9l+Jc6JwnrcjL8gqTFeH3H1I8blrAxZd+3n15ORHRV0dyhd1tyPWJosCBsdMsvRlqbThb8Th379mnLKmQvNpGpWRgl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3PR01MB7604
Subject: Re: [oss-security] Re: Best practices for signature verifcation

Valtteri Vuorikoski <vuori@notcom.org> writes:
>On Sun, Jan 04, 2026 at 11:56:06AM +0000, Peter Gutmann wrote:
>> As an aside, is anyone aware of a single-source design document for what
>> Authenticode does?
>Are you looking for something more detailed than the Microsoft document ti=
tled
>"Windows Authenticode Portable Executable Signature Format" from 2008?

Not more detailed, but something that talks about the "keys and signatures
fall from the sky and the timestamping fairy blesses them" issue.  The
referenced doc just covers Microsoft's additions to PKCS #7 and what gets
hashed for the signature, it's just another big-bagging format doc along the
lines of RFC 9580 for the OpenPGP equivalent.

I'll try pinging an exmsft security person, it may be that such a doc doesn=
't
actually exist, or is internal-only.

Peter.=
