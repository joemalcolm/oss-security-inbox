Received: (qmail 25841 invoked by uid 550); 13 Feb 2023 12:02:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25822 invoked from network); 13 Feb 2023 12:02:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=qualyscom;
 bh=dxLxqEdemQ+vZbEHw5TnAFXmYe3zmXiSB4HBLRbLiJo=;
 b=DSV1znz99N8p6bkLrXX9/JqntgOPkeBvYHQrUfocN2Ajqijww90m7khdgLlI7rK/ERTw
 VlsI/s3hllASwXaHBsxdRZlGvvqJp/ATO1840cwsYgM+3eI/SJakcU67Vr12Ztjtjiib
 QjqLZFLM735N+tUfwDsE/cN71EiKVZgTLy9K+AuVoY9zOsy7qYUXN3F1jxtHFwq9b7Qp
 yKQVMzBFJbSklVcOmggKCgCzAVF3NMMSjZ6R6ZohS88ukuDcaZik9fZePC6KVljqx085
 N9m0jKvtqdOvXv1kKVVXLQq49oIaXF+lMSINVoaBZkXBhc+VUCzBj35vjlQgfpW3aqTb 5g== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mSN+KFt/oZ+fuPuNv47iwrUISDgFT0hsNfNnK14pka3ZZxq4YZE9TiRzVQAIXYEsZQPBeDZE72zTp7CXU0sdI+mHTAPjL0GkLeYSZo5ylTFvRQYeTgNLP+7wSaOllHvbD0ln1g8lZMY3YCJzwLLRXcebCSX4Flp+4Q5DN0krn/hvhN6QeqIgZlZj64rSHmcBqFRTmtNInbkR5wgG4UwPYCKxr7dZ+EdXQEUTbifQEz5qTeX7MTk9tGj4kCmj89UZCZz6oHAV4R6XNzQR5/6Ujne6PEuY3SUI7ZtuDSXN2ge563Vufrn5bpICEjWxpaPjl5MOsFg1M6jwjrwmMqRShw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dxLxqEdemQ+vZbEHw5TnAFXmYe3zmXiSB4HBLRbLiJo=;
 b=Ma8XBe54UW33i1Lvc5zVPDSUMyPZzSt3NEmC4dZPIYEMU743I4EsopS69rjBD8vjJNAPTBV80DZHs3OYtlPpNXEO7KoflqjW0IncF0xS5hOjUq0zZueXHtc4/O/nhkknswHRXZub9JiIq3uA8rgdJf3pG2QMIvvrc0TLICu4e3Ff4BPMfjTmQwyhSN0Lto+qWojaeVImuiUqmpmo00X0AEt9IZypeO1DcqMrrbwBCA/VlwmcHP4MFBx9Oc4WY+DhriAjAfQgl5fs91ndvaccgV+1tB8HsSrCoiUFI0BbIrsKzaA1jOGbbJNKduc4lXX/9GQZCxU5Cfj9boB/OdjkFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dxLxqEdemQ+vZbEHw5TnAFXmYe3zmXiSB4HBLRbLiJo=;
 b=AP0rxWOhTiisElBAqfZMaVExyKW3iUogT0pB9yCfz+SXqJ8Z+UJZ7oohDH1WluDs7U/8k4c/20C7AGMqca2Eiqq8rvuIUtDT5HAiGRuCnX/bCW8ozTdHgPyR/n+OBFvHPno9sdGQHxQD4t9KciHEB9ib28F0PVSOauriZ0an5CMKcmJCrBfGpzNn4reWVRSVXXJEPQoTy1zXyrpbd/1zYqYoMQjKoQcIgRTq9STGaRF8tMg8elAPeD+EdGqVy7xHXXsY1rIksQodzwOFRbTbnZXjUbJ2cJKKZcqc2laJIKnT6+C3lI4TZlNwjjopFZQ/17h47ezrbfSHOScLSJZMUw==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: double-free vulnerability in OpenSSH server 9.1 (CVE-2023-25136)
