Received: (qmail 30039 invoked by uid 550); 15 May 2026 17:31:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29980 invoked from network); 15 May 2026 17:31:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=bWzallj1wEEHS/unYzP15UjKBkPZzNX6dIqylY6FIls=; b=nU
	pUX/wLIQWI3Xz4JxwOQ9Z/3cc38pLlZxgLYvN6x+e3zLXt40Hvo2GPWYd5fkGR9b
	/0lF7VSn6xspb+h3gDoAlJxtmnXl4fPGkDNReRzGcqLK5EEloJyEP5tU3Au3luq7
	A2fmatcoQmVBxdvDWgfnDVbFRv4rG0GXK12M/bwqQovOZzufNSkgTto5NaVzQIzH
	+y7VQLUBG75WuMt8J5kMqf4gZvHjQ+8n1MjMSyDfV905Y8dw2y1ls9mdNM8DzCi+
	rV3PsGvMrWjlvTO2urLzjWuWoEn3SIuXrriEiGoTGcizm6uhxgE1GabOKJY3zKzE
	clN1JWF0KFDATRihWhhQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bm5oWLpWwKq02f1B4KFQ6kXzCLs1yIRNy9mx5jIjf6Sdveud9Gg6X3Jp7eyYvbdjzJs/JzOu2xfbZF0qFtYKMSwDgTNsPpH/BW/KGsOyhxSVrsKxvPPLVTL0s8lYac+WTtRenXkCXb+wpyyNt4ntk7Wp2bkavFehWkb39WaNiXG1+KDFIUOv08uI374t6LnZk2ntsRf72R6FDxETlvBksRkO/VaqfD5he3Nnsg2WEjoozhLM4QmSxC7A52kN8LwT73twpiglyWc2Zot3syXRTi4wDuB1/y56na9IvJfrfLURyoG1Divu6lodAdV7BXAm9p7dEBlHjNx0I06bhwtGeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bWzallj1wEEHS/unYzP15UjKBkPZzNX6dIqylY6FIls=;
 b=of1xArbXltIPVoRmSHcWecADy4aSj0GDzjPA2fI0m2FOxUeqHkuXlwJm/F8lMtzfF/kEijtnbikXur/j89pN8oPm3w/hqlKiAVosy3AzJbUQOlQGN6K0plhmYpvjb0bFDmDgSje4KSOpdoroEAyYAglMxb58y4cDKnEIjJ+CYJo7809K+W3ZdHT+fx2eOB1VVAcK22U0LP22LGYoQaZfD5asNCGvmrF/yW/692RpRkP6V4v1x4QTTGtCMHw3IdrbyZlyFkdQg8gIuBnc+UgaHBRxRQlXxr3KnQq+vKDGSwVTpUK20hGzLnRAsYapbPb/YJJu/jjhW4DJDJpbGtJjZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bWzallj1wEEHS/unYzP15UjKBkPZzNX6dIqylY6FIls=;
 b=r7Wum0gVGIUgq/YiE5ISYiGc+X45hA0Fui9aUptLOm9sImmCVMfj2u/aqgGL/9heIyUd1ayIfX4057u8x0qJQo/XjeqYX646G5UxGnXqVhP9nF7ry9b7QDBn/xBUWgim2I3lRDztxKjImcYHHtEAmAp1KU9I1of+PT1Htn5jSK5Vh/KrBW0RcO94NkS93b69wsPhMs1PzSKwfjjpPzXj3UMeclb9dQ4lqf2avaLhxufiMB4VLdu/WKRmg4JqkSHd4zCHkwUaUJJ0ahUQ88HRtweYKIeRhujJGwQQEZfBrWr+F2Qq5ek+EBfD5DK5/+haCFWPB/bd/x2CN1sXOymEiQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Logic bug in the Linux kernel's __ptrace_may_access() function
