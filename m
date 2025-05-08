Received: (qmail 16018 invoked by uid 550); 8 May 2025 18:44:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23928 invoked from network); 8 May 2025 17:49:06 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JZsgzm+2qYM+Ijje/pqKDbXSotUYbRPuDZvGxp+Ra1lIyt4U0fxbXAKxPoodSXQhwLir32TRy2zohVk5feOjTaa23mq6ox1Mh9BrWsenk4eeXQ54UKr2FN+E5xD8Gw9ksIj8TvYqu9OLRc5TVNfX2M2dbkw3FcT2ksnHc7EiAGvYflN8aQJlKi/cE5GvtTNJMOAv0L7H03vVx79H9cBr2T8JHarE+l59Uoj09U6n2Qunzxl1+L/UpGc6rVA3UXtgTA1hJe+shpU+ChAgZhYTEy86O7oKFSegIUGni3w0N+MwGoN5vHZt8SJd3iW0lCe9ad4j05bm2lxqoGowypJOcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yOwvYztLH1GWc2tcLw5KWbNZ71uQ1hWvsRTz0RBnHoA=;
 b=O1yU9I4NcKk6233dArS9VvkUerSpgQKfukMW5RTKQwHdAwMcaVLQBe6cZcWuT3qTqUKV9ipHivgqc9jhuy/2YDXOaJ43drda++l+wuF9r2mJ8gULkwpQhbWZTk5L9h6pE+MHt7yZvYXiLmDl9fzHdTlgn+WSPKOV/jw748S8waGS4Xlk3FQGVwouHdJAjyMYlUEkOKsTsmydzAJT7GxqpnYofmpJ9dFhs+OJc6WNiHnJWUYuzIHyeqvR5XpY3Pn8cNjIkX/dl+mE1hnee84wXOOp8qLqYqlwDImqMIhZoFyh66XD9HLz2goQQGOGHD1O4AJWrx6d06/nTSYyqdWtMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=webpros.com; dmarc=pass action=none header.from=webpros.com;
 dkim=pass header.d=webpros.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=webpros.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yOwvYztLH1GWc2tcLw5KWbNZ71uQ1hWvsRTz0RBnHoA=;
 b=TfbtaFWHS9K/T+7rzkpaxeMOcIgkU5FE5Iu7dhINg3J2Lid0OdWr/bCMX0/q8JTrztrVkdeJC545yW1Afh7RNfMxkHhvH6bk91g1nrmGNMYNk3W1ImXrMmPgLrlSoN9c99o5d8MI3jxc4R2Htt0xDB6+vwmDLlBPdHTpPm1NDbIR6AUjEW8acEjmCti+y0NHJA1zrwtS/qZzahDPX8kz8ZvdLyFSfnyICbllmMlizAk/BwESO9VpuGc/fq6jX/eob6R5ZPdEE69otoQHpl/ecy3UJ8NZ8rCXRfHUDnBFAqGmgq/3gAUmjpGGvuqM3ompMQdKbmgtGG6EJJUV0j9Tsw==
From: Jeremy Reeder <jeremy.reeder@webpros.com>
To: Alan Coopersmith <alan.coopersmith@oracle.com>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] 3 new CVE's in old branch of GNU mailman
Thread-Index: AQHbwEDBhij2vjfJT0KQTSdr/IV8Fw==
Date: Thu, 8 May 2025 17:48:39 +0000
Message-ID:
 <DM6PR14MB39625654EFEC5BACBB33F59BF88BA@DM6PR14MB3962.namprd14.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=webpros.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR14MB3962:EE_|DM6PR14MB3600:EE_