Thread-Index: AQHZP6MCIrfQwQnS6U23aTWiygrAQA==
Date: Mon, 13 Feb 2023 12:02:13 +0000
Message-ID: <20230213120214.GB19824@localhost.localdomain>
References: <20230202130212.GA15689@localhost.localdomain>
In-Reply-To: <20230202130212.GA15689@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|PH0PR06MB8416:EE_
x-ms-office365-filtering-correlation-id: 02982071-d7bf-467b-442e-08db0dba24be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 e2juIOxu5jBHYORI5pdPXD3ylCDQAs9UTWiHTWrNyVHsAE5liPgrKxT+oJxMVzGp1GHHL22bk6No4OtP06g8WFT1ik9YDRFcO5yO/DGHlPim+qtDf4Fp+xLJPdz+3pQzQMZJrNSS1zb8MxkeWyYvpA3Hom+bM+jDxs8BOH7xuzLr2Iv+zhEcnMdMoePaDkCcMpghJSwyzoyIfCxRToPpoGq+kG68lt/7olT6nH/LmGXBhYbmVDhBk4EhC+buGL/Vo1ZxR7tDZ6DxSK5GB/SMgpsWfKYJQCSHUDVMq4NJc9KwV+TE8cO0SKIeK3hXxK3DGh0mi+s7pFULYictaWqDV3aTCaXKTDyiYsAd/A8LWGb79/XtWkygYR8+Jhie1+oV+EJd1BMfcl7QCv7MGXjnhAcSINPuPalWqKJWrhBcYmFq8HXeq64uAq1WT3FFgMeeopMRP8i49Gx/ng5XoNEWGXb1iHSD29ZZE1YQsb7upo5x9aPD7dNTopQwld0ySJuUKAFGgmyZLa+At7URKl1wJPXnSAx2tfW2jmUib/t+sZysrTpX17m5lFsTukdiWTHfza0y9nyufpe2JmXqk/61LGsWlj5SGiXiGSTjIOaBQg2feRhq6p+LnjP6vDVSPyqsbRQt0gBXAZqESDBDqVIzIwUFJvoveeoQINFdtX0jZsMSXZ4vS0ao3Ozi1jUAc2z0whFxp2AWmoCueak0A5nFqw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(396003)(39860400002)(136003)(346002)(376002)(451199018)(1076003)(38070700005)(186003)(26005)(6506007)(86362001)(9686003)(55236004)(6512007)(19627235002)(91956017)(478600001)(83380400001)(2906002)(5660300002)(8936002)(41300700001)(64756008)(122000001)(6916009)(71200400001)(8676002)(66446008)(76116006)(66556008)(316002)(66946007)(38100700002)(33656002)(66476007)(6486002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?HolDaofIxBLmEIjJE2TjRanYMAnW78nz7IyVnZFH2z68VOMo5qCcZSiYGmwN?=
 =?us-ascii?Q?ryd99j3PAnoZEtseRlm5yQeuYORnyVufuHF1PhmzjhvIfkWZ1gSzEZqm5Jsq?=
 =?us-ascii?Q?IRonKuW1mcM9VWBKb7idIHREd1GwrFnLMOUVkkbKLSY+uJJM/d+TeBEp0Efd?=
 =?us-ascii?Q?MznlDfupO8rw/mw0fXLD4Ef8VsdolF44wa4/KsXrR5mUISGNgcbt3Yn3t8Px?=
 =?us-ascii?Q?8toCVB/9QPJEl3vRRL8OQQjtbZeE08ecJgRb+fHCYkZ0SdKZgEUyRik7Ognk?=
 =?us-ascii?Q?toYRbQvWrgPcC9O9G57iJLyCDMVYoZBFEwjSL69rElWeT3SqtEHwM4Y5QJ5z?=
 =?us-ascii?Q?WNs7tITpexia0eiHsMle0rNTnFh2eAdyqu3RmU/XWt7W89hwl6pIpCYKOsVQ?=
 =?us-ascii?Q?LmwPv256TsvvtkciQ+LEl9aLymbqQg69RLLOrAWdN8WoPfepR+woiiBkdrui?=
 =?us-ascii?Q?oQpdrE5oHcpuAJWTAwJlm20UOfiBydXpz7PsUEzqOQT6lkgrt8ego7GWpee7?=
 =?us-ascii?Q?2O+ZX7tz+F8hvqxfP07qgj/IUEaJoqVfYHClvdn5tXADIooAs3tpOED43HSp?=
 =?us-ascii?Q?srB18nN8JRZq7oGyDGkuZ3fKXXSq+7gVNsfpHF/XuGs+IRz9S8moiMBgsEnr?=
 =?us-ascii?Q?sSMzeNWN35t1RXkAb/7XYM5hzR3P5+SEW+cAX36dLzLXPq2Reudxt9qRxIHd?=
 =?us-ascii?Q?y+f5Qft+XdPVvppMjXtfDECKJfXLOTd3uC7x4C+MGS1cQyns8rKdBp10goyG?=
 =?us-ascii?Q?n8GWJP3r49AW/NYjxxTsHYymblKPuChqrdJ1/CUonW1HHoKYydDNiqA4XTYu?=
 =?us-ascii?Q?xGnHMJy7gfvaZuOnwus5U3VuWVPCEW6d/AS7er5om1m2G8lyYxYD7acHjq8D?=
 =?us-ascii?Q?CXcT7Tye90aPXB3oHzpRKuAtgn/Adp1Ey6IVbq113zmcHi1PotSxngWTQ40C?=
 =?us-ascii?Q?LScIc4z6w412DwGv4Ves/ao7k8i9/hcES2gPAWBKf65Jkq/55GxTG6my0aWF?=
 =?us-ascii?Q?qiAC3FF4wNBMZDgl3AVUwp8z6hJfNJs085uT7vqYzW5JIXv/OChV+LGQlYFw?=
 =?us-ascii?Q?uqmyvUFu0ulq+Jp2o+K45im2n4eAAIjr+MT/N0MJulZ6DQlDCQtxJXp9n8Sy?=
 =?us-ascii?Q?rPPvjQAvOkCLB413uN/sGHkgn68QGI1XKz6R5TI81OmL18h1V0UhYU8JKQvR?=
 =?us-ascii?Q?4VBOYKjtsaVRzzedz94MenZUQV41HV+LUcY45Afh6UQ3SnGmiDIT47qScB4b?=
 =?us-ascii?Q?zGYTwunbI7P58bUEhdK2YUB8bghEtqdpheJEOeUgNsgkDMb1fq8UB2uK9K0B?=
 =?us-ascii?Q?J6+sbTLeVcjohC5jRvS5JjKPYnytYzoV5qsBQzG5nHU3Kqhj6NUf6PiTavMz?=
 =?us-ascii?Q?5uXOv849w2vxg9RACyTTIG4K0/Dy8Q2k3/kdqMss/GvtXO9isLcpyRo4juNk?=
 =?us-ascii?Q?zkT4xBLmEMsz/CBV4vcYJuXeM19zyWyW2eI078GhST+ocWFELaNo3M80SEtD?=
 =?us-ascii?Q?AVjwwjCWE8T2tbLRTmlzC4j2Ka8FxQiNIgmSp/BertWqSUSeOkijfhtSoDc1?=
 =?us-ascii?Q?nndubKGpPkqi7YvuOzdgxZnkzJhmfTqZzN429vDEj4aoXgyAvIiQnPbglmSe?=
 =?us-ascii?Q?6NI0bgPbmiBOW0f97McPy/E=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5814E1371B36EB4B90569A57ED8A1694@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02982071-d7bf-467b-442e-08db0dba24be
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2023 12:02:13.4271
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YgSXArEMuSM21ctKKNlOoo4ye5WPzs2EqakX3FGLHTH9jWl6aM3QvpT7/KLmKzNXZq0ywh6RsBdBZ+YAJ9+pCml99Zt2lNjKhKCWYQtN/Es=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB8416
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-13_05,2023-02-13_01,2023-02-09_01
Subject: [oss-security] Re: double-free vulnerability in OpenSSH server 9.1 (CVE-2023-25136)

Hi all,

On Thu, Feb 02, 2023 at 01:02:04PM +0000, Qualys Security Advisory wrote:
> Exploiting this vulnerability will not be easy: modern memory allocators
> provide protections against double frees, and the impacted sshd process
> is unprivileged and heavily sandboxed.

Quick update: we were able to gain arbitrary control of the "rip"
register through this bug (i.e., we can jump wherever we want in sshd's
address space) on an unpatched installation of OpenBSD 7.2 (which runs
OpenSSH 9.1 by default). This is by no means the end of the story: this
was only step 1, bypass the malloc and double-free protections. The next
steps, which may or may not be feasible at all, are:

- step 2, execute arbitrary code despite the ASLR, NX, and ROP
  protections (this will probably require an information leak, either
  through the same bug or through a secondary bug);

- step 3, escape from sshd's sandbox (through a secondary bug, either in
  the privileged parent process or in the kernel's reduced attack
  surface).

