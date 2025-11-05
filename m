Received: (qmail 17861 invoked by uid 550); 5 Nov 2025 15:02:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19769 invoked from network); 5 Nov 2025 12:30:55 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F/ag8JQN7g+o+grmOQ9stSPXnizwavjQ7aCJEW/uPH6cwlRDJmfOgyts/EBgtPn3ZECi3NhpMV+1DhwbW/58v4dM1V/17dGqrSe4xli72pOhKUoYHo2mYsdK2bHrpMFA8EiBHhs9TcNZwdf4AxbdM5vDKDBYMJKQQhRrDCzRDLm0ERINATYUvNqj4OQOMpFcd+ROTF7kyD0YUYUk1y5w1z8sD/tW5emO3odH8GF8vSzx1UoNHEdkabjdik0iEW8kJYGwOUYCKx7ewmHPN0XxzjS1pyLwLdBJ4gDYXmaeeWD2VLHt4Iax8W37eHPmKXQeanvtYpolej9pi+1uZGpVpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SNZwMZozCyOA8DvCZGOEzYathpw3VOiU/NQmRnS1TrY=;
 b=oUMovY/zF+QRYcnQzuqjdKkmpUVNWThMcd2pkZ4Jnz2G8VkObKs8MGDjUVPf/zVXq6Im9Hxzz3lBAm6Jw5HogW5jpycHXhhssufME1wg8OsOvRz9v/tAylmBvR/WmpEN2qVhhxEkXHF5kmpLw9dDEdqsdfvmjpUdzSgSV+jNAjZz0LbbMf0HnLoPpimtMzEyWhtmaZwOAihJueIGFyY8QuA5KNFj7Md+/+Kiuy+pMk6VK87nT2i7FzTa4fqPdefzIR0cS7SmFEpe+rR2GSGe/DTWckuhOGsI/RY4yR2xSt4cmnqD8qxOyAG7D0EUixl9rftYUibhCofBnss5k2TzSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SNZwMZozCyOA8DvCZGOEzYathpw3VOiU/NQmRnS1TrY=;
 b=jZiQEEBLlch+CUh1BpJHqsZCNVOPPIL9Zs7xpwiYx0r21NaH7M6Ve+qblJjH8xC9nXezrRhemW71S/OcreYgbV0EE81kYzzU18+zDag8gl/TBZhy1+yXfEmLTJNr6mjIGPU9X2tQpKQhTIQ92xKqI30QIow4NRABvqpo4PJi+euhuSNjNmAehzKW1nFeQqa/oShvqutLSCxBx++jCjb/gWx0w4w6hYaJOQ+9T4kELJVqLUW6RELRgdPYFbIHbyAZqNZQrIVXr0wnvMCfxpwCgUiQiedHoyaWWzpO4xEBhhhhb5WOwGzLRDoTRjaPHbAV8m/XYTbieK6iaJT6fhR4GQ==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Becoming a CVE Naming Authority for your project
Thread-Index: AQHcTaUyT6AQKM8KRkCihVkiNjKPCLTjKKuAgADbe/k=
Date: Wed, 5 Nov 2025 12:30:41 +0000
Message-ID:
 <ME0P300MB0713ACE3EB14C8F1375F2464EEC5A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
References:
 <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
 <2025110538-probation-thickness-0517@gregkh>
