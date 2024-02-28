Received: (qmail 10074 invoked by uid 550); 28 Feb 2024 13:59:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15450 invoked from network); 28 Feb 2024 09:21:04 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ANORbS6gMBob1ILlENlS+5I+O/xlnvJvPhzRbJl27mEBuNTCVgOd7c/odKcoqpgMrYK0RXJL6PZLZKp1gKK0IsT/QtIZa0w2xeJrf1J92Sy9hA5pGwQO/D/rhv+ZJ69zYZYXqEoU9CwtkS0KiX0Vz2y7QcphBKEccQmUyXZr8UmDUYbgl4gNGoM6DiqJ6iHZloLLtKpK3Su/GjDCQ1LWCCD0qMr5/Sxx8ZUQ/akoGvPl9hgFXIwrDqWLReO8eozOYe7pc7SLQo5bsOJzPz59enBild1LTItaQyQ71Ne4Xn5bdAg1AT9M2QQEyTcLURVxUHvjbTkCJ9it1F4SJdq6EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4vjNujx9QAJZYGdZofZeE4UhW6VyAvQDzHd1ZD1SLAs=;
 b=D2pR6gfsBdiYDINRoZMtfCIz1vvslZ4UL6+Ao972ss96yxpZRCvaqe9lMFNyuP2YlpMw05DTfdtNR0L/yxiciCTOMsPne5R1zn7FZx3C0f4tldbqeFnY5wFsirKH9XGScYwa7e2DfBgLxzlm2ZoZ2S6/sP8gvp9hm0wS1nzQvMvK6A3MuXDmy3R8cWq9i18PXuz5JXXsWRA9CsiZWvC/lKogEUr5dJcJ+noAnqnn1uDIrxJf0u2wOA+6znZE0xWvACgOxkiJUQ1kUkc4KlEDSCjLI0M8Wfp9/YliXknkhvhAsx+Oyvgq8X+7gwTKD3xkXXHap1rL6X7Pbo0aRDaWRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ebryx.com; dmarc=pass action=none header.from=ebryx.com;
 dkim=pass header.d=ebryx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ebryx0.onmicrosoft.com; s=selector1-ebryx0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4vjNujx9QAJZYGdZofZeE4UhW6VyAvQDzHd1ZD1SLAs=;
 b=M8HPJLqlLExVEVUVb76SqDGdIJgJO7Cbz3UEGP5Lz1mULb6Hl7PB7NU1GwHILmW5GYa9WNWqZh01dCqO+UAwYJyt7aO+utS1JakNF1mtMxxohA7Yxge+1A8CZaSWnCmwLASCpejHrjFJZYrXD/dkEe/T57sy4ccuymH/6W23Ixg=
From: Ali Raza Mumtaz <raza.mumtaz@ebryx.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: Faran Abdullah <faran.abdullah@ebryx.com>
Thread-Topic: CVE-2024-22857: Heap Based Buffer overflow in zlog library
Thread-Index: AQHaaiYiy4y2LoC8C0SdS0z1NNApLQ==
Date: Wed, 28 Feb 2024 09:24:29 +0000
Message-ID:
 <AM0PR05MB6660688A27BDB6F3CD0B6286FD582@AM0PR05MB6660.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ebryx.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR05MB6660:EE_|DBAPR05MB7208:EE_