Quick recap of this double-free bug: if an old ssh client connects to an
sshd 9.1, then options.kex_algorithms (which is a string of 266 bytes in
the default configuration) is mistakenly free()d at the beginning of the
key-exchange phase (in compat_kex_proposal()); options.kex_algorithms is
then later free()d again at the beginning of the authentication phase
(in mm_getpwnamallow()).

The trick to bypass malloc's double-free and use-after-free protections
is to re-allocate the memory that was occupied by options.kex_algorithms
as soon as it is free: from malloc's point of view, no attempt is made
to free, read, or write memory that is already free; from sshd's point
of view, however, an aliasing attack occurs: two different pointers to
two different objects refer to the same chunk of memory, and a write to
one object overwrites the other object. This opens up a world of
possibilities.

We started our investigation on Debian bookworm (which uses glibc's
malloc), but we eventually switched to OpenBSD 7.2, because OpenBSD's
malloc (despite its very defensive programming) has two features that
make it especially interesting for this particular double-free bug:

- Free chunks of memory are sorted (according to their size) into
  buckets that are spaced at power-of-two intervals; i.e., any object
  whose size is between 256 and 512 bytes can re-allocate the memory
  that was occupied by options.kex_algorithms. This gives us
  considerable freedom.

  (On the other hand, glibc's malloc sorts free chunks of memory into
  buckets that are spaced at 16-byte intervals; i.e., only an object
  whose size is almost exactly 266 bytes can re-allocate the memory that
  was occupied by options.kex_algorithms. This leaves us with little
  freedom of choice.)