x-ms-office365-filtering-correlation-id: def48ee2-3c42-4d48-afc8-08dd8e589659
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|8096899003|13003099007|7053199007|38070700018;
x-microsoft-antispam-message-info:
 =?Windows-1252?Q?KLYHUTIKPWanZZJ+s43XS/0cVvha8jwVYfBkcXWVu+c1oHNTINqTVmud?=
 =?Windows-1252?Q?wxhdO7mszqKODT/RnA/6QyZruvFuAFpFQT/06Hn8NvttLYeFwqVMtVPd?=
 =?Windows-1252?Q?ucqSJNwYPLA+p/djomUCZHZwUGK0EDT3DAYN4Hw7keUs3TlqbOJR1h1g?=
 =?Windows-1252?Q?Id16yVn8WFkenAna0UbbvIOmEkKN4PTE+NX99AlkTdQ6No3GEObHnqZh?=
 =?Windows-1252?Q?BrFsUZ8sGqgdaBGZaz5Fb6GNZ0CmN15rqMMrfBJBokfbYNPaHQseEsbr?=
 =?Windows-1252?Q?Df37iN6US/33N9e0DGG7oa84CKY9x0NCG5VTtJyrIxnPmiWl8JLJCHKu?=
 =?Windows-1252?Q?GrrU68sEQ17k/Twvh8nKFOHQAEy5GwDsGuCV2L7HQ2X6NsS1VDUwvGwH?=
 =?Windows-1252?Q?Dq5Mr5etnFcOsi5Pw9xyJZbbgroZ+qwOCncX4IZGSuKyjoPbz2w8UJ9T?=
 =?Windows-1252?Q?msdxy4RqRfxjaBKd7IhyupymHqQJzGmw08Jfb6A8zbnyqNsjV6Yeb0Km?=
 =?Windows-1252?Q?seTt2XSVYiGUfiFJjodqRK/LPd2tzEg3FfNELFvOQaMRREc7q/bAdifh?=
 =?Windows-1252?Q?TDQOnNrJXGrB4gto2B0xDV+qbsvoGJ320Sz/BlFv5XNXC6RP0o7FZgRy?=
 =?Windows-1252?Q?yKLcL11zSbIN3CC4UlmffuYXrGrq5NSWrlszluHDHxgNjTxQLdsVJwqu?=
 =?Windows-1252?Q?lsuo4sBeOkmZ3Qd1S7Tt3ITUHw5F5+qu36JcPxM/U80tQQEWyVpyWgLp?=
 =?Windows-1252?Q?j0xIb6Bz/sqJHiGjJE0K5wiGhid7S+RcWQ/YK7pNJJ4VPcuDxBGstwxW?=
 =?Windows-1252?Q?Xm6biD0xqUxZ96MN9SFCR4lmqNV5b542wFWPX6PLgg29lTIMV7/bsTPZ?=
 =?Windows-1252?Q?GInIJi4VIfbps2ljM3WEqmq72SIo/0i4J/85/V5jaW6oq2+KBfs07i13?=
 =?Windows-1252?Q?llsHgV8I1NLNy2679Ql5rb+EqufFt0WNjSx/7ajtLSm7uGNB8VLlL69j?=
 =?Windows-1252?Q?iGtgmPz7H4jELtj7cxZsBONnVq6sW67re/qPe2P58DJZcIpSZ7FAEH3J?=
 =?Windows-1252?Q?aDLhLiqEfWeMAG6QuhFZJh5LVIjMw3MxhDiqxBr1tiu5EskcSqLAcX0J?=
 =?Windows-1252?Q?lgebgyl4kCtcHZNIqpdTRovJsic6NXLAKZRI6doaNiMc4MWRWVpeqjDM?=
 =?Windows-1252?Q?UbMuLSNcLfNlKkT2p7LfS73hrFrYSNl3lhaHzawE2QzGiVExsUdx5kRU?=
 =?Windows-1252?Q?e2nWWgu1r7rNV3X+v5DF7UCp3JfL6wyRq3UQsKNPN4RoGolCwYg2Ad8Y?=
 =?Windows-1252?Q?8GtTLoaR2hiJRUM3rfdVw1mvFTQQ6PGHxjITA2x54tY07Ad+W2r7k8vx?=
 =?Windows-1252?Q?7WNCRATpjXUJXYohDEBVS2hJRYH5gSqBS53BiObldJ8SicNbLptWxROp?=
 =?Windows-1252?Q?JfPCedtlacvDjXVIiqtOx1dl8pt6V+8JcyHfTx9dVowsgfNueQlgguQp?=
 =?Windows-1252?Q?SfwepXkM5qjX3GyP2rHaA5iTS+gBj/okoFQr7k7votYZ1H5IvNQ=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR14MB3962.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(8096899003)(13003099007)(7053199007)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?Windows-1252?Q?6/yLSBtMdSms+mUsBnUZJkS05Tna9oi6YbWKLWEbtJns+YaOYgaCJJYo?=
 =?Windows-1252?Q?xwGVksEDgsno/GHX5ZgYO1bbCmoe6wjUk6JnMzLqRQ5BXewkbWSwLgxq?=
 =?Windows-1252?Q?EdtYJHW7bg3sFCae2McsbDUzhb8OT7DhSa6md+4a5xHXKhpj43GQrzjh?=
 =?Windows-1252?Q?Kt+E17lFfECnt01y3smzm8fa6kRcKycMuFWRV5lK9MXZ2gnQSBY6BVm7?=
 =?Windows-1252?Q?NsEwRmeITYI45oZeTPSy4dDMaNWwQ0yGH/4NxyUx1H/WBOOcBB/I7Br4?=
 =?Windows-1252?Q?ZKIDnbOYepLgAgt6WqUaAC2nbNoyMOl7qT4/NOTtFeSkhQXKkiGg9EuV?=
 =?Windows-1252?Q?YpEPU5xGdfaUY5eMH7qUVuVZTNfPohbkGKQ/KJF6qyXGH/XLTwH+WkvL?=
 =?Windows-1252?Q?ka82+xP9f/FkqZyvTryqSIp4PAC/KPeBRk2AQgs0w4ws64i/WgQDHHTC?=
 =?Windows-1252?Q?hEJKod+UscsGVRC5ofJC8bT2V6bpXOHCaAz0zRigSBhLagUlOtVps/ka?=
 =?Windows-1252?Q?/ClCWi+A4LZxIP72p1RHigU8vhGoqm91z9woqMUX8hqw56bdbM0rc5m6?=
 =?Windows-1252?Q?zZGifcIbDP0oUx41QhWTTqbJoFAn9p1vHWYPlP+TQ14qjhhVwNGKgmWi?=
 =?Windows-1252?Q?kzyZiP+vCHnljEWq59V/+/V+6ISXI2W9pnvriRmxT59PEPKegvrn7JyY?=
 =?Windows-1252?Q?bDHtMBjiqhgXTQMAi63Eet1omvQy9gnxK8GBTXq2PqnhltR1vPqpggI5?=
 =?Windows-1252?Q?qb8NcFc2Is9Mh2cNKhU9btTOetQUf2NFEsAe1lEJi9nypaduD0zIUcJl?=
 =?Windows-1252?Q?15J7aJ3SiiYW3l8dvqlMU0LIBn0kN1/iohklJIENIrGfKsTySsoFjvD0?=
 =?Windows-1252?Q?L9OC4hajjBwQPX1n+p2zI6rBrDr1JIhJEsO231rgK7K8kyiGvn6BGO+f?=
 =?Windows-1252?Q?cMqgcAebWXh8SEOwxooXNCJnop95r1MjXgqwnnzHVoALa0bLD4hODVXq?=
 =?Windows-1252?Q?Y1cUo8MylxzeakiW22AIp58qQQZtecr9SXRDzEzUEude7tIFXTJZGxmy?=
 =?Windows-1252?Q?2Ch3Vut87rLfqYilZ2Gmpq2/ONkgVTCia0kjVAOGzoEZ6lQUCujmJF9M?=
 =?Windows-1252?Q?lCGLlkf45LpZOwR+q3aeKdFJmlqNEvJCty5CeUZZ4sATQkmr2DasJvhe?=
 =?Windows-1252?Q?LZgz+7iqQmeVv6cRaKG5W6Eefw38IayA3iQrHADPMqOdFsP6Iyox8+56?=
 =?Windows-1252?Q?L2BmihxymDBBn4SN6fS6My3FxiIRmL2YG5RrVoE+4MO95kPWWyHZii9E?=
 =?Windows-1252?Q?DEQhNNVhJErFYLl7B8yNSASGmhk7g+oCBzgag0atLEr9nC01oFQHX+JW?=
 =?Windows-1252?Q?N1X2sItnyGRk5LjT1U56uUw9RIGjJsVWmIcnWZTW9TI1hBA4SpABgSYb?=
 =?Windows-1252?Q?9bUh3XOswXtWvmmQgplm644CD9LaDhW74IyHE9uFeUxRp2ncFS8RQeDJ?=
 =?Windows-1252?Q?/Xjp86zAHnDRCZH8mPKz+oFxMf+4i3ydeDfDATRPFygrsOITlUdH4Muh?=
 =?Windows-1252?Q?KkRQp3EQevaDhL469t0H8bk7x5BFKVJHZowUMQVIfXl3rXF8vWI+WmHe?=
 =?Windows-1252?Q?KPFU1wkw4wPFhjI4Zn60HkWtDYenvNfsDTI6DirLannTGvgaSJ8O0FoZ?=
 =?Windows-1252?Q?t71pUmr4pK4ZGHWnLKoZufaa2sJp0Bbp/oREIZ1Qbz6tUxWxD/jMlQ?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM6PR14MB39625654EFEC5BACBB33F59BF88BADM6PR14MB3962namp_"
