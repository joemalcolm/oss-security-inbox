Received: (qmail 24125 invoked by uid 550); 2 Feb 2023 13:02:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24092 invoked from network); 2 Feb 2023 13:02:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=XId31ebB6DPQEZ1Lq5Y4OtQ7qI9819M4/iFO466rWQA=;
 b=C+11XYLPHB9M2Kt3nDika8J8IVUQpFh0pPzITkhOT3T9SDAyG3OEWQHaAYKu2wcFRR1F
 hg740Ejal7wkYasSR+PckVWBjD/MDoWXyG2w38fP5rlB/Bh8zwLUvGf1mKzooGALs9jz
 YaR/W0fWy5Acz4N5b2XXpHddK8Ux+BGH6awlFLilnjtaDAryhDCEUr1sk+xw0NCsaw+c
 A6odmJQAG6/rMv3SbOcQttFDabWayPDwN5cmxsnvFzcwLUNZRuSZgRsBKVKSYOSvTgDC
 Ldmax2fPWx6C4Gs3DFysh6b7uqRhUAb4+x0Th9r0oZmS3WlMkaR98rLmAb1dP5TIbMy9 cg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jq6GlMAmIRI+Vls4OZwoFBMlVCqxithNXC9RMpiUKk1p0tKYLOxp3SGzSOR4yGdAiNVq5kdECk3fOvskAbJ9eyFbUPSbrx3Z9QoTUsMKTGC7Asg43ClrbVEJ2aOVZQ6n/J+CUl9QLxmoqHz+22JqKKkhg9xj9+AGpKc0Fpxz4Ov8QjJowSsEtokSzX731uAnQYt41Wwh9JtQUTY2dsqb3Bfba/MfezH0OphskEHmWgykXII8JAMv675T+MvCmdFWzAdbycwvqg035ZT80ZJXYj9Gx/yHDmcbA1LpXNDasvuMEDrOxGjE+ULjzrAqpHW7kJJrXcVZR5wGlIggCFWSyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XId31ebB6DPQEZ1Lq5Y4OtQ7qI9819M4/iFO466rWQA=;
 b=BzsGjFVF+SU9YxRsoPXmZmRSkz/YQqwimmKZ+4zSyiK4cV5aZv60h2uMg48hwWy4xfKesc4tbvDz568C4cbKaUrWoSLQNfakLFxEsIR/HqTb6Em+5BKJjr0CmTNKYkIyH99V6zWWlCbXleevzu5wpV9pc+HiPqiTUSbluvSw2tA7AA6JiNGeebt0m28zlRi9RA7wqoAFbEs/0qHdV6hUK/TPYQWb3Xd2K5CzGWULkwrDUrU7G7PHMJWTwLn5mRwW3reSqTwBE63e2+kwx2z0Ya+XhNWfYdiAr1Hl1EmH/npsqGHP8GRrSDvpuAobdSjhKNLmMt34MUebAUMkzBnB2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XId31ebB6DPQEZ1Lq5Y4OtQ7qI9819M4/iFO466rWQA=;
 b=h0fW7P0KWH6kcHJ15mrGdPnZF9LFe3cTVMJtQg6iCHuAqfwoNhYjBvYhLhRJ5IpF2hECXYq7m87RvVNI28awgrRKSfZU2L00KyFBsE9/+M+449ubr/wEN7VpTRo3LxAN8k9pxXaR3n2dBHy1ObuB/VUIrY26+2QblQfE/u757hQvIqGBsU4KwTaJo0wGp2r5sidugmctoYUsVoYj5TDMJRzof7nBZrVrHrv6lXAxhoh0QfgaEVFNVL6JOfBAaXZQKumq9BQpGPh0LEiHIlukB6s9Ux9KW7tWCTFj+0vCf3jqVUgYrMQLnMxIXbg8fx9S7sNQ33ctEb6/O+Fe/y2nwA==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: double-free vulnerability in OpenSSH server 9.1
