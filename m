Received: (qmail 22443 invoked by uid 550); 18 Feb 2025 09:14:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22410 invoked from network); 18 Feb 2025 09:14:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=qualyscom; bh=RJ9NWrrpOR+
	uxagPxAtNWKmQqoeOayP64YiQyk0PlBM=; b=H3aasR0jDFpWmIpCzFVzkF1DFYi
	pliN0WnCzDRLXxGQpMpPEUyZFmUEHGVgnQebMJZnvIXccNC73reo5II7eajaf0Nx
	I//bzbaPSYtGEZ/woUw/cJ+FWydk1qkB1kjdnGKBGibH3B+/SFn6CQW0/wZMwU88
	5UdqcArVfZ2bVzO27gJ7FqdFdRkl+2h47Wtxw8vmU88qcFGdrzQ2zYwz9A7JbS9x
	8CeVkL6V5WQ5peR42Ic2+bmaELNM/IXqoLDlWmK2PQQsi0BzHkqgxzi7ZTHl2dZ6
	lm5c9s9LzGSeNysPG53sCqBxYmaoHVNJOFThqJ8nULM+Bcba0DJsmdem1Qg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Md9QPNJ9RJLU+oqkpJKB/y0YLqmUHR+Ha0HENrl6PU482HKoUXnPP3K1g3R0NuMU+ZAgwhkxegwERY25fxoZK8S/uD3JKzsfWsFmzQCixzN5+DeJGV+tGQhBGv6WKVvmRO9Nh5OjNd3V5Q8jDlp+yIddVxpv2Nh/j7VTDyu/XhWUR9yKLmSFFL4TMeZ7mhBrFAE0QgbaN+7G0BxNH+OXRqGSgBkz95zR2lgLOLae4aoAqKPjmmxgh7rvkcmvORTLVj/If28KhqEX+GDLLXxH1kNxgO0C7C5nQoGuoC03+juDlRiGx08EM0x4L68qO4eS5ROm+IOFFKjgv8EPwEYYoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RJ9NWrrpOR+uxagPxAtNWKmQqoeOayP64YiQyk0PlBM=;
 b=yIrvu5Aropxeb81aJblmStW1I7+kt5+G3EOmx9gn3MLEHnyHLugBDx+ba5U7wSHsReCSxjiqk56E1cuBnzxX3WWiB2XISRDo1jnBEp3aSTWgwZUldSue2LkQ2yKTmE8OmJD/o3hLrwlDc/o7yl3Qb3nT/utI5j/cvhKi2iEWmxjB/5ucNkZt/rdtlqPJnFw6zd/Zlok2jYKot/CeIvJ/6ZgBBE1gjwe4LSgE6uYawB12lq/SEH0qhz0SDMQKTRvmKdB0zePxqhq1rcW0JoPGugmbrQY3Hf3JQlPCrskP/fOrttvuyU1SrSj1hUtytkk38B5wAe9iMdi35RWIvvfUWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RJ9NWrrpOR+uxagPxAtNWKmQqoeOayP64YiQyk0PlBM=;
 b=mvV2Dg7ZHe+emUMTq+n9NSnK095PRNyyWYrh6v8UDPeaSXXRL3vMIaE1SausqRTBh/QGVklrNjItsVarWbe2L96ffw7orWJwM/REjDTf9vbqJxuclCnroG7CiRfyHGiz1K+6hgK3A7K2AlWrnP7OgQDCh/EfuoG+TzUvtwe26waUDiFKR2d4pjxU5xpvQH8hJxpwAb++UOQxvWg/68Fm/sP3MzEmIOtm/eMeP3YfRfM/lnRktDHPgaK9Wp/F1yZSg+1MSbn5WlCRLHcFz+BV4gzHVgnVrT+8eXvJNI2jX+StDt8QvZAyYFAS6lfdEzZD4V/tvxNEYFKbxI2Zk5zS5g==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: MitM attack against OpenSSH's VerifyHostKeyDNS-enabled client
