Received: (qmail 14065 invoked by uid 550); 13 Mar 2025 18:51:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25647 invoked from network); 13 Mar 2025 18:49:23 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ux2FzMPWHtVvYEHQ/NqCgybtKhYZ9IApUMZeb8zSlv0gibOlco+IQWI+0EJcnDzyqBxMxA2+Wvem5uQVnEOqWnA6SFmD91DTnB/wvqYe5RACmt7gSnARYO65CCFtBixE+jRFNNW3C+tabEaefIzukDtNFJl/OdhqKbjo/aVtkdJGYlErXW4Vb9P/h+XBgKO6ej3w5T/QK3tV7wbHStPfOINvWZvhRzxrNzJ0XoSk0NiiSdbchLsJxg2hv2mBDW+qlsXKI+Vw1aiKxHQf45AhmYrr3NJhvmzBFHXP/xKUMiSG4/GLRas7MW8EnGuik/ppDQKBxvOvJ0hCJk3+LUGn3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9io4aK3FkE5vxIt0TKlo/6ZbYDq1+7xL9MP8QIpA1t4=;
 b=aUlZFqzY8zXisbvAkFNUKVe3O+JIDMcWj0OX0tNPbTM6eqTnBBkflfM3IDDnWLW8MZ5ExHGlvzQ8azW/nGuh/G8BQsavuAgKxNgU7sKZo5h3Yn30JwHMHJUMluOzVjdRoh7ydgF1DckXP5oV/VhBvj6wRKGdpNWw7p/zfDLXX+/5E8XxxrDsF4KFfBGXvljFvpPl50yzzKF9Hlr39YTn/dJpYkj4yhRENaUwDmxjzriv5XU/IZNUK5iLz36idIQo4oYxWHp8MREadzpEzr5aJurH8iWT87w6KOyDEwkTEYSMrKrZxsIMp2CU7zIgbyjWgl2AZVA06/pli1DU0V2hyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mnx.io; dmarc=pass action=none header.from=mnx.io; dkim=pass
 header.d=mnx.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mnxsolutions.onmicrosoft.com; s=selector2-mnxsolutions-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9io4aK3FkE5vxIt0TKlo/6ZbYDq1+7xL9MP8QIpA1t4=;
 b=QjXE4jpq8YDYBZX6ZlT3jEPN3glka6dhJTMn08n063qj4EusP8zuF6L6jnX5bSRfeXp0B3lgQx2BVdP3VkRL9VHFJ7LeggolMkRo6GLSiM8W+1JFszwGLvhUR6OwpSgWQwOu1V/zRpY7+zLMvA7A/Q+wjMITxZrVED2MejpcV3w=
From: Dan McDonald <danmcd@mnx.io>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Triton Product Security announcement: Debian 12 LX image from
 2024-07 has static SSH keys