In-Reply-To: <2025110538-probation-thickness-0517@gregkh>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ME0P300MB0713:EE_|SY0P300MB0658:EE_
x-ms-office365-filtering-correlation-id: 2b4ac898-a85b-4274-f73d-08de1c672246
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?RcUHBoqxK00xneBNAbL2PYvF/BaBx+sG6+P+Jay1KuEGyBY1pjy8WzdKO7?=
 =?iso-8859-1?Q?AMGBD5uN1cytz2n9sXUMhBOcYu4gANrDZahCqI43iAyXLYKQ0UqhAfZTw4?=
 =?iso-8859-1?Q?Fbd1U9HjwzZhdBZZp3md2UOHImIVOKaRa1LC3zDOlvAV1N/iEiah+FqW6I?=
 =?iso-8859-1?Q?qurG4reuAPa9GlpKtU+e6GKklOZRKiludHhCRHCVZHGawtHw2JjxDhNHC3?=
 =?iso-8859-1?Q?d4YPBCR6LTRxyj4eTbulP4Mjxt6gxTFnqbcF5OPQHIECfvi8kjL/kzAvoH?=
 =?iso-8859-1?Q?5FgSP6PAFeyy2mL2Pmkhoo0mLVBaued+FfB+kEVKvXzr2aoaAeO0F4YN5G?=
 =?iso-8859-1?Q?vpJHQ1jEhfeueC5Yp9WXJ8+YHtiCE9NOvpavUJDppion71VLjbtCIO3Z6O?=
 =?iso-8859-1?Q?VYbDa1zFT9a9hI7BVUkGgV/5uRRCm/bQyHHXYal6tQQNZJ5Ye1lQd19gTq?=
 =?iso-8859-1?Q?ONS/0IOKkjxTnZF5W07H9XUQzS4JRL5u7OkFb5JJ/6B9JAcYMQ6y1EmVkg?=
 =?iso-8859-1?Q?ee0u10njUswjECCB2lmlwKWVxAyYB/Fb8R6+X7P7g0tqjV3xk2C0leePJJ?=
 =?iso-8859-1?Q?hBBNjkmzByJxkAci51jbCsuZbAfgZDGKVesXyc0CkCWTiruOUDjWlNulA1?=
 =?iso-8859-1?Q?fdJUkhhLG60nPAPRnzNwGuXYx7L0BnuwlWam/56qQExXhpp4Pn6725Mwts?=
 =?iso-8859-1?Q?yswKflRn78US3f9jqZVhJ9jGrb0sV6KIUNpngqhi34XCYTxEMPLtFPTmdT?=
 =?iso-8859-1?Q?xBkM2vHg3j6Y7boCusxGBbk++Ha8yiHaEcYzEsqu/UWa+k28TRarOJsAI3?=
 =?iso-8859-1?Q?FSgdEpwESRlRU8SXzQHWCAZlyfZoeBikhLFWi+kB4iskU8sb/vMFh+o7oU?=
 =?iso-8859-1?Q?66VULv3kYsF7WIIiX7DQshImC9FFC8wzwYfFtQ/0cIyU0IDpd2PduI6P2i?=
 =?iso-8859-1?Q?DRng4RKWgKb1Gjy0Eb0dx4qXTU59xyHLXu7aZkzVd7hNdG3zl/cHQQVDGR?=
 =?iso-8859-1?Q?FNFuuUk5vbKQ/pUx2sEX9f/X5k2m9WVLj1mbkfJO7w48B+aqKpMxb7MoKC?=
 =?iso-8859-1?Q?PXyMwoRUC2GhxfAWVuRjUKX568lBXR+qmUY+Kpgfs61VTDv92smyi6HgNI?=
 =?iso-8859-1?Q?4BEopzNWiU5MJisY0UleYxqrV0NgKATlFpQje66q/qAjj07OVgeasMUcny?=
 =?iso-8859-1?Q?bDI1hyAttcV9AumEML+gOX7jct8txM26ZEM5AGesyFOHejZt9H1M0h8TLl?=
 =?iso-8859-1?Q?IdRTE5J8mtYtfsU8B44ThJXQa1mYabmgPcYMDiOUKtYdnzB2OjDoxHTzMG?=
 =?iso-8859-1?Q?CUHnIMvUOeeZDv1vmV+ukN5pNaab8uzbYQBsiiymgi0s35bfhW9hBE5cbm?=
 =?iso-8859-1?Q?jH1ZWGlXAtb2YVF2no/5BxWM4LPysZW6kd0zMIwryHsRYTD9qZaChOH0i7?=
 =?iso-8859-1?Q?r6jPTKPe9vUxm++tBS/EOsJDhvC2pDIeBaMRGFxAPjHi+bMqgPgo23+Bts?=
 =?iso-8859-1?Q?fEV7QNS8L0GiGhLoc5a+O9i95gUotaX7ENAsVkqhaLPmVh7DWP6cvlhjOj?=
 =?iso-8859-1?Q?w6t86aUU/+DOkel6IZRCsalJzCVG?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?mld1qAxvs+tV1EbT/6/zO0f3Oy7ffv84NtbZn1gp3ySFkrtdnXtR8SvrZ7?=
 =?iso-8859-1?Q?eBnBJSoDXUsSWWAERAWs4dDG4Gg/46A4+rslhQWPsMdawd5igwoerAYFKd?=
 =?iso-8859-1?Q?RM3Feg/q8CWmCaqRNtp1Xpc36KZV96mGSUGS4QjvhgYeFS8Y0m+EShz29Z?=
 =?iso-8859-1?Q?g/dDpJ3onBUWN20zSPqYZihLD2OD3ZOyntMNrTLhMTMLEkSVYvI3/wTB/x?=
 =?iso-8859-1?Q?XqgbupP5T7PRx92BRVWcbxr/1ojqQ+KTnnOG7X2OpExh7cDDnyuHgcLHOj?=
 =?iso-8859-1?Q?vyC3lb02IvPiTaaWLwbhMgX/WYbd3WwihikCnPMmZCvOD0Jpfk9IMrX+8U?=
 =?iso-8859-1?Q?Eel3jY0Fo5/vLxohEHI9x51eqr1b0Pirvu8QVN8BPmG5LheDLbZ7eCcuZF?=
 =?iso-8859-1?Q?Rc5W3lv//ebEytElx5o1jeHoHgqQ1NFRggbzl05Fx8aWi9Ccv4E04EDnIf?=
 =?iso-8859-1?Q?GKMIJ/9dqSMnIFs6PPfqg2+FNagN1LNbx6XUeyweEZ4GyY4ur4tDduVxRB?=
 =?iso-8859-1?Q?z6CjBxifK1AtAwttKmY6/z3+XujYkZXd/sDs0fGIt/LMTbFgs0n8ADJ+2G?=
 =?iso-8859-1?Q?qhpeBKm168fIzDJXWD2nqSSqpWMH6Tv98l/7gLyBpdChUyyDcU7PSOdCBs?=
 =?iso-8859-1?Q?B5spL7NkHl0G/xMWoMgWbc3CfXihh17ATp8OcSCfuVv/6sUYrXaih9jUDU?=
 =?iso-8859-1?Q?cY7VUfe0wAjXL4mQ9wPxTk4Eti7YYH95kjSeA793zOaNvRzTIg/6lhMg/4?=
 =?iso-8859-1?Q?9Pg3KTcgMP7wW2Zrrmy11VtGH9K8Zk6AF/Nq4CKn5/9Fc+XGAR44L6wuOr?=
 =?iso-8859-1?Q?QPPeJDR3VYsprQxUhQwkpav4nsmLPv6hUzB61rqvo/g2G/U5I3ZewUJc//?=
 =?iso-8859-1?Q?wksJr5R6tbz+mn1x9jJWYegND2j7/jxuFGol2PBzyc964yrDkSuIome4ar?=
 =?iso-8859-1?Q?ZtOyhJEKGGEfYAjZATsa39wqwgrcFC443JF4SWi/+p6qTacdCPrHzErKBi?=
 =?iso-8859-1?Q?Tf3vF+rn4n5YJDZtlGcCdqrtqbtkLZkvnMP9ltw5ScMviwHSXt0M+gmIWf?=
 =?iso-8859-1?Q?Xa6t7RJ5m3QT75Z3SB4ocmLDUtXjsygE0LcypdqAKwDw+OY2VhaYJhq6Ds?=
 =?iso-8859-1?Q?44DpB5jiabwEO5thMR/sheB+UgK+DJqgmoH39DxnMGll/KvVocxHpWfwVJ?=
 =?iso-8859-1?Q?AB04mbSdREAaVHDLf3c7ZdKIc7wBokjBT6Ev1Ursmww4i91S/403FMRMkH?=
 =?iso-8859-1?Q?VwkrZU0sjyajBCv++Zji60wGcUwdK2sT4Fg+vFlU/ubsKYwSpjAFj3/CJG?=
 =?iso-8859-1?Q?O8FfQNxkNs2lWXOFdYrmJh7gajqaT2alJnEsCzZ81EaRHf/sIKFFDbJ7Jx?=
 =?iso-8859-1?Q?RQdyS7V3MGn6lpzdoWaSbwnSo/qmlxiZpVJhgCH69vYou8ZYIho81O69O7?=
 =?iso-8859-1?Q?8vUef+dkW+LTE78zqVcOdsqCcwX2cY44sFCwjGenWhQarpAjsH4rQ1jOiQ?=
 =?iso-8859-1?Q?bYdM1j5TA6sCP25YMTCx7PDqmujf20xyt6HUXui6MlfRfufVsLRURF9GtZ?=
 =?iso-8859-1?Q?NkVAsJXGq8NPdH1Sc63+cSHU1djip5cGRcvtpZ9Bys0XdqLButOT9WlJ6M?=
 =?iso-8859-1?Q?dj7ioCaHFHfwUgOCYzY/fEBFvdK9OCF0lX?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b4ac898-a85b-4274-f73d-08de1c672246
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2025 12:30:41.5069
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wc8O7hdheWcyBvw+OvpG4ZcfWHELju4xEAYoZQyxC/9pGMyg7MPfD03lHT8b9ZJgWHnlxRKULCtQIFh1hoCIJaKPebiCH432P83lYQUJwtM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY0P300MB0658
Subject: Re: [oss-security] Becoming a CVE Naming Authority for your project

Greg KH <greg@kroah.com> writes:

>I totally agree that all "major" open source projects should become a CNA,
>and strongly recommend taking back control over stuff like this.

The problem is that individuals can't be CNAs, which means you'd need to do
something like going through the cost and overhead of setting up a shell
corporation or similar to meet the checkbox requirement that an individual
can't be a CNA but the same individual fronted by a paper entity can.

Does anyone know what the thinking behind this is?  It excludes any OSS
project that doesn't have some entity fronting it from being a CNA.  If by
"major" you mean "lots of people involved in the project" then there are
probably entities fronting them but if you mean "lots of users and critical=
 to
Internet operation" then see the famous xkcd cartoon, and that person can't=
 be
a CNA.

Peter.=