Thread-Index: AQHbgeWHrWwlZ+ZDZ0yKgofNjNiIjg==
Date: Tue, 18 Feb 2025 09:14:36 +0000
Message-ID: <20250218091414.GA26981@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR06MB6903:EE_|CH2PPFE298E68E4:EE_
x-ms-office365-filtering-correlation-id: e44be3fa-903f-4398-78f8-08dd4ffcaa5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?epWtGcbhgj5znNcJSB/Xg7LxoJGHvSAu8NYwVFsRzL1euE2fjNdK5P5CngGo?=
 =?us-ascii?Q?rf4itpmM4zHbVS9+H2HIz5W5FDYCmFF44KbzHJfx959CuEp9AAtZjy2FiBFk?=
 =?us-ascii?Q?RisXkpbF82QX2cQzKImix3kD1jW0a3r3CAQUtedvLmsDdm8pAuyQMrO08Et8?=
 =?us-ascii?Q?Q/GK8m8J86bquzXKJK+JuNK7x2JE71B6QER2rygxgj3svh1V2rF0SI4z34jt?=
 =?us-ascii?Q?gpc8r5wpEnu7imYahD57XQEkQUD8z4gUn7+1dYbSLU4HX0XWxMfHtXnSXz9Q?=
 =?us-ascii?Q?Keioq3Lau5NHjRkOKBNgoMJIR55lkCKSk1xZ1t4atAX7DT5J1LVKhPtJL5Q4?=
 =?us-ascii?Q?yQV0ud69u9bdVXu5vIO8txZeyH0OklpFANxBXao5IhdLN3L3lEUo1s1Ellkf?=
 =?us-ascii?Q?pBqTXQpDCpiCSwul6b2Fe8oPMffpz89+oClRJX35sE+RafZYAWJ+mGd6xv/R?=
 =?us-ascii?Q?jSbol183rRqhjxUi+UPSamek6ppGxDJkMN2vt0bthhg3Ax6ARzhSgqOzLeRx?=
 =?us-ascii?Q?UP6SRKNjlb3O9vtER1DzZYl1q10HdqGLv8RrNVgp5G8krF/6yZanMyBNKZ1H?=
 =?us-ascii?Q?sKz0bFEtBa1aroFvCCMM+FgALWZ7lxWnL41W3UViwOoDJ8p0wc6jdzqk5ciT?=
 =?us-ascii?Q?X+oytc8G7K98XOOhjyArdxKgOt2pMY6J4wmV9dsLMe6qgVPMOO4QWy+kV9o1?=
 =?us-ascii?Q?R3/CnvCYGxazMZfPPPIPxjzityjs2O4ox1wdgusb90IJE4ufHvHqOkmJzdNY?=
 =?us-ascii?Q?xyDW7kcS0craRzUZpsWVZL1FwNoimHuP8MlYs1Z5rttFUYWHtior2IhPaXIC?=
 =?us-ascii?Q?Hbbll4USTr1B8T8yiavY0KaTevjVk5DJZzD8jXntdaUJPJ5LK4GsLeI4QFHw?=
 =?us-ascii?Q?u/LB0Q5LI1djKCPqLFFlohEGC6Dq6Nf9FAfYfEFPHsnYlbC6oBwwNa1FiOlT?=
 =?us-ascii?Q?0s7Ap1kEAmbHrdeWE7Ilb4LK3dvcIPmJdREPO1RQBdVc1sYYLB71X2Yh61M5?=
 =?us-ascii?Q?liCUfwIsFPjTxZ+gW+WyrzBEfrGqkqMfm1jzpb9/CHtFJf/5ZQxYVo647oqz?=
 =?us-ascii?Q?Q34CYAXUousGGBCSMAkQP5yCUqkIhcX0dd4yEaoiw+pfN3qRVTLnk0tcyuOu?=
 =?us-ascii?Q?Gg2RMhZ8u8fXgTF45fHOgP0wSRiNEMa/15SN2k1+yXiiCgjD0tX8+rZvSy3e?=
 =?us-ascii?Q?BW5e8CuH5yTmLguah1BhaAZyX8OnSMZows/e2B1ayDFCG5tipDmsEMvTVaSX?=
 =?us-ascii?Q?0Q4xnuc3pL4tQwySziWF8tIVqMtLUkO7tVc0JMkO2erZzB9VzPnfcBeVQGxV?=
 =?us-ascii?Q?b/fD2yzSppumoMvWqJOusA9yMtYOgLxbWQ0gPmpmmJWUN7WkSQHOA3oRFrsS?=
 =?us-ascii?Q?duFOq5alMC5C7RYZKRyOrXA1CvWc?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR06MB6903.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?XMo8/UIX7WEA44YFb/oGJZpZrhE7lgr+PXKNmutMgd09hYYtT6GaAxgEVYkv?=
 =?us-ascii?Q?gXbV4ioiONSidcZ98SzDxSshHoCh+krLANk9GXypUrMm0icQtlig9vJDIxNd?=
 =?us-ascii?Q?ahI1Ijo4i+kwWh/tn3qeiPdyU80ZTMqKrC37djORKnV/RetXR46wfJboeVjO?=
 =?us-ascii?Q?aCE1oUkZzouES6ZAcuO4U0x7gQxSf0cLAvNqZqq9Zw0lN+LRrfz8ye++sq/R?=
 =?us-ascii?Q?YiZRhtHOzkIK6yxRlWu1qAI++E9Ob9l2lcM4QaculRWfTjEMdAak3WdfB7CS?=
 =?us-ascii?Q?ousseyaK+pFaPG3LrNGnPlYQ0e7bTEWnZ88rVedqsQ1Y2sJvKVAb+rowflO+?=
 =?us-ascii?Q?IXvoSjRNh7aIzRUDfj0vByRWAzK489IWwi/SdOOLpbTLPHxG5AjzxIHH8pv0?=
 =?us-ascii?Q?s95C48WZz+kcqu8RjmEiJfdA33tonROePSbT4fr6TP0Pnxpuz3urReUSPmRV?=
 =?us-ascii?Q?Xg9y+owMmOkenAF6WP/RywSvJxqbvV12FRsn0SYF/kFmOl/fpn/oDW0DR2of?=
 =?us-ascii?Q?yE7ty6wsMtZyRQWpE31cwONoVBKFu2gxIrLfV4BlO28aW4Pfp37fVsvf7egR?=
 =?us-ascii?Q?NmoHgOCRJyTtEe6itGnypEPaFsi6VEgSJf4LMbGxVJbmbylVuvTJow37zK/K?=
 =?us-ascii?Q?IGc8AXWfdxLS+7OReRTlqOouxsERhGS+KZuMu93UAVQc0wPmCC0siFRH6as4?=
 =?us-ascii?Q?pFMZgJYBo7WEN0dLafOSfdEc9VVvghcXQ9X57ocu/AFfdfpPnXG9wQ4TsBZE?=
 =?us-ascii?Q?wyHrFnwqWpGWokE1YM6nbfYweXf6iJ3CJtEXuuq1FYDicn21HdDxCDKY929Z?=
 =?us-ascii?Q?HanhR1KOPl1cOiW6R9ceiF5jRQksYCfDmDZjrro7Gmt7+HtfOc2xe4QxZFQo?=
 =?us-ascii?Q?Le+5r+mY/aLn9erJG7mYGcwF53nCfc+3uljwHM6+QohQNyvaSQi7+Y5SwAMZ?=
 =?us-ascii?Q?oPzx5F6hfnDQW3dkRplRhVSw0x0HSr9WKt4gcxV4r2ekUbNyz/Z+TmwRGCvs?=
 =?us-ascii?Q?GX/SlqmUZgn2ogv/noUsW0H3iVrju43aaUqiZ+djFdVVn4OraCLfw+a7dzIO?=
 =?us-ascii?Q?dWqtBO11z+SHriFmBXublYBVMoCTREOus9s0CAGkPmuWgyqqx4wdK6GF3To4?=
 =?us-ascii?Q?4exbIWjJvW/MpfM8h4fVKYnPMyyh+Q2yFwV6qQLi0a84QdarrOx4470rGeuE?=
 =?us-ascii?Q?Dg58j9Ea+kwODbuUpuae9tV21d00EAcKzRH1oK88k3H6g+n1EzoJVjm5PBtd?=
 =?us-ascii?Q?eDGjYURjl+cXrux98JTl8UWfdWKW99IUbg828kNFzFg/B4WTqbwgcwjgIH5h?=
 =?us-ascii?Q?V+VTjvqdyvBAPRtYxkLkq5vLP+ErOO2XzwdVuL9FFmQiB+sf5uJeJjblj8bg?=
 =?us-ascii?Q?hnNNc+D89yjLrEgT46SZ4t/sYSe/nb3gloeQu8pTR1AD+OHADiCMx8EB2I1G?=
 =?us-ascii?Q?3HrySeJgBdIFRjFpl7ur6fSMAdJ9F/KVBBdyl8Jv7AcRdG5iQ5nPkydxuUGj?=
 =?us-ascii?Q?TJHMEZRSt7jSmOC+PU6NjUqwG4ZE0sWyhquonwq2qeD3Qp0xSTky4H5tBOm1?=
 =?us-ascii?Q?f+hzheMsZ5lpxphX1F8iyjjhlF0ALgvc3roPEkFAHVgd6Cm1IgapWIPpcmfn?=
 =?us-ascii?Q?plXjd5CGguI5PB6xQS7oYKA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <FA5327BE69DC4148AF536186B8BE6249@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR06MB6903.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e44be3fa-903f-4398-78f8-08dd4ffcaa5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2025 09:14:36.4570
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BEp1EQE6OgeA5RqsbERDxZZmboBXUFBvZelR/81GZ2VE1W8Jp321NLlSnOBj4c7J6WIi3rkZA1uZL+9WgPgRpW3ztKGBZl7wVh41XYhVibQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PPFE298E68E4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-18_03,2025-02-18_01,2024-11-22_01
Subject: [oss-security] MitM attack against OpenSSH's VerifyHostKeyDNS-enabled client