Thread-Index: AQHblEiZLLZ9XZeiUE6sNFq5yvnOKQ==
Date: Thu, 13 Mar 2025 18:49:07 +0000
Message-ID: <F7168423-5178-49CD-B27E-28E3100638EC@mnx.io>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mnx.io;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR12MB5249:EE_|IA1PR12MB8540:EE_
x-ms-office365-filtering-correlation-id: f8b72801-af6f-4d00-4c7c-08dd625fbc3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?uQsKLlnzgzDTn8KYZRKQIsmTq0nCEjQPsUM8BF842NTgsDNN2VRh7P7TNXkg?=
 =?us-ascii?Q?7c3VhxmCGaPf6MV2kr/3hDN1R14Gzi6QeXVWvR5Zd5JmSSjf1y9GJFUZgFMe?=
 =?us-ascii?Q?cdT0FsRNfOVloRPWATR1PBcmZerPJxubGyUi8hPVD78l1aObrHrzdRt6Zt9a?=
 =?us-ascii?Q?CXJdddMCrlooxTpMRvt1TdQcKJbPmr4EJJWRT2445FRkvl4PeIgXsFJFgZTk?=
 =?us-ascii?Q?1NXM3Fx4fxOhPri+H9tGk0dKpfbWoGarg1uHzfzCghwEQ4HJ53KmoQqpJCs2?=
 =?us-ascii?Q?YHm6YQKVfcU9Vyt9vRRv5PY9ujQxxzs6qruitpI80jFx6KKEJPhrY7k8swzP?=
 =?us-ascii?Q?0ahkBEtCgb0zqCLuY21GiL08VptiBZKvMUrxIfNcvH86a3RiXEamDynLs8YT?=
 =?us-ascii?Q?CVfAW1yl0CbEH3g5tqHJTpUYixsgf2xxszWLgpNRWyx78QocL+7ufzVOgAfO?=
 =?us-ascii?Q?vZPlUCY6SVW7q0cMZ9n9Qt9ZcIt/qfjTffm7rdlWbnYKla/2G+Em9yrQildD?=
 =?us-ascii?Q?n8b+gwM6yzhExmZV5mlZQUozlSHbkk9QSiZRaao9ROGBH7ptToBQpOPhO5+I?=
 =?us-ascii?Q?UifCfoPwcbkxkMPCF593He8owCQT/YGFSl5GzD4yJ6mYmqclgPvyxqDJohV2?=
 =?us-ascii?Q?aTMFHKdHyhOoDOjl34W1fVWpjqJ/2xGU8SlpKX/HaL5jINN2wcpifozjDfDk?=
 =?us-ascii?Q?1z+dolmQ0VpozAGhEJySRzzzh1ffmOO03SezdQw+03+5WQkO35Q/CaZ2zE36?=
 =?us-ascii?Q?P8oyXQSz0P6QOWQNdm2P2gtHaZzyvcXbXzGYxwCXv9AzZ/jld6uDx/qssRDs?=
 =?us-ascii?Q?4FU+mVjgZ6SeoxAHq+0gptKJ+gfez8tLK5ng+OSUDWjmoxs0PQBlxWt/CXy2?=
 =?us-ascii?Q?mz0QFAXtgOZDva78XOcBwSjO8H4O3xx99cNJKqxxO9cGDQ4u6CxH/6mPIiXR?=
 =?us-ascii?Q?xqicmaZd2Gg02Yrg/aW7hUMMHAbPAk+vkTM9WEYXh9fdsXpJZQ0PlsjWDWLN?=
 =?us-ascii?Q?/CPazACcW8Vifk+ro+Ks5iNGMS/3cKsqB5SoaJb2pnYF4xVJvg0wPo0q1gMk?=
 =?us-ascii?Q?auLq+80+/uPRjZYxExIl5vDQmxQu6cftDcdnWCzgdjkekyG8Kzp/nIN0Ib8C?=
 =?us-ascii?Q?wC/YxRz61JhooXpcnf0ULOUNk+oPiHRHa4htCiEVMvpwalMUzB/y3B1pTtMQ?=
 =?us-ascii?Q?p/H54ahU4NgkgppyiUjXP0v2rFQ7HTQIoHk6QKN29MrNFPAhUYmt99qUqkw3?=
 =?us-ascii?Q?p2QtPHfhw20Ozuibl0FJ7fGQkBqchx18vFPAXDpT75GgPTYX2PohFLRpsgVd?=
 =?us-ascii?Q?Cn6HuT7XDUjRqFSYfXrgnvNqVVWbXxz6qb/kdxjBF8wop2HC9Q+F4jp5sN4/?=
 =?us-ascii?Q?RMwBZtleO0/2WYGdVHdeH0esEQ2Q?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR12MB5249.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?YgCKtu/CTlnDnHhRvB1E1479Xhj0+cr1J2CQmJZU1kPppXtRHps26OopFJ63?=
 =?us-ascii?Q?kupmddV8Ji0MaWJSiMd1uL4Ftf0G9ZNpH1iDI0e0igh1pSmn5w8hWhQ4L8T/?=
 =?us-ascii?Q?VzyTzvF/H45Bd6v/EXHAMS2crHr+KGOAtP1hF3rZu/w+QuiDgtqc3wnLHqsm?=
 =?us-ascii?Q?rbOYkXmFZ0i7X/fYnC2Jm5BT648I4okTgAKdLsjE+RAbd/Ci0xKblxwbouND?=
 =?us-ascii?Q?ZjUwB98rDMPnHSyjSkhQQsjk73P0zg8JpfsshjdkkCzgiK0A8bHeU3fVBcNj?=
 =?us-ascii?Q?FkZ7ciRtvGDapUSm3jns0/sS0eUoURoqHegTe7ltDlmTL8ahQmbV5N0ptVL3?=
 =?us-ascii?Q?Y+MCnED51hLV6yesnkQJKyX1DGtfcpBhZs9FaUSU3oJv+99XufHc3khLPq0k?=
 =?us-ascii?Q?zgLFx5q3pLofLRe5L1vsTGBX5HalxTKJ9fbaMO/DBOoOemboi5Ye/pz7fDrb?=
 =?us-ascii?Q?eAmBqH8jHXpG2ZmutPSU1JzafJFkj1nPLNAVY2tvE3pMcAHQ18KNV0DK/yU1?=
 =?us-ascii?Q?H0CsGrI9VTXnomgDc+2FLqoqHVCAKy80jSbi0/p923Ej4+ZYBj83Y+Mb/RWh?=
 =?us-ascii?Q?7Aq5Rcz4oLzixL1rinO4qNnzTZHa8zmRMvyUdKPDRja2rM3zKHHUt38FYr/U?=
 =?us-ascii?Q?/MKuSabT6vzCW+FE2GgnnwWxEVKbz0S0EdC943QrSBYgRz5G0A6tcWU8Sss/?=
 =?us-ascii?Q?f+nfi+9Iwr3XbtF72cqWFMA68eQQ0WQi7PDs4WaM7Oo+FvqeWG/c1uvPBU3j?=
 =?us-ascii?Q?9QNf5okdYODaqJQhY+87NmVaiKYSe8iW2/6JYrvMWiVlDLZxye18WMWsYki/?=
 =?us-ascii?Q?8mCzvxsX3kxCIWdVdN9+FyS/FDLDLe7XXLCD4hDWgKl/MeX40txwnqpew8Gh?=
 =?us-ascii?Q?LR96B6YBLJ4vkBMm/CutE8pN/rWOrmhrqAud+In6Ks0dY5aL8djfjZnFdkXc?=
 =?us-ascii?Q?IhylpxdOV67DfDQjJCudfZ7pLmknWesDs+w8yX4qdJeZrJbyl5IjcVTz7R+E?=
 =?us-ascii?Q?OIAeiLjlfqAXmNgVRn/GjmK8I/jkrmescsHh1ux+8KYpaKQZ9i5Kl0VBkyZM?=
 =?us-ascii?Q?3wkTREI4Vj+SabWFJ3uKUpErD/k9T9L/oI4vV+JiqmoeGfnPxMs/dqV8qWon?=
 =?us-ascii?Q?T2G634ytAA7xbXGmog+aZ7O3JYJ3McBP06IkBQea3MqW0sKFT09in6HJdq0A?=
 =?us-ascii?Q?He0fUtob/D9HDVP9eX5lgasSGW51iWsqb2/pG2Fn6VWz/PEcCUZfh5A9Z3en?=
 =?us-ascii?Q?1+tcs1AMlxl5wmhgCTfl9fztysQ4j5Ju8KBzb7jbA0NSM+s7azLvvk4f78Wr?=
 =?us-ascii?Q?dmcdMfx/srQNtCGR2VZ+m7t2UPdZ1I2lRw8UbjNMkqGngaGFmb13m88TWA2t?=
 =?us-ascii?Q?8bprCUC2Rxptnsvacy66Jh1I/FY3Ghx/iZ15vnTVZIngqSt4p2Tb27yMuFfH?=
 =?us-ascii?Q?FGKDh4wfG/ykPkVDXs3Dl7cJPi4umDEWir7Zx72K/W8XiJE6VspOlNAuYskw?=
 =?us-ascii?Q?EHSPrscH0lE5RgQMdRzf1+z1DVnJPpOGpvPqL/IwVUc41RhS9k77BYK2Jgqc?=
 =?us-ascii?Q?eNPT5KlVPyRGGPaPX4mh0+4OQEoe1ky6rTs/49Uv?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2BAF9008BC46BD449F38E47AC99F171D@namprd12.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: mnx.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR12MB5249.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8b72801-af6f-4d00-4c7c-08dd625fbc3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2025 18:49:07.6043
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cbbbccb-a73b-4293-8866-194afab248db
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Te/1zz6tlV5TjGeUS1QPTgYarY0PkUUr5S/vmAhtjtsOsFh4SYEYXzUmBRUrM7JK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB8540
Subject: [oss-security] Triton Product Security announcement: Debian 12 LX image from 2024-07
 has static SSH keys

This affects both standalone SmartOS and Triton Data Center.

See:

	https://security.tritondatacenter.com/tps-2025-002/

and

	https://smartos.topicbox.com/groups/smartos-discuss/Ta6f13072e6bedddc-M370=
2e993edd7d6ce8d78dfc8

The Debian 12 LX zone image 60f76fd2-143f-4f57-819b-1ae32684e81b from 2024-=
07 has static SSH keys in it.  It has a mitigation (regenerate in-zone), bu=
t if you are a SmartOS or Triton user running a Debian 12 LX zone using THI=
S SPECIFIC image, you should mitigate or rebuild the zone.  You should also=
 remove this image from your local image cache.  Either of the above links =
shows you how.

Thanks,
Dan McDonald & Nahum Shalman -- SmartOS & Triton development