MIME-Version: 1.0
X-OriginatorOrg: webpros.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR14MB3962.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: def48ee2-3c42-4d48-afc8-08dd8e589659
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2025 17:48:48.6785
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f8497356-a834-4060-86b6-d4b1d8059ee0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8UVyWSti51b6eulTV+tJ0R03dqP2UcvRVY+ZzUD6BhjE8rydDWEejyJQb2WA5LjzjATpyX8aB83tl4cpeXbGIx55WA0s8Sb2dxkhYmwFieM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR14MB3600
Subject: Re: [oss-security] 3 new CVE's in old branch of GNU mailman

--_000_DM6PR14MB39625654EFEC5BACBB33F59BF88BADM6PR14MB3962namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

We at cPanel have investigated these claimed vulnerabilities, both internal=
ly and via third-party subject-matter experts. We are unable to reproduce t=
he claims using the information provided by the reporter. We do not conside=
r these vulnerabilities to be valid, and we=92re in the process of disputin=
g them.

Jeremy Reeder | Application Security Engineer


On 4/21/25, 10:08, "Alan Coopersmith" <alan.coopersmith@oracle.com> wrote:
3 new CVE's have been published for GNU Mailman 2.1.39, as bundled with cPa=
nel
and WHM, credited to Firudin Davudzada and Musazada Aydan.