Qualys Security Advisory

CVE-2025-26465: MitM attack against OpenSSH's VerifyHostKeyDNS-enabled
client

CVE-2025-26466: DoS attack against OpenSSH's client and server


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Background
Experiments
Results
MitM attack against OpenSSH's VerifyHostKeyDNS-enabled client
DoS attack against OpenSSH's client and server (memory consumption)
DoS attack against OpenSSH's client and server (CPU consumption)
Proof of concept
Acknowledgments
Timeline


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We discovered two vulnerabilities in OpenSSH:

- The OpenSSH client is vulnerable to an active machine-in-the-middle
  attack if the VerifyHostKeyDNS option is enabled (it is disabled by
  default): when a vulnerable client connects to a server, an active
  machine-in-the-middle can impersonate the server by completely
  bypassing the client's checks of the server's identity.

  This attack against the OpenSSH client succeeds whether
  VerifyHostKeyDNS is "yes" or "ask" (it is "no" by default), without
  user interaction, and whether the impersonated server actually has an
  SSHFP resource record or not (an SSH fingerprint stored in DNS). This
  vulnerability was introduced in December 2014 (shortly before OpenSSH
  6.8p1) by commit 5e39a49 ("Add RevokedHostKeys option for the client
  to allow text-file or KRL-based revocation of host keys"). For more
  information on VerifyHostKeyDNS:

  https://man.openbsd.org/ssh_config#VerifyHostKeyDNS
  https://man.openbsd.org/ssh#VERIFYING_HOST_KEYS

  Note: although VerifyHostKeyDNS is disabled by default, it was enabled
  by default on FreeBSD (for example) from September 2013 to March 2023;
  for more information:

  https://cgit.freebsd.org/src/commit/?id=3D83c6a52
  https://cgit.freebsd.org/src/commit/?id=3D41ff5ea

- The OpenSSH client and server are vulnerable to a pre-authentication
  denial-of-service attack: an asymmetric resource consumption of both
  memory and CPU. This vulnerability was introduced in August 2023
  (shortly before OpenSSH 9.5p1) by commit dce6d80 ("Introduce a
  transport-level ping facility").

  On the server side, this attack can be easily mitigated by mechanisms
  that are already built in OpenSSH: LoginGraceTime, MaxStartups, and
  more recently (OpenSSH 9.8p1 and newer) PerSourcePenalties; for more
  information:

  https://man.openbsd.org/sshd_config#LoginGraceTime
  https://man.openbsd.org/sshd_config#MaxStartups
  https://man.openbsd.org/sshd_config#PerSourcePenalties


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Background
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

OpenSSH heavily uses the following idiom throughout its code base:

------------------------------------------------------------------------
1387 int
1388 sshkey_to_base64(const struct sshkey *key, char **b64p)
1389 {
1390         int r =3D SSH_ERR_INTERNAL_ERROR;
....
1398         if ((r =3D sshkey_putb(key, b)) !=3D 0)
1399                 goto out;
1400         if ((uu =3D sshbuf_dtob64_string(b, 0)) =3D=3D NULL) {
1401                 r =3D SSH_ERR_ALLOC_FAIL;
1402                 goto out;
1403         }
....
1409         r =3D 0;
1410  out:
....
1413         return r;
1414 }
------------------------------------------------------------------------

- at line 1390, the return value r is safely initialized to a non-zero
  error code (to prevent sshkey_to_base64() from mistakenly returning
  success, i.e. zero);

- at line 1398, if sshkey_putb() fails (if it returns a non-zero error
  code), then r is automatically set to this error code and immediately
  returned at line 1413;

- at line 1400, if sshbuf_dtob64_string() fails (if it returns NULL),
  then r is manually reset to a non-zero error code at line 1401 and
  immediately returned at line 1413;

- if no error occurs at all in sshkey_to_base64(), then at line 1409 r
  is set to zero (success) and eventually returned at line 1413.

This idiom left us pondering: what if the manual reset of the return
value r at line 1401 were missing? Then sshkey_to_base64() would
mistakenly return zero (success) if sshbuf_dtob64_string() fails at line
1400, because r was automatically set to zero at line 1398 (because, to
reach line 1400, sshkey_putb() necessarily succeeded, at line 1398).

The consequences of such a mistake (a function that returns success
although it clearly failed) would of course depend on the exact nature
of the affected function and its callers; but we began to suspect that,
in a large code base such as OpenSSH, some of the manual resets of the
return values r were inevitably missing, and some of these mistakes may
very well have security consequences.

Note: the same basic idea also underlies Kevin Backhouse's beautiful
CVE-2023-2283, an authentication bypass in libssh; for more information:

  https://securitylab.github.com/advisories/GHSL-2023-085_libssh/
  https://x.com/kevin_backhouse/status/1666459308941357056


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Experiments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To confirm our suspicion, we adopted a dual strategy:

- we manually audited all of OpenSSH's functions that use "goto", for
  missing resets of their return value;

- we wrote a CodeQL query that automatically searches for functions that
  "goto out" without resetting their return value in the corresponding
  "if" code block.

Warning: our rudimentary CodeQL query (below) might hurt the eyes of
experienced CodeQL programmers; if you, dear reader, are able to write a
query that runs faster or produces less false positives, please post it
to the public oss-security mailing list!

------------------------------------------------------------------------
/**
 * @kind problem
 * @id cpp/test
 * @problem.severity error
 */

import cpp

Stmt getRecChild(Stmt s) {
  result =3D s or
  result =3D getRecChild(s.getChildStmt())
}

ControlFlowNode getRecPredecessor(ControlFlowNode n) {
  result =3D n or
  result =3D getRecPredecessor(n.getAPredecessor())
}

from Function f, ReturnStmt r, LocalVariable v, IfStmt i, Stmt b
where f.getBlock().getLastStmtIn() =3D r and
      exists(VariableAccess a | a.getTarget() =3D v and not a.isModified() =
and a.getEnclosingStmt() =3D getRecChild(r)) and
      v.getType() instanceof IntType and
      i.getEnclosingFunction() =3D f and
      i.getThen() =3D b and
      (b instanceof GotoStmt or b instanceof BlockStmt and ((BlockStmt)b).g=
etLastStmtIn() instanceof GotoStmt) and
      not exists(Assignment a | a.getEnclosingFunction() =3D f and a.getLVa=
lue().toString() =3D v.getName() and a.getEnclosingStmt() =3D getRecChild(i=
)) and
      not exists(Assignment a | a.getEnclosingFunction() =3D f and a.getLVa=
lue().toString() =3D v.getName() and a.getEnclosingStmt() =3D getRecChild(b=
)) and
          exists(Assignment a | a.getEnclosingFunction() =3D f and a.getLVa=
lue().toString() =3D v.getName() and
            a.getLocation().toString() !=3D v.getDefinitionLocation().toStr=
ing() and
            a.getBasicBlock().getANode() =3D getRecPredecessor(i.getBasicBl=
ock().getANode()))
select f, b.getLocation().toString()
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Results
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Against OpenSSH 9.9p1, this CodeQL query produces 50 results. Among
these, on closer inspection, 37 are false positives:

------------------------------------------------------------------------
| addr_match_list                | addrmatch.c:91:5:91:17       |
| hostkeys_foreach_file          | hostfile.c:806:5:806:13      |
| hostkeys_foreach_file          | hostfile.c:819:25:823:4      |
| hostkeys_foreach_file          | hostfile.c:832:26:837:5      |
| hostkeys_foreach_file          | hostfile.c:856:36:860:3      |
| hostkeys_foreach_file          | hostfile.c:874:55:876:4      |
| hostkeys_foreach_file          | hostfile.c:884:5:884:13      |
| hostkeys_foreach_file          | hostfile.c:895:5:895:13      |
| sshkey_ecdsa_fixup_group       | ssh-ecdsa.c:81:4:81:12       |
| sshkey_ecdsa_fixup_group       | ssh-ecdsa.c:88:3:88:11       |
| sshkey_ecdsa_fixup_group       | ssh-ecdsa.c:94:3:94:11       |
| ssh_packet_read_poll2          | packet.c:1696:5:1696:13      |
| sshkey_load_private_type       | authfile.c:133:3:133:11      |
| kex_exchange_identification    | kex.c:1332:32:1336:4         |
| kex_exchange_identification    | kex.c:1342:55:1345:4         |
| kex_exchange_identification    | kex.c:1358:25:1363:3         |
| input_kex_gen_init             | kexgen.c:331:3:331:11        |
| input_kex_gen_reply            | kexgen.c:207:3:207:11        |
| process_config_line_depth      | readconf.c:2444:14:2448:2    |
| parse_args                     | sftp.c:1511:4:1511:21        |
| delete_file                    | ssh-add.c:193:3:193:11       |
| delete_file                    | ssh-add.c:199:64:203:2       |
| add_file                       | ssh-add.c:401:3:401:11       |
| add_file                       | ssh-add.c:405:60:410:2       |
| add_file                       | ssh-add.c:412:43:417:2       |
| add_file                       | ssh-add.c:420:47:424:2       |
| add_file                       | ssh-add.c:425:50:429:2       |
| add_file                       | ssh-add.c:434:50:438:2       |
| _ssh_read_banner               | ssh_api.c:366:5:366:13       |
| _ssh_read_banner               | ssh_api.c:370:5:370:13       |
| ssh_create_socket              | sshconnect.c:384:28:388:3    |
| ssh_create_socket              | sshconnect.c:389:20:392:3    |
| ssh_create_socket              | sshconnect.c:397:40:401:3    |
| ssh_create_socket              | sshconnect.c:404:47:408:3    |
| ssh_create_socket              | sshconnect.c:414:58:417:2    |
| ssh_create_socket              | sshconnect.c:418:66:421:2    |
| identity_sign                  | sshconnect2.c:1257:42:1265:3 |
------------------------------------------------------------------------

For example, the line 1696 in packet.c is obviously a false positive
(although the "if" code block at lines 1695-1696 does not reset the
return value r to a non-zero error code, our CodeQL query fails to
notice that, to reach line 1695, r was necessarily set to a non-zero
error code at lines 1691-1694):

------------------------------------------------------------------------
1557 int
1558 ssh_packet_read_poll2(struct ssh *ssh, u_char *typep, u_int32_t *seqnr=
_p)
1559 {
....
1691                 if (!mac->etm && (r =3D mac_check(mac, state->p_read.s=
eqnr,
1692                     sshbuf_ptr(state->incoming_packet),
1693                     sshbuf_len(state->incoming_packet),
1694                     sshbuf_ptr(state->input), maclen)) !=3D 0) {
1695                         if (r !=3D SSH_ERR_MAC_INVALID)
1696                                 goto out;
....
1791  out:
1792         return r;
1793 }
------------------------------------------------------------------------

The remaining 13 results are all true positives (functions that return
success although they clearly failed), but to the best of our knowledge,
they have either no or minor security consequences:

------------------------------------------------------------------------
| ssh_krl_from_blob              | krl.c:1061:38:1064:2         |
| revoked_certs_generate         | krl.c:676:41:679:4           |
| sshsk_load_resident            | ssh-sk-client.c:440:48:443:3 |
| sshsk_load_resident            | ssh-sk-client.c:451:32:454:3 |
| process_ext_session_bind       | ssh-agent.c:1742:48:1745:2   |
| parse_key_constraint_extension | ssh-agent.c:1209:22:1212:3   |
| parse_key_constraint_extension | ssh-agent.c:1218:46:1221:4   |
| parse_key_constraint_extension | ssh-agent.c:1235:23:1238:3   |
| parse_key_constraint_extension | ssh-agent.c:1246:40:1249:4   |
| input_userauth_pk_ok           | sshconnect2.c:700:61:703:2   |
| input_userauth_pk_ok           | sshconnect2.c:708:27:713:2   |
| input_userauth_pk_ok           | sshconnect2.c:726:28:732:2   |
| cert_filter_principals         | sshsig.c:875:61:878:2        |
------------------------------------------------------------------------

For example, the missing resets of the return value r at lines
1209-1212, 1218-1221, 1235-1238, and 1246-1249 in ssh-agent.c could (in
theory at least) result in parse_key_constraint_extension() returning
success (because, to reach these lines, r was necessarily set to zero,
at line 1187 for example), but without actually constraining the key
that is being added to the ssh-agent:

------------------------------------------------------------------------
1176 static int
1177 parse_key_constraint_extension(struct sshbuf *m, char **sk_providerp,
1178     struct dest_constraint **dcsp, size_t *ndcsp, int *cert_onlyp,
1179     struct sshkey ***certs, size_t *ncerts)
1180 {
....
1187         if ((r =3D sshbuf_get_cstring(m, &ext_name, NULL)) !=3D 0) {
1188                 error_fr(r, "parse constraint extension");
1189                 goto out;
1190         }
....
1209                 if (*dcsp !=3D NULL) {
1210                         error_f("%s already set", ext_name);
1211                         goto out;
1212                 }
....
1218                         if (*ndcsp >=3D AGENT_MAX_DEST_CONSTRAINTS) {
1219                                 error_f("too many %s constraints", ext=
_name);
1220                                 goto out;
1221                         }
....
1235                 if (*certs !=3D NULL) {
1236                         error_f("%s already set", ext_name);
1237                         goto out;
1238                 }
....
1246                         if (*ncerts >=3D AGENT_MAX_EXT_CERTS) {
1247                                 error_f("too many %s constraints", ext=
_name);
1248                                 goto out;
1249                         }
....
1265  out:
....
1268         return r;
1269 }
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
MitM attack against OpenSSH's VerifyHostKeyDNS-enabled client
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Our manual audit (of all the functions that use "goto") allowed us to
verify that our CodeQL query does not produce false negatives (which
would be worse than false positives), but it also allowed us to review
code that is similar but not identical to the idiom presented in the
"Background" section.

In OpenSSH's client, the following code, which checks the server's
identity (the server's host key), naturally caught our attention:

------------------------------------------------------------------------
  93 static int
  94 verify_host_key_callback(struct sshkey *hostkey, struct ssh *ssh)
  95 {
 ...
 101         if (verify_host_key(xxx_host, xxx_hostaddr, hostkey,
 102             xxx_conn_info) =3D=3D -1)
 103                 fatal("Host key verification failed.");
 104         return 0;
 105 }
------------------------------------------------------------------------
1470 int
1471 verify_host_key(char *host, struct sockaddr *hostaddr, struct sshkey *=
host_key,
1472     const struct ssh_conn_info *cinfo)
1473 {
....
1538         if (options.verify_host_key_dns) {
....
1543                 if ((r =3D sshkey_from_private(host_key, &plain)) !=3D=
 0)
1544                         goto out;
....
1571 out:
....
1580         return r;
1581 }
------------------------------------------------------------------------

- in verify_host_key() (when VerifyHostKeyDNS is enabled, at line 1538),
  if sshkey_from_private() returns any non-zero error code (at line
  1543), then this error code is immediately returned to
  verify_host_key()'s caller (at line 1580);

- unfortunately, in verify_host_key_callback() (verify_host_key()'s
  caller), only the return value -1 is treated as an error (at lines
  101-103);

- any other return value (for example, -2) is ignored, and zero
  (success) is mistakenly returned to verify_host_key_callback()'s
  caller (at line 104), as if no error had occurred, and without
  checking the server's host key at all.

The question, then, is: to impersonate this server, how can an active
machine-in-the-middle force the client to return an error code other
than -1 (SSH_ERR_INTERNAL_ERROR) at line 1543?

In theory, sshkey_from_private() can return many different error codes:
-10 (SSH_ERR_INVALID_ARGUMENT), -14 (SSH_ERR_KEY_TYPE_UNKNOWN), etc. In
practice, however, the host-key structure that is copied at line 1543
was originally created by sshkey_fromb(), which would have fatally
failed already if the server's host key were malformed.

The only error code that we were able to eventually force out of
sshkey_from_private() is -2 (SSH_ERR_ALLOC_FAIL), an out-of-memory
error. (If you, dear reader, find another solution to this problem,
please post it to the public oss-security mailing list!) Consequently,
to carry out this machine-in-the-middle attack in practice (to
successfully impersonate the real server), we must:

- make our fake server's host key as large as possible, to maximize our
  chances of exhausting the client's memory inside sshkey_from_private()
  at line 1543 -- but we are limited to ~256KB (PACKET_MAX_SIZE) because
  packet compression is not supported before the end of the initial key
  exchange (not even in the client);

- find a memory leak in the client's code (or at least an unlimited
  allocation of memory that is not freed before the end of the initial
  key exchange), to consume as much of the client's memory as possible
  before the call to sshkey_from_private() at line 1543.

And so began our quest for a pre-authentication memory leak in OpenSSH's
client.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DoS attack against OpenSSH's client and server (memory consumption)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As yet another testimony to OpenSSH's code quality, we actually failed
to find a pre-authentication memory leak. Instead, we found an unlimited
allocation of memory that is not freed until the very end of the initial
key exchange:

------------------------------------------------------------------------
1796 ssh_packet_read_poll_seqnr(struct ssh *ssh, u_char *typep, u_int32_t *=
seqnr_p)
1797 {
....
1863                 case SSH2_MSG_PING:
1864                         if ((r =3D sshpkt_get_string_direct(ssh, &d, &=
len)) !=3D 0)
1865                                 return r;
1866                         DBG(debug("Received SSH2_MSG_PING len %zu", le=
n));
1867                         if ((r =3D sshpkt_start(ssh, SSH2_MSG_PONG)) !=
=3D 0 ||
1868                             (r =3D sshpkt_put_string(ssh, d, len)) !=
=3D 0 ||
1869                             (r =3D sshpkt_send(ssh)) !=3D 0)
1870                                 return r;
1871                         break;
------------------------------------------------------------------------
2827 sshpkt_send(struct ssh *ssh)
2828 {
....
2831         return ssh_packet_send2(ssh);
------------------------------------------------------------------------
1343 ssh_packet_send2(struct ssh *ssh)
1344 {
....
1360         if ((need_rekey || state->rekeying) && !ssh_packet_type_is_kex=
(type)) {
....
1368                 p->payload =3D state->outgoing_packet;
1369                 TAILQ_INSERT_TAIL(&state->outgoing, p, next);
1370                 state->outgoing_packet =3D sshbuf_new();
....
1381                 return 0;
1382         }
....
1388         if ((r =3D ssh_packet_send2_wrapped(ssh)) !=3D 0)
------------------------------------------------------------------------
1163 ssh_packet_send2_wrapped(struct ssh *ssh)
1164 {
....
1276         if ((r =3D sshbuf_reserve(state->output,
1277             sshbuf_len(state->outgoing_packet) + authlen, &cp)) !=3D 0)
------------------------------------------------------------------------

- every time a PING packet is received (at lines 1863-1864), a PONG
  packet is produced (at lines 1867-1868) and buffered (at line 1869),
  but not immediately sent out (because ssh_packet_write_wait() is not
  called explicitly);

- outside a key exchange (at line 1388), such a PONG packet (the
  "outgoing_packet") is simply appended to the "output" buffer (at lines
  1276-1277): the memory allocated for these PONG packets is limited,
  because the number of PONG packets that can be buffered is limited by
  the maximum size of the "output" buffer, 128MB (SSHBUF_SIZE_MAX);

- on the other hand, during a key exchange (at lines 1360-1382), such a
  PONG packet (the current "outgoing_packet") is appended to a *list* of
  outgoing packets (at lines 1368-1369), and a new "outgoing_packet" is
  allocated (at line 1370): the memory allocated for these PONG packets
  is unlimited, because the number of PONG packets that can be buffered
  is unlimited.

This uncontrolled consumption of memory affects both the client and the
server, and is also asymmetrical: for every 16B PING packet received, a
PONG buffer of 256B (SSHBUF_SIZE_INIT) is allocated, and not freed until
the very end of the key exchange. On the server side, this vulnerability
is mitigated by the default LoginGraceTime: after 2 minutes, any memory-
consuming connection is automatically killed by SIGALRM; however, since
100 concurrent connections are allowed by default, the MaxStartups and
PerSourcePenalties options are also needed for a full mitigation.

On the client side, no mitigations exist for this vulnerability. In
fact, it is ideal for our machine-in-the-middle attack: we use it to
force the client to run out of memory inside sshkey_from_private(), and
as soon as the initial key exchange with our fake server ends (and the
real server is impersonated), all the allocated memory is freed, which
guarantees that the client does not run out of memory later during the
lifetime of its connection with our fake server.

We will demonstrate our machine-in-the-middle attack in the "Proof of
concept" section below, but we must first discuss a second, unforeseen
aspect of this vulnerability: an asymmetric resource consumption of CPU.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DoS attack against OpenSSH's client and server (CPU consumption)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As soon as the initial key exchange ends (at lines 1392-1416), every
PONG packet that was buffered (not sent out) is removed from the list of
outgoing packets (at lines 1395-1410) and re-buffered (at line 1413), by
appending it to the "output" buffer (at lines 1276-1277). Unfortunately,
this re-buffering has a quadratic time complexity (O(n^2)): for each and
every PONG packet of 256B (SSHBUF_SIZE_INC, at line 352), a new "output"
buffer is malloc()ated (at line 73), and the entire contents of the old
buffer (the already re-buffered PONG packets) are copied into the new
buffer (at line 78):

------------------------------------------------------------------------
1343 ssh_packet_send2(struct ssh *ssh)
1344 {
....
1392         if (type =3D=3D SSH2_MSG_NEWKEYS) {
....
1395                 while ((p =3D TAILQ_FIRST(&state->outgoing))) {
....
1409                         state->outgoing_packet =3D p->payload;
1410                         TAILQ_REMOVE(&state->outgoing, p, next);
....
1413                         if ((r =3D ssh_packet_send2_wrapped(ssh)) !=3D=
 0)
1414                                 return r;
1415                 }
1416         }
------------------------------------------------------------------------
1163 ssh_packet_send2_wrapped(struct ssh *ssh)
1164 {
....
1276         if ((r =3D sshbuf_reserve(state->output,
1277             sshbuf_len(state->outgoing_packet) + authlen, &cp)) !=3D 0)
------------------------------------------------------------------------
372 sshbuf_reserve(struct sshbuf *buf, size_t len, u_char **dpp)
373 {
...
381         if ((r =3D sshbuf_allocate(buf, len)) !=3D 0)
------------------------------------------------------------------------
329 sshbuf_allocate(struct sshbuf *buf, size_t len)
330 {
...
352         rlen =3D ROUNDUP(buf->alloc + need, SSHBUF_SIZE_INC);
...
357         if ((dp =3D recallocarray(buf->d, buf->alloc, rlen, 1)) =3D=3D =
NULL) {
------------------------------------------------------------------------
 38 recallocarray(void *ptr, size_t oldnmemb, size_t newnmemb, size_t size)
 39 {
 ..
 73         newptr =3D malloc(newsize);
 ..
 78                 memcpy(newptr, ptr, oldsize);
------------------------------------------------------------------------

For example, if we send 128MB (SSHBUF_SIZE_MAX) of PING packets (i.e.,
128MB / 256B =3D 2^19 packets), then the re-buffering of the corresponding
PONG packets would in theory end up copying 32TB in total (approximately
256B / 2 * (2^19)^2 =3D 2^45 bytes).

In practice, if we send roughly 16MB of PING packets to the server
(i.e., 16MB / 256B =3D 2^16 packets), and directly disconnect from the
server, then we leave the server CPU spinning at 100% for 2 minutes (the
default LoginGraceTime). Once again, because 100 concurrent connections
are allowed by default, the MaxStartups and PerSourcePenalties options
are also needed for a full mitigation.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Proof of concept
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In the following example, "client" is running a VerifyHostKeyDNS-enabled
OpenSSH client (version 9.6p1, from Ubuntu 24.04) whose available memory
is limited to 256MB by an RLIMIT_DATA resource limit. "client" is trying
to connect to the SSH server "real-server", but it is currently under an
active machine-in-the-middle attack carried out by a "fake-server".

If this "fake-server" tries to impersonate the "real-server" without
implementing the out-of-memory attack discussed in the three previous
sections, then "client" immediately detects that "real-server"s host key
has changed and aborts:

------------------------------------------------------------------------
client$ ulimit -S -a
...
data seg size               (kbytes, -d) 262144
...

client$ /usr/bin/ssh -o VerifyHostKeyDNS=3Dyes john@real-server
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
...
Host key for real-server has changed and you have requested strict checking.
Host key verification failed.
------------------------------------------------------------------------

However, if "fake-server" does implement the out-of-memory attack
discussed previously (by allocating a 1024-bit RSA key and a ~140KB
certificate extension, plus ~234MB of PONG packets -- but many other
combinations work), then the "client"s call to sshkey_from_private()
returns SSH_ERR_ALLOC_FAIL, and its checks of the "real-server"s host
key are completely bypassed, thus allowing the "fake-server" to
successfully impersonate the "real-server":

------------------------------------------------------------------------
fake-server# /usr/local/sbin/sshd -o KexAlgorithms=3Dcurve25519-sha256 -h /=
root/exploit_234925474_140877_1024_ssh-rsa
------------------------------------------------------------------------
client$ /usr/bin/ssh -o VerifyHostKeyDNS=3Dyes john@real-server
john@real-server's password:=20
fake-server$=20
------------------------------------------------------------------------

Side note: this password prompt takes longer than usual to be displayed,
because of the quadratic re-buffering of the numerous PONG packets.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank the OpenSSH developers (in particular Markus Friedl, Damien
Miller, and Theo de Raadt) for their outstanding work on this release
and on OpenSSH in general. We also thank the members of distros@openwall
(in particular Salvatore Bonaccorso, Marco Benatto, and Solar Designer).

Finally, we thank Bad Sector Labs for their kind words about our work
and for their excellent "Last Week in Security" blog posts:

  https://blog.badsectorlabs.com/last-week-in-security-lwis-2024-11-25.html


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-01-31: Advisory and proofs of concepts sent to openssh@openssh.

2025-02-10: Advisory and patches sent to distros@openwall.

2025-02-18: Coordinated release.