x-ms-office365-filtering-correlation-id: 6ec7e874-2307-489a-2393-08dc383f10b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 +8RKF8GyC5S4NkhxMps3HR2QRtvhJaAOP1GwBlrt2ANXDyyCVCxIylCPS83CCXwmQGcTSFJ53NdMUv5sTaRTmjorPyEL59t5g3S4qPbzlbI5VrzYfEZCk07hOOQNlaBzMPBDqBGjkSM5r1Mv2HgjzoNwhUlDyI13OH7U93x6iAEbomC6dtJVjq36vsvhzmLqPPsRWu3rGY25Crk6kJ3aS2Cl8NqwsFnpETWYuK1fUq6+HUY+RAYuhnVdn9SKyMQhRqjEUIP4djjdNOPX8L+6JyDeI6RZHNxfq1VNx6O0H8cm0JThqx62tBiy9kqjlpO0KnaOfv+lhT+nDsv93E6UxaXti7sNNauFAKcnLF4qnZEr/aaJPdsZsyqUNhRQZpH4MomX1lH9V+an1GL785NK6SVEKRUXuUigP6qcD+uFLGdG0031v+eyCLbWRLKm+v6vFWLTZtL3GFdoeQ0uH+plsU8OxqjV5qBA9FPmKUGebYt2pGC4kOMyVwHGeg8+6UVIlYPTxWCCoU9GBbqt90HzJ3S7dsP6429+PS6aK51xHUDr5KhuSFz6qOI/keobB1JjdCIT9dlAtJGwsq+zHqG329iJN0mdzr8r/Nev3b2hSXAdzUv9WN3gUZrq8KfR7CtA4IyBuj98osZ9zpRS/3swA3c9j3xXCG/xCFH7XPSt/YqR/xFfCejhHuwBinq97qagoFQu291jgwEu0ZLftIEIlTZq67lErtwEpdJPKKVo9II=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR05MB6660.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?i2dStqsKDzpP6FgqQp7xHp/Bn3G2mnT0dhEyUhnlW7LphmNRoLZKf83ChL?=
 =?iso-8859-1?Q?0vJuYCDjcu/9xnUESXweJthTadpgRig4G+/o+wJa/HbEqylI8iYz9dO7W7?=
 =?iso-8859-1?Q?uMARZMONDIq0PeX4TzXWcFZ96AjKGRT3ynMEJhU0uM5EWM8Jduaxdjztj6?=
 =?iso-8859-1?Q?ZqN5egNCweFDpYkjlbkH3ZG+QmYwcVcx/S6f3SQjZv8+O0gEpScvjMXi5W?=
 =?iso-8859-1?Q?5498erjuhZ09XF/o2/4S8oXbuHpJQPyVOWObRhoY7wOcP6Zng2SZrf+Yu7?=
 =?iso-8859-1?Q?cXiEaMyUGK5UfmxxW/5Zprn6ZQ6bI8W+Ma5gfm2k8yvbLSkJktWZd76r6U?=
 =?iso-8859-1?Q?qDmgL3ANjawMvndddbEeHnGAQxSWY0GvZvK72MVJqrpIeUlVIWbI3P45xf?=
 =?iso-8859-1?Q?3gWyn1K2fkeA3n9I/9BDB9e5Z0Mhn9ifyQPP4XbPV85+dCIe9THag5YmJB?=
 =?iso-8859-1?Q?M3veiDEryTDIxs9F/tMvr4DDXx6VqaR6tehzb6fkZRh7eh/5jN7Xa5/+QR?=
 =?iso-8859-1?Q?ArkiN1ua9bRZ9cAdCtc9ILIblVKaeHyKML4AYUNTLjWrnBWj7Yoy9zu0gA?=
 =?iso-8859-1?Q?PzqAJsK/+H6Uo4uPD+zuOBRE+LVRfsn0AuYG7vZBZnPFoIGXD1UMJDNLjT?=
 =?iso-8859-1?Q?8bKdcftfnDm1/bMyZCbbRlm3yMB0+yXH+uVbGqnsGlb6lm49LVxZqhZJes?=
 =?iso-8859-1?Q?eiU3NVqeIIVgyU7xT3EAR0nGQAt/wOZ+przeNoChOE4LYcwIaSfeFZS8mk?=
 =?iso-8859-1?Q?sOTzswyZukkGf/iNzUA5hhZ1lQ6zvUBoXIXz8R02pSyNSmxLfXffHRuWEo?=
 =?iso-8859-1?Q?oIA1/MDIfSLoF9Lqw+YdjVPgK9hMeGJ6qow/IFqu0W6LaCv6I22ABGXJJ/?=
 =?iso-8859-1?Q?mu7jn25BLDXQojSWjYPLZg0a8vvjklZ0STx1q7bSc6pudsRMyYa0IBpVE3?=
 =?iso-8859-1?Q?r2mgzS/s4vpRtiKNEdPuEjakHxkm5qgAcnjnyxigdTYMAKK2pdwr5jNJHK?=
 =?iso-8859-1?Q?QYL6VeLBcV41ps5YzmWRlPRvp+Y8VLQ52V4e4GIG2a6tjam5D12tmI1EtV?=
 =?iso-8859-1?Q?qAyU8MKJvi/L7Rt317LPYNdyCT6SlCeazOwWggdhBRZ6A6kEVU7QpmPJX+?=
 =?iso-8859-1?Q?QIXlxm+b1zN3comMX5U2zQX765k8+SoLl9SfsEppzl1QanzaZSSLLqb9sH?=
 =?iso-8859-1?Q?Qlsf+wX4LqfE+OW7rg47hwLcthNM/FZBYctk2b3ilMAv9Y+QbUbZDdTw5T?=
 =?iso-8859-1?Q?yuzjosxHJKFi1aG1/duJnl5FbyZm4CAmjWDi5nuCAf8iP03Nqfh+oiqgMi?=
 =?iso-8859-1?Q?2LpzVtLbdzZWwukNdk0fPSsKY1FuUDsxctCFxqQsZX9kiucPrDxbZLiDSQ?=
 =?iso-8859-1?Q?IXOrWl3TURO2LZkIdZYHate3rmLRoSVVBnUbXqJ6ygrklKrFa9fxQtByqj?=
 =?iso-8859-1?Q?JynHcyCYwIaXX8FQ7XjnMeimXehMTTC9UgqmZl9Ph7MIo0mQReagKVA+re?=
 =?iso-8859-1?Q?f5TvhfqbRui2IdNqvjgZutYyaiMN54dmrl71HG3ffPIw2kHtDUEO9iXCO2?=
 =?iso-8859-1?Q?Xjz5dpLSnKciFHdJl0WJQTf+wZDHfRN4XJFJaA6VfNEUmjH8CLvXfQdfIZ?=
 =?iso-8859-1?Q?s7NeZ4NcY8OP+PIQ+fZW7fIpYonlJHLp19?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR05MB6660688A27BDB6F3CD0B6286FD582AM0PR05MB6660eurp_"