Note that upstream declared GNU Mailman 2.1 (which requires Python 2), to be
end of life back in 2020, and recommends migrations to Mailman 3 (which
uses Python 3 instead):
mailman-announce@python.org<https://mail.python.org/archives/list/%3ca%20hr=
ef=3D>/thread/TJLEX52N2ARNOQBC2ZNYMNV5U226R5NM/">https://mail.python.org/ar=
chives/list/mailman-announce@python.org<mailto:mailman-announce@python.org>=
/thread/TJLEX52N2ARNOQBC2ZNYMNV5U226R5NM/


CVE-2025-43919: Directory Traversal in GNU Mailman 2.1.39 (cPanel/WHM Bundl=
e)
Details/POC: https://github.com/0NYX-MY7H/CVE-2025-43919

    GNU Mailman 2.1.39, as bundled with cPanel and WHM, contains a critical
    directory traversal vulnerability in the /mailman/private/mailman endpo=
int.
    Unauthenticated attackers can exploit this flaw to read arbitrary files=
 on
    the server, such as /etc/passwd or Mailman configuration files, due to
    insufficient input validation in the private.py CGI script.


CVE-2025-43920: Command Injection via Email Subject in GNU Mailman 2.1.39 (=
cPanel/WHM Bundle)
Details/POC: https://github.com/0NYX-MY7H/CVE-2025-43920

    GNU Mailman 2.1.39, as bundled with cPanel and WHM, is vulnerable to a
    critical command injection flaw that allows unauthenticated attackers
    to execute arbitrary operating system commands. The vulnerability occurs
    when an external archiver is configured using PUBLIC_EXTERNAL_ARCHIVER =
or
    PRIVATE_EXTERNAL_ARCHIVER in the mm_cfg.py configuration file, and the
    email subject line contains shell metacharacters that are not properly
    sanitized.


CVE-2025-43921: Unauthenticated Mailing List Creation in GNU Mailman 2.1.39=
 (cPanel/WHM Bundle)
Details/POC: https://github.com/0NYX-MY7H/CVE-2025-43921

    GNU Mailman 2.1.39, as bundled with cPanel and WHM, is vulnerable to an
    authentication bypass flaw that allows unauthenticated attackers to cre=
ate
    mailing lists via the /mailman/create endpoint. The issue stems from mi=
ssing
    access controls in the create CGI script, enabling attackers to abuse t=
he
    mailing system for spam, phishing, or resource exhaustion.

--
         -Alan Coopersmith-                 alan.coopersmith@oracle.com<mai=
lto:alan.coopersmith@oracle.com>
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris



--_000_DM6PR14MB39625654EFEC5BACBB33F59BF88BADM6PR14MB3962namp_--