Thread-Index: AQHc5BFx3Z6qen8xFke8NWRPdnY9HrYPWPEA
Date: Fri, 15 May 2026 17:30:51 +0000
Message-ID: <20260515173036.GA10288@localhost.localdomain>
References: <20260515022033.GA10889@localhost.localdomain>
In-Reply-To: <20260515022033.GA10889@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV5PR06MB11218:EE_|BL4PR06MB9876:EE_
x-ms-office365-filtering-correlation-id: 38fb3c94-f502-4e1e-5727-08deb2a7b62e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003|11063799003;
x-microsoft-antispam-message-info:
 K6XPtgFMGkloW9PUqkhDDRK39TBVI9/hN1nX+sv3uvbevpcmqwDUctreoeTEEO7JCtWe4mQus/WsXy8u6DWuwWsvbOJcoS7q2aplAOoqYbZGF/9cVS6rM0uPICreWapAw1WiRLDQb5QqBd5t6xUWIcLL8lLqLxnV9F6l/uU8OvNMWnfbet9JUZJ+DvzXMvbuUP8QAc5ssdBXnIHir+bBxprgUNfJnMIk9TBSucSLk0jtWbj9lB/SAseWYwrZAIGB5PhrDzune3qYeMxD+Wq0EKmXyUqDwOw0ehrGorgqoXw/C8geHpPXWZ8GX66HDV4ukSQidqLOCdHgICEgDc32I9+cNDW0Nis0oTQaRbhpB9HITuV4fwM4YuYbHeall36WT6Oj8/SZOEG3lSYbn+qvvDzT4mQg8ylyyF7DP1KrORli1Lcz3Y37xcQcv4lXcwRGlR+wst5CZ3JP6pUs49J/hLjgCVL20DUroysfSL57cGuu5V2XeqKxrX/VUYY3fKtQv4qUH5tSISzZONWBBIoA5jrz1ZrKsqz8dPaxfVyvSQiG98RfWqFeXwSt6v5XtPLXb61MVl/ZqDOdG/sr6LoD5I0LVc0e6ChPfD8856ZXRVss5lcq/nI0mJ1jdAQBGxHVTA2/xLYnzHGx3oRRlPCPsG91ZmKeVicj5HLLL1Tl/gaBRRFl+YIQ5P0sGeiUFAH4KNrGRpZVMv8oYdYNtxeWiITLh0eQYVz4Zq4LeC4hhE5GR8BuOlpvM/weoPuhh+Zo
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV5PR06MB11218.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003)(11063799003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?Qfq7cDl3MpcfPJ8cB9l0ubtQd1qFotpX7i2RJrBaDBf0sxlf6AEnxbBgsQ+L?=
 =?us-ascii?Q?48dZyTVgS7NqsH2oIj57m5FHBmoumtzhvgSjruHwJYnNhFk42Ga0M9XwKas+?=
 =?us-ascii?Q?UxkcRJXF0mMNdKwg/BD/dSxq5BtoLg7lQo3oaLyrfb+49rOinUDb1Obal8os?=
 =?us-ascii?Q?g7JMK0seEtfC4X8zTlnGPmAVtskvrrF1e/Hr1r5kOGvSLhFKg4P3lOifk03H?=
 =?us-ascii?Q?WpTjLTa2m4koVf32/5KWYs1k4EYDAAvwyUxO+kM5rKpL1Ki0PeDqVEtbKJJZ?=
 =?us-ascii?Q?NGp7sMymZfb8zWCRtnOL/EFVRk91fMA8R0UQZccRT8XlmhZvcyRcwkt05PEH?=
 =?us-ascii?Q?fM4yrTBZe8yCh+EV0duC2eCWFb2V7LFGM6IVckzgltC2QltfJKv2hUrh+sK5?=
 =?us-ascii?Q?8CJ4l6PoZ4sePGD/BE4G4d7Wg1i0PJVBgiWhd2amgM89KMC57iapsrQVUhMJ?=
 =?us-ascii?Q?WVjJtGQNaLZUk9OiRXS5/Rk530+VLn1IxadgTPzV7mU0uuxSdJzoDGgunwK/?=
 =?us-ascii?Q?geWDeuVzGVABPPdL2008Ldhc1ofw2TNZ9hj7kWtYi2N+tMc5FVCk1RZWUtKF?=
 =?us-ascii?Q?cdkxkg2VzhjOx5TaSxwu8lkXwkCp7GIm4qPk7D7l5e11eWeDEOgCt5VG+qjS?=
 =?us-ascii?Q?uh/KMkM0phmQKXhupyCEE64yI838WO85b2hrraEo9bv4x/TzmDRL+rgM+Hti?=
 =?us-ascii?Q?rAv1Z4DJHp7K+4Zt/aHw9vwUw8lUGo2K3SLdufVOF58lIJo6ZNHAPSR46jey?=
 =?us-ascii?Q?Rpgl5RBVKJ6HxhM1nIMUNk9e4uRUVxaG3JOsAf0z708KiJclLpBWV9lt9YEJ?=
 =?us-ascii?Q?Q/wA7KarnGyGs57jYNno4PmwhDBpCrIJqYafY6QHK50R3GHR3UHT23ugToUG?=
 =?us-ascii?Q?6uHdXwWNaIz3UW4Cz6UKAdOMx10PBY5Rdn76oCyzihovQxCNBOG75hFX71C1?=
 =?us-ascii?Q?JQgb0jhK1ME/+eAAr+rFSDM6TM0x0rIVdL+MEWw6NEAJpzo0o0HgxN26MwDR?=
 =?us-ascii?Q?ueiTq7/4SZgrvEFjjURs/R+oLeDfTcFhUs1Ksq5aasSVMRFbyheeqftxh+Kf?=
 =?us-ascii?Q?3EQbr4JaRYfioBZHJ2fT8f+9ObBDManbFyfMYXMi2p+MjjBahxtQN0i0qjbd?=
 =?us-ascii?Q?2nn34IPE5zVEkeItfrJ47SeOxoR60P1N8jhlbsYJ6kobBAJsBkCCA4E4hpIp?=
 =?us-ascii?Q?dDpK1tpHxzTN0Il6Z/YMabjIQaoxgxbJzNB2N9ieW5IkX8YTxZkRaxZZfb69?=
 =?us-ascii?Q?fuw2d2gaFEpCDhuBrqE4Q18Wzu1QhEFMiuv9NQk1kW2/MAfsAzyJdMrzGKZW?=
 =?us-ascii?Q?d59YnsH+z0HKbRDL8o5CLy0baxQhYGyvtwx5c3R+cIK4h7X+9rV8DlyvIIjr?=
 =?us-ascii?Q?aWnveGNMXvwn0+PNz1aZLhGEWU7Zim/CLfe7jhSrpWtWRpACR9e7P9JTaVSk?=
 =?us-ascii?Q?mRru5aBMONeEp78M8eA2oALUD2HZMDegMZOlFQlbzvBkbCDqoUobszDbnsU/?=
 =?us-ascii?Q?4TWBOWynrDq0AiB14BPXxR5vbFR9T8t2eVsc+kIWwaIWIULxDf1zYaAERsvc?=
 =?us-ascii?Q?GbFYhagZ26eXw2802mvSrqEre3QwbN1Tnsb6dMZS14Auju+UHS6O9BTEBIDA?=
 =?us-ascii?Q?cV8mW+waiGzhfj2bXrhlmqnh3uScpYtiJpIcCQo2x9aDwCRLBGfiX+SokGez?=
 =?us-ascii?Q?d9nMibfqmSMVxwB16Fj3CjjHeyxMqcyfLQP7KaoaJC71oB8dyC9qfxh8KPpL?=
 =?us-ascii?Q?p4+J2gOQ/N4K3gs1+jL8Xz+A6qSafdQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <BB3276ABA4EE364590D0B4A4AA229F40@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked:
	ULvGXrZHqNnanMV55ATgdegbSDstd/z2XB/89HL59vj2ZKqpLQOE3y+Ol2QAwFA7UcgPrYI/WRFMDfY/L3n4B6pJhW/xoeny6fw0+iOF/cPCGWXg+32W5CXZVIlwKGKVYYMWEQ/vTf9vq4grBoJKvzsPW3Ge52gWKiQWmgEp1v6hSJz23X5Z37Kmpj/80uqX5ygHyFQ1pZWfnNtw5zkAhFpTf5Z4l9qtb/q0Xy5qGKjhAXPlhsePu1PtaEx4Hne5QuWsL04uWzChKuxq11OPDOAQFBifX8SFKCeX+y28POfSDskyQzkSi8iyQ62A3eEeV2Pkgtqgig+vFqjEy0K52A==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV5PR06MB11218.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38fb3c94-f502-4e1e-5727-08deb2a7b62e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 17:30:51.8484
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TAugTJVAGn3M+5qoJwQFb9zxo+w6vSC5SY9i23N9WUkAbkWA/wDSb+HWzyXyrZVn4sHHvGZwV/HbksPUO4Ab8COskePrlyyMwW/dt4jAmuE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR06MB9876
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_04,2026-05-15_01,2025-10-01_01
Subject: [oss-security] Re: Logic bug in the Linux kernel's __ptrace_may_access() function

Hi all,

On Fri, May 15, 2026 at 02:20:48AM +0000, Qualys Security Advisory wrote:
> https://github.com/torvalds/linux/commit/31e62c2ebbfdc3fe3dbdf5e02c92a9dc=
67087a3a

The Linux kernel CVE team has assigned CVE-2026-46333 to this issue:

  https://lore.kernel.org/linux-cve-announce/2026051554-CVE-2026-46333-662a=
@gregkh/T/#u

Thank you very much for this! With best regards,

--=20
the Qualys Security Advisory team=