- OpenBSD's malloc() function picks a free chunk at random from several
  (4) pages of memory; i.e., most of the time it will not pick the chunk
  where options.kex_algorithms was allocated, but at least sometimes it
  will (with a probability of ~1/(4*4096/512)=3D1/32).

  (On the other hand, glibc's malloc() function behaves like a strict
  LIFO (last in, first out); i.e., it will never pick the chunk where
  options.kex_algorithms was allocated unless we precisely control the
  sequence of malloc() and free() calls in sshd, which is something we
  have been unable to do so far.)

Our current proof-of-concept works as follows:

- First, we free options.kex_algorithms in compat_kex_proposal(), by
  pretending that our ssh client is an old "FuTTY" client.

- Second, we re-allocate the chunk that was occupied by
  options.kex_algorithms, with a struct EVP_AES_KEY whose size is 264
  bytes, by selecting the "aes128-ctr" cipher during the key-exchange
  phase. This re-allocation happens with a probability of ~1/32.

- Third, we free (again) the chunk that was occupied by
  options.kex_algorithms (and is occupied by the struct EVP_AES_KEY now)
  in kex_assemble_names() (via mm_getpwnamallow()). This free happens if
  and only if the first byte of the chunk is '+', '-', or '^' (otherwise
  kex_assemble_names() returns an error and fatal_fr() is called), but
  luckily for us the first byte of the struct EVP_AES_KEY is the first
  byte of the AES key itself, which is a random byte; so this free
  happens with a probability of ~3/256.

- Fourth, we re-allocate the chunk that was occupied by
  options.kex_algorithms (and is still referenced as a struct
  EVP_AES_KEY now), with a string of 300 'A' bytes, through either
  "authctxt->user" or "authctxt->style" during the authentication phase.
  This re-allocation, which effectively overwrites the entire struct
  EVP_AES_KEY with 'A' bytes, happens with a probability of ~2/32.

- Last, we jump to 0x4141414141414141 when sshd calls EVP_Cipher(),
  because the struct EVP_AES_KEY contains a function pointer that was
  overwritten by our 'A' bytes and that is called by
  CRYPTO_ctr128_encrypt_ctr32() (via EVP_Cipher()).

This proof-of-concept can be simply reproduced with the ssh client from
OpenBSD 7.2; we change its banner from "OpenSSH" to "FuTTY", and run it
in a loop with the "aes128-ctr" cipher:

------------------------------------------------------------------------
$ cp -i /usr/bin/ssh ./ssh

$ sed -i s/OpenSSH_9.1/FuTTYSH_9.1/g ./ssh

$ user=3D`perl -e 'print "A" x 300'` && while true ;do ./ssh -o NumberOfPas=
swordPrompts=3D0 -o Ciphers=3Daes128-ctr -l "$user:$user" 192.168.56.123 ;d=
one
------------------------------------------------------------------------

sshd has a good chance of jumping to 0x4141414141414141 after
32*256/3*16=3D43690 runs (this number is probably not entirely correct,
but not entirely wrong either):

------------------------------------------------------------------------
# gdb /usr/sbin/sshd 53370
...
Attaching to program: /usr/sbin/sshd, process 53370
...

(gdb) continue
Continuing.

Program received signal SIGSEGV, Segmentation fault.
0x000009bb0ea6f324 in __llvm_retpoline_r11 () from /usr/lib/libcrypto.so.50=
.0

(gdb) bt
#0  0x000009bb0ea6f324 in __llvm_retpoline_r11 () from /usr/lib/libcrypto.s=
o.50.0
#1  0x4141414141414141 in ?? ()
#2  0x000009bb0ead2fe5 in CRYPTO_ctr128_encrypt_ctr32 (... func=3D0x4141414=
141414141)
...

(gdb) disassemble 0x000009bb0ea6f324
Dump of assembler code for function __llvm_retpoline_r11:
...
0x000009bb0ea6f320 <__llvm_retpoline_r11+16>:   mov    %r11,(%rsp)
0x000009bb0ea6f324 <__llvm_retpoline_r11+20>:   retq
...

(gdb) i r
...
r10            0x4141414141414141   4702111234474983745
r11            0x4141414141414141   4702111234474983745
------------------------------------------------------------------------

(Note: this is a very crude proof-of-concept, which can certainly be
improved in many different ways.)

In conclusion, this double-free bug in sshd is an excellent opportunity
to test how strong the modern memory protections really are. We are at
your disposal for questions, comments, and further discussions. Thank
you very much!

With best regards,

--=20
the Qualys Security Advisory team=