Thread-Index: AQHZNwaM3H4tU8wi1kuZnlZK7gqcTw==
Date: Thu, 2 Feb 2023 13:02:04 +0000
Message-ID: <20230202130212.GA15689@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|CH2PR06MB6519:EE_
x-ms-office365-filtering-correlation-id: e08cc2ed-3c0d-4ce9-7877-08db051daee2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2Zufqjrl/P1CUOYMTtxmV2g/S4lBGRlOx5KOVV1aLkp0oEwYx5k+LE7JQpZ2g2GoP2OIkf4YgQlz6PfsGqj1bDUSQ6OLG/LCu2r+W4pWLYlIfn68d2dWggF4udw5HfXGXt6HHjpPDzkAY1FJtfXr2RmRVgmpJs+kay8Q5wK0ENi8kPSnN/Ut8QdQtGO4jccol0zDmVw8IMh1G7Xkpju5sWl0K4rJZwpOlX4+isUY1hTsrmE+uVN+OBh90VwojO3tSiLE4FvHScsTZBbd5F5e00kllEfjBPSBmvR3ryEBPx7GGE8imUnA96Y4VNgHmZmYbMGQOuavmzDcWJoJ2OPJU55p8fK1ptGwP+nOTPEHgkOsf8cRYbw1m6CWK0ffJwxJXrHnKQgl+xUSkddUdKiCKoeVrm0CctvXvA2Lc9IWILzctoCr5o2I13Dn/MfvL06F4BJCAIZMwSZwhTh9w8Ku/TqIvKlXnozwcl1zL3MiVIJoX6SPmGpyc1f4gITQGyVSs8WXg4e9ux75DxNZh+LqlunJVI9hFKKRePJ9zek0JunZ9qSdbXGkNV+65UOqqHX8EFgaXi/Jkcu4jMmQTkPQHfCHF0Vigo/Qi1H80IKhi1Kb3sOwGbEjsPION8L0BDo60J9tfLVkntkNA8aQcjI1SgTJKKH8x0dNlxrpP++uyGtPkwM1Ospq1n2gVEZJK3S0ob1HgmS2XU9+W7ovGq36qtHejgyBG5QuTvfiMEJvNhQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(136003)(366004)(376002)(396003)(346002)(39860400002)(451199018)(478600001)(9686003)(38100700002)(6506007)(122000001)(86362001)(66476007)(41300700001)(66946007)(186003)(26005)(966005)(8936002)(38070700005)(71200400001)(6486002)(6916009)(83380400001)(6512007)(66556008)(91956017)(76116006)(64756008)(66446008)(33656002)(1076003)(2906002)(19627235002)(8676002)(55236004)(316002)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?JNxZROApb8yB1H0w8z6OHywkNyV+iHd61fVOA+nO2ikKFtz0iGRn14FElA1l?=
 =?us-ascii?Q?Ghxmv05e8TQcDoS5egLl1FhBYY4RAzU2JZcjj+RZ7dfM9dIziF2cs8zpdPWC?=
 =?us-ascii?Q?O0US6g5wFzRHUNe6dTDo9J0l9h3EfXCoQt8BVhnsfD8ZwDvJ3knPYBHZNuwc?=
 =?us-ascii?Q?xS7cWkaR4xulSOmi6EGqevw7CAEF3JWR2alcI3Ec7d4XclPtqPm3HYj+Kcm7?=
 =?us-ascii?Q?CzJfUZKLqK4jKMxK9IVscGWqT8HScvx3tw6La1rfAiPC9hXvF7465RWuz7gH?=
 =?us-ascii?Q?if3dSvW5wmOVyg2nJtMwPBWkMIyv58ZPYiEq0pZvwdJp7EWYqAiEgZVFDv7l?=
 =?us-ascii?Q?+yfxrkCstCkyyNPujeNKf3aAXZqtp75lOJNIXonYxyzlV8IZ5Kgyebp0npis?=
 =?us-ascii?Q?6C+aKjauE4asNQA5G+SOSe02VGGeqTa/EagMdb6CNRRAS7dq2pWbIdxcj3mB?=
 =?us-ascii?Q?o2/4y2RXVPQHvDiCi0b6JHGw0cVa8r2Sdsq4l8GJP7jOTErmarsAlQGefG8L?=
 =?us-ascii?Q?9dlUWxf5N9049GX29vw2v+FHO7RKSSgcJolWccf+2vj8KO51NQxzLaL0VJTn?=
 =?us-ascii?Q?Cqlm4Z24v7HjmqFraH+nprrKX+Gr5i2zTrvHd5NwpSQYwAsZ/lBmJtGfq9Ge?=
 =?us-ascii?Q?GQh2slFM0Rvw4MON0OuEAUD6gJCDRI12u+I7/PZibJDiFCuMrKoOPDz1eJ7R?=
 =?us-ascii?Q?c/IbbLLKhNPaSPBHWBkIc5Rh6kd6mYUEoTznzFE/YRFC0lNMuaGb+KSBiK8q?=
 =?us-ascii?Q?oy+5SHuvr3Qng9Po5OwZRY39GNU5YcbYbFKcXc4IVf3/umplh668bZnC/x1H?=
 =?us-ascii?Q?naiKP/iNlAmaXexWmJ7rfjKtUmmJd6jnKW7ux5wK6i0AhPJpf9Mcd+JcnDXw?=
 =?us-ascii?Q?zwUNJnD2FgXmvAJgiOg144VPiHKG36HLLzi3W5+SDZCcn9kl5hscqWgDBTqh?=
 =?us-ascii?Q?tkuCRbbXo11UOE07heLG8pAWSLwAF5Z1u9i2VNPa2KtfXUWlLa3bbPiuiuXg?=
 =?us-ascii?Q?0h4LCVi4zu2JT4oUqzwbB8PSOLZGvgPHTT2rL1Ndrmf67dIJ1fF3vKjvJ8QF?=
 =?us-ascii?Q?uB9ZpNP226CUhZpZ0iFXcj5/5BpVlwwqkzk3T+IHQEek5p00hHfaQSxcVJN3?=
 =?us-ascii?Q?ErzFrR5qV23mZJIeNh7Q2SfbDo2OJLDSVbnHTj4SVaaYHjLkNqaE7UTcYRUN?=
 =?us-ascii?Q?HTw23Yq6kpjeiRaHdXXRcmXfS0DhTP6zaGvHoZRaeCHo5erG++7/uM/hD85J?=
 =?us-ascii?Q?XPO67ffy/2wWm3KZ3YJ8kGyfYPIvEFnv6nc6VlTygFlBGswrYttoRhGqIEEg?=
 =?us-ascii?Q?PhWFtmnFCD1qleeJZSXCxA8OfAGwZkRA+RQJyymWnIs3qaaq6ssZNCNa64p5?=
 =?us-ascii?Q?P7u9ZGxSxsPLE+rilk7nEuhc7FHEB6mTZjBDWNxRNZR3Vnd0YvITWZlfGr6b?=
 =?us-ascii?Q?0QgEBnNUCZhATgEM7JFqcmY53/RRayS44HBI0li1CLNKp0JqMf1KnyViIxRQ?=
 =?us-ascii?Q?hODYOozt57++l6d+OVfeOHNWHTsQ/NlCbOH3LHQfdkdFtdjwLJyXmTsv4CEP?=
 =?us-ascii?Q?mDGcxF5gV3tJlVFUpohGIeCeiRGTB9PJbzdvAkuRF0FQ78pWX/4oQCboJp75?=
 =?us-ascii?Q?kdgWEYbvCsIHcKIvMmuKarg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <7DA2F4E61483C343BCDAD3E7D0C7C5BE@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e08cc2ed-3c0d-4ce9-7877-08db051daee2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 13:02:04.8856
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NBFb57Y5Y4O5FW8kVgrXbgn0CKbf/9R7C7KG7KN8pqKR0xxdQR+DHo751mzzbocczvZ4yZZos8h/L/LFlD6UwAlDOEoeBgxNIVzGP9JUjrk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR06MB6519
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-02_04,2023-02-02_01,2022-06-22_01
Subject: [oss-security] double-free vulnerability in OpenSSH server 9.1