MIME-Version: 1.0
X-OriginatorOrg: ebryx.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR05MB6660.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ec7e874-2307-489a-2393-08dc383f10b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2024 09:24:29.3957
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a38fe56-35ab-4f3c-9e89-04fe0a0074d3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ky1VOQPMAqjCd8QWr0o0yKASQq7E5rr3jaK/LvGCfyp1JN6cJQI6t7L0pepXWqD/5hjP+gSNDSszFyqTPVzZsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR05MB7208
Subject: [oss-security] CVE-2024-22857: Heap Based Buffer overflow in zlog library

--_000_AM0PR05MB6660688A27BDB6F3CD0B6286FD582AM0PR05MB6660eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

We have found a vulnerability in zlog that is essentially a heap-based buff=
er overflow leading to denial of service and arbitrary code execution.

We have been trying to contact the maintainer of this project for almost th=
ree months and haven't received any response. Additionally, we have reserve=
d a CVE number with MITRE (CVE-2024-22857) and now we intend to publish it.

We have a working PoC that provides code execution, along with a detailed b=
log regarding this vulnerability (which, of course, remains unpublished).


Regards,
Ali Raza
CONFIDENTIAL: The contents of this email and any attachments are confidenti=
al and are intended solely for the addressee. Information is legally privil=
eged. This transmission, sent in trust, is for the sole purpose of delivery=
 to the intended recipient. Do not distribute, email, fax, or transfer to t=
hird parties via any mechanism without prior approval of Ebryx. Do not shar=
e any information herein with third parties unless cited from public source=
s.

--_000_AM0PR05MB6660688A27BDB6F3CD0B6286FD582AM0PR05MB6660eurp_--