Hi all,

In case it helps, below is a brief analysis of this vulnerability:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

On February 2, 2023, OpenSSH version 9.2 was released: it fixes a
pre-authentication vulnerability (a double free) in the OpenSSH server
version 9.1 (only this specific version, which was released in October
2022). Affected users are urged to upgrade, as this vulnerability can be
triggered in the default configuration of the OpenSSH server (sshd).

This double free was introduced in July 2022 by the following commit:

https://github.com/openssh/openssh-portable/commit/486c4dc3b83b4b67d663fb0f=
a62bc24138ec3946

and was reported to the OpenSSH Bugzilla in January 2023 by Mantas
Mikulenas:

https://bugzilla.mindrot.org/show_bug.cgi?id=3D3522

The chunk of memory that is freed twice is "options.kex_algorithms"; it
is freed once via do_ssh2_kex(), which calls compat_kex_proposal():

------------------------------------------------------------------------
2374 do_ssh2_kex(struct ssh *ssh)
....
2381         myproposal[PROPOSAL_KEX_ALGS] =3D prop_kex =3D compat_kex_prop=
osal(ssh,
2382             options.kex_algorithms);
------------------------------------------------------------------------
191 compat_kex_proposal(struct ssh *ssh, char *p)
...
198         if ((ssh->compat & SSH_BUG_CURVE25519PAD) !=3D 0)
199                 if ((p =3D match_filter_denylist(p,
...
202         if ((ssh->compat & SSH_OLD_DHGEX) !=3D 0) {
203                 cp =3D p;
204                 if ((p =3D match_filter_denylist(p,
...
208                 free(cp);
------------------------------------------------------------------------

- if at line 198 the "SSH_BUG_CURVE25519PAD" compatibility bit is *not*
  set,

- and if at line 202 the "SSH_OLD_DHGEX" compatibility bit *is* set,

- then at line 203 "cp" becomes equal to "p", which is still equal to
  "options.kex_algorithms",

- and at line 208 "cp" is freed, i.e. "options.kex_algorithms" is freed
  and becomes a dangling pointer.

(Note: the "SSH_BUG_CURVE25519PAD" and "SSH_OLD_DHGEX" compatibility
bits depend only on the client version, not on the server configuration;
for example, the bug report mentioned earlier uses "PuTTY_Release_0.64",
and we will use "FuTTY" for the ssh client version later in this post.)

"options.kex_algorithms" is then freed a second time via
do_authentication2(), which calls input_userauth_request(), which calls
mm_getpwnamallow(), which calls copy_set_server_options(), which calls
assemble_algorithms(), which calls kex_assemble_names() with "listp"
equal to "&options.kex_algorithms", which therefore double-frees
"options.kex_algorithms" at line 315:

------------------------------------------------------------------------
 225 kex_assemble_names(char **listp, const char *def, const char *all)
 ...
 240         list =3D *listp;
 ...
 315         free(list);
------------------------------------------------------------------------

To reproduce this vulnerability, we installed a Debian testing
(bookworm, which ships OpenSSH 9.1p1 at the time of writing this post)
and we simply modified the banner of the ssh client to pretend that it
is a "FuTTY" client (to force the "SSH_OLD_DHGEX" compatibility bit in
sshd):

------------------------------------------------------------------------
$ cp -i /usr/bin/ssh ./ssh

$ sed -i s/OpenSSH_9.1p1/FuTTYSH_9.1p1/g ./ssh

$ ./ssh -v 127.0.0.1
...
debug1: Local version string SSH-2.0-FuTTYSH_9.1p1 Debian-2
debug1: Remote protocol version 2.0, remote software version OpenSSH_9.1p1 =
Debian-2
...
debug1: SSH2_MSG_SERVICE_ACCEPT received
Connection closed by 127.0.0.1 port 22
------------------------------------------------------------------------

This connection immediately triggered a double free in the unprivileged
sshd process, as shown by the "Connection closed by 127.0.0.1 port 22"
message above and by the strace output below:

------------------------------------------------------------------------
writev(2, [{iov_base=3D"free(): double free detected in tcache 2", iov_len=
=3D40}, {iov_base=3D"\n", iov_len=3D1}], 2) =3D 20
--- SIGSYS {si_signo=3DSIGSYS, si_code=3DSYS_SECCOMP, si_call_addr=3D0x7f09=
3649e1f5, si_syscall=3D__NR_writev, si_arch=3DAUDIT_ARCH_X86_64} ---
write(8, "\0\0\0g\0\0\0\1\0\0\0\0\0\0\0[ssh_sandbox_violation: unexpected s=
ystem call (arch:0xc000003e,syscall:20 @ 0x7f093649e1f5)", 107) =3D 107
exit_group(1)                           =3D ?
+++ exited with 1 +++
------------------------------------------------------------------------

Exploiting this vulnerability will not be easy: modern memory allocators
provide protections against double frees, and the impacted sshd process
is unprivileged and heavily sandboxed.

Once again we thank OpenSSH's developers for their outstanding work and
for their implementation of these defense-in-depth mechanisms (privilege
separation, sandboxing) that make it so much harder to exploit such a
vulnerability.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

With best regards,

--=20
the Qualys Security Advisory team=
