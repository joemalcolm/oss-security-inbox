Received: (qmail 32475 invoked by uid 550); 24 Apr 2024 18:04:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21760 invoked from network); 24 Apr 2024 16:46:20 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kAMLvgIMn261KYAO+rW9peuqDmwtZmltRsmJ6ph4YcEGHv42RKItoglcLuOxzWFanHGJta4saQouoX4rSfuOnDTSZzQap6PyPfF2aHRaf24ZJat92W2BaClIF/GnT7qrafWSKpnqAiRBwqGolCgjYfs1RbrhBd8zED4ALD418/wDqRv1EdlXxnyE3FKKW9J+wQsU5jX0hMophUkD8Q0AWw+maxUEba0opP64MxhNfsB+PkZ0iXyuv4wGgv77f8ANQ5y7s3FLrJgknuLwdzULvR+R9T85y9am99qyUFx1ptbIyP08uX/bgBgRI+Kpg+0L823QBvS7B+TCY6rs5s8AtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mgSkEcNUkWub3/m9Bj/03Kjh4OnQhnj0+a4CvXUsIjE=;
 b=ZtZi62XthK0/t7opM3Tk6l3HUFrSY4ErILrWlB4YS1LrnPe8J6W01vcxKIEuY440v3a+BgnmTnAqSsA9UIlcqEqmxnJaXKOPFXJKXlmljS3543gydcjoDKLcQz9qJxUDQJda0jqPc+O/f2bVZ9X2mPQdxgkAvYu7u6Kj7T1phMHt21rVT6AOtsVlnsTWupJiC8Slf0nWn14RS7XTvJ8vA1U/nxFYxFDqYh+uxdNIP3OlMpwDCvfYqpxzuBNZOL+jeIweAlxqh9UaInf8A4I1rlOOqNqkeUvAiCa2lvb8VXPuUNkdYW1jznl4jsTPNWinRg/r4b7O2ckObnz/oOCTiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=exodusintel.com; dmarc=pass action=none
 header.from=exodusintel.com; dkim=pass header.d=exodusintel.com; arc=none
From: =?iso-8859-1?Q?Oriol_Castej=F3n?= <Oriol.Castejon@exodusintel.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2024-0582 - Linux kernel use-after-free vulnerability in
 io_uring, writeup and exploit strategy
Thread-Index: AQHalXj96Gza3raCo06P5CTKY/duJw==
Date: Wed, 24 Apr 2024 16:46:08 +0000
Message-ID:
 <BY3PR05MB8321706B2D4FB21E18520CEC8D112@BY3PR05MB8321.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=exodusintel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR05MB8321:EE_|SJ0PR05MB8757:EE_
x-ms-office365-filtering-correlation-id: c145c2ee-4951-4e65-81d5-08dc647e0aa1
x-ipw-groupmember: False
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?Pm+Jpj6Hljn1yYWnqdEfMgaqxlm6SUI0HZOoLwC+FE02eBybrR89mJVA7D?=
 =?iso-8859-1?Q?1S5xLJZNtjAauGrG1lbjsfZs+tXeJ13jGcWaG8SycjkFiJj0gIjftnsZN4?=
 =?iso-8859-1?Q?jgABsEI48MV81IpzsMEbLqh7jHrgf7gGAoonkFXJ+uoLNFENs53mcvBuK1?=
 =?iso-8859-1?Q?/wJfidyKVEKC36Ec8KBrqDIQwz0eIM82v2y427wuT5hccT7ZDOiDKuwS5u?=
 =?iso-8859-1?Q?4ENDPOYaEStaHyj6irvM87ZJVSH8QdhVExDBLNApwi1GpuacUFfSYDBx70?=
 =?iso-8859-1?Q?VTDTY8yRtqi3oIW9HjFVvHmJKqHsF+rzfKRx5mWrwQTczOnNABTVJ49jg9?=
 =?iso-8859-1?Q?jgCo+kXekGkmDJyPnrRrY2nalkVep3YIvc91vN9aa65N7dr6yWpGc9ybc+?=
 =?iso-8859-1?Q?rmC0HuQihibcnvEQne1HQp/DNnaCnvgPLLd5uDroXlwLPkA8Daa+znV/5d?=
 =?iso-8859-1?Q?ioYj0y1bqRqfcALyJXXiARBwz3ZK9Q366XA9NDdKfS8h5E8vlfHbHKNDBk?=
 =?iso-8859-1?Q?BhejnF1O9be31x6A2LVLg/+xwGEg9dg9BzNZGeZH3wI3FAH/cFtKzD6Dey?=
 =?iso-8859-1?Q?W6s2HEdJUPG2nOY8NdtvLiWzQGbT0mnZZynTyC1a8zYdjigTTlGx6Etxw/?=
 =?iso-8859-1?Q?q8EHUK8FN/eAlO0y7nzoOvDNoUWGKch8xM7cC5fSDP2Ag0OvrGM+BZzqEF?=
 =?iso-8859-1?Q?gghmdgepcUt2qAeYd6c9lIj9FBGPunHqSQHRHuctTwI2XwfkuToovs4ah8?=
 =?iso-8859-1?Q?C6h4dP3yrDvL9pT2B+2WELLctriZpVJLWsiq37uHRLYyMkY7Cj5kEUWi0o?=
 =?iso-8859-1?Q?jhptsZgxd0ZkgXPlDY/iBBHB8HldlMB29FGZaL5vLeXcu+Hzc9xpwdhv+2?=
 =?iso-8859-1?Q?KN826V/Qvs8IgB9dIL7YxzYWuHdHVoj6t7Nrio4cQ/hDChhko3xNR47mGO?=
 =?iso-8859-1?Q?+Bli4hxUl4fS9E0wFtQW2M5WiLShGYMYrUxexC5BN0MzCOCcAF3fI95dI1?=
 =?iso-8859-1?Q?+ztNw8Z00TRjOFtf4LrnxbmkrzOi86c8d03Dya7UVD7AiUwOIXWuIE52/F?=
 =?iso-8859-1?Q?HI+raV7bCa2LH5CvYe8SyhusGlm8cON3wvnvI87b2EPCu/cwTJbjHYO/Wo?=
 =?iso-8859-1?Q?jj/5TQMWFmRL8Ri4VPYdo5u6xuIS+XatZUKs+zYTFq7fdX2Evf/jtOBem0?=
 =?iso-8859-1?Q?IStsc+IGLqeLL3m6upRxECJHEe3Nkp8F7q33OeEAHHdmy5en5rq4odYxdN?=
 =?iso-8859-1?Q?0NuIl1QImooCW02eKBgt0ZylNMcKqI1ajZfOPjKH+n0MeSmhOVkQX6suP9?=
 =?iso-8859-1?Q?g1NBLdBmuN92d25Qd5tRzMdgkw=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR05MB8321.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?q4STvwSw4cVfheCWUtLdo644Wj5aoumuoizyMawFtFbQjQqpKNDOKoiFWE?=
 =?iso-8859-1?Q?Snd11KkLd4ogZbRFPZXhnyrC20VtH+0bZFq9OFYZ1mRpYwqE8IYfy6xwvi?=
 =?iso-8859-1?Q?49tCynelbSPnOCRZ5o+1bE60+5Ue9NHfOS7pyc12c9BgvYDgVe4H1RAF+a?=
 =?iso-8859-1?Q?SUs87gaJZoDGLFPoKC3YcL03NaWiWMeXAya3oPMjxEbsQIREys5dg89bYB?=
 =?iso-8859-1?Q?F4DoiSWUgxRvbCOcHx9Ms/GWj+EfzoeH0UoQVrH6s4wbd65dmPGnhiEv81?=
 =?iso-8859-1?Q?T2+3Nq+U4xnXftTxx4NQKmMgkcCj/zKgi8fd9V+lMgCiPQ7scwlrLmw67s?=
 =?iso-8859-1?Q?HeAvv3b2+QKovUTkHJjMnQQcUaFDd3Yw/gxzuNRHhhNP6G086BrZTWn+sQ?=
 =?iso-8859-1?Q?/T2nVdQ99Qxtyni3oePnQN7mr65sxrotJxqpWVuZPMpP0FljEHC/sZaLj9?=
 =?iso-8859-1?Q?d6GivEV5nvRaAQkA26ZIchPq21843XhJI1ooju7Fx9DQJTe7YdKHkztx5C?=
 =?iso-8859-1?Q?14fFhLVZxfZIHknBsWJiJ5dLcq8M+pdgKu2OuUOuQ6Yy0m6yXsl24fZt1q?=
 =?iso-8859-1?Q?Mc7uM57jlClhaj81/hZeGxJTeGenyy43bm8g2/WANzpTch+2ryNBGP0P1l?=
 =?iso-8859-1?Q?Q9aFF0ixzgZEXng5hQixtyiTGVc4iQmTauSauehb4e/NPn5gd1KqvoBRiu?=
 =?iso-8859-1?Q?SEt71CKSFPrmH8WtNu6lu24xujfZw0bjTQORPZszO/jj7NwXZ308wA6+Yj?=
 =?iso-8859-1?Q?irYpCGbR1byNpMv6CtpAP1tJxkxggJLr2CjKyUzkCUaoVfpJ502x9CQIGw?=
 =?iso-8859-1?Q?mG9pBuAGqVQ3O9FWlZiqUync9QCSovlN7yGGYuVnR/JQdE3I7y/XwUbBdS?=
 =?iso-8859-1?Q?yfW/HXebJLB7j61oZ21HwZFH5hWqz4A96LwvskOxSxLh8qYaQfQnDJBkG5?=
 =?iso-8859-1?Q?aJ2H4raZidRNQWDm3CnkKolyi6ZdrGIDJqyJ+Mjfi0fu72v4vT1X4o+vVg?=
 =?iso-8859-1?Q?XB+EK1TSICwxgsBdgc4/pX7o8LJEhNfOmeNdW0agOD89yFh3DDsjYm86fh?=
 =?iso-8859-1?Q?YAwTKMrdx77DleXpcQ8OAMfqHC6Yz+JiLtXInd6vqmqLYqVlcAVDupYtI/?=
 =?iso-8859-1?Q?fPnWK6JysvdAOpkKm3MvV54r6htwzRzlXH66aNCNCeQEmSyFMAwKvSfguP?=
 =?iso-8859-1?Q?WEuw5gGsGT7TdULoQRZ88LME4mWfNs9x+OVRNVf1cdaa1UNq4JdhKJFsCj?=
 =?iso-8859-1?Q?x78x8s6nJA7WVVMTn26cf1ny1nBxSup71PfIpdAZJlYQIHreQYR8kTeqA5?=
 =?iso-8859-1?Q?5rgpfBVhI/0tKTdr7jNu0cf1mWb8Nr0mreLsEusKEBiiBDajI2GHOe8o0r?=
 =?iso-8859-1?Q?HhTIy8YitYDjYpQgW0tqZSvJDZvrY0kkFH3YD/bBYorX4nGjOOeBiDEbe3?=
 =?iso-8859-1?Q?zmedJEJCJeMsfpkM4ZAF1GoAGryx0To4FwKu6fdSJnQYK42/SxCAuK5fIU?=
 =?iso-8859-1?Q?LCDtsDWBv/1Fe/fmozasF96fB3e1hjhmb1H1XlAvhwOhqj8mzRY1A9gz1g?=
 =?iso-8859-1?Q?9vAcolpHzbsIf/VlRleAHJ7ryObVBpRu+epNd8bnH9iO1eGchy78e9CgcH?=
 =?iso-8859-1?Q?bQjUn0BEiwrEHMyBIU7PkUK2CSuwFN4aUlCOIfN7iHMe9iJ4IR3wurFQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: exodusintel.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR05MB8321.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c145c2ee-4951-4e65-81d5-08dc647e0aa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 16:46:08.6763
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3492a56f-acf8-4963-a9f2-c584d03f4554
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VHTGxyyswTxURwdR6m9E6ejnUhlXhzLX4mEs1JJ+xnyGT7LNR91p82w5BerkBDAGEVn9NPb2foNbY3pypYYU5SdH7nTqDXBEdhyBHLVJEIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR05MB8757
Subject: [oss-security] CVE-2024-0582 - Linux kernel use-after-free vulnerability in
 io_uring, writeup and exploit strategy

Hi all,

a use-after-free vulnerability in the io_uring subsystem of the Linux
kernel (CVE-2024-0582) was identified last November by Jann Horn from
Google Project Zero, see:

https://bugs.chromium.org/p/project-zero/issues/detail?id=3D2504

The issue was introduced by the following commit, which was included
in version 6.4 of the Linux kernel:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3Dc56e022c0a27

The issue was fixed in the following commit, which was included in the
stable release 6.6.5:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3Dc392cbecd8ec

Below are the details of the vulnerability, as well as an exploitation
strategy that was successful to exploit the patch gap in Ubuntu. The
contents of this message (plus some images) were originally published
in the following blog:=20

https://blog.exodusintel.com/2024/03/27/mind-the-patch-gap-exploiting-an-io=
_uring-vulnerability-in-ubuntu/

Additionally, a brief summary of the implemented fix, which was not
included in the original blog post, is provided at the end of this
message.


## Preliminaries

The io_uring interface is an asynchronous I/O API for Linux created by
Jens Axboe and introduced in the Linux kernel version 5.1. Its goal
is to improve performance of applications with a high number of I/O
operations. It provides interfaces similar to functions like=20
`read()` and `write()`, for example, but requests are satisfied in an
asynchronous manner to avoid the context switching overhead caused by
blocking system calls.

The io_uring interface has been a bountiful target for a lot of
vulnerability research; it was disabled in ChromeOS, production
Google servers, and restricted in Android. As such, there are many
blog posts that explain it with a lot of detail. Some relevant
references are the following:
- [Put an io_uring on it - Exploiting the Linux Kernel]
  (https://chomp.ie/Blog+Posts/Put+an+io_uring+on+it+-+Exploiting+the+Linux=
+Kernel),
  a writeup for an exploit targeting an io_uring operation that
  provides the same functionality (`IORING_OP_PROVIDE_BUFFERS`) as
  the vulnerability discussed here (`IORING_REGISTER_PBUF_RING`), and
  that has also a broad overview of this subsystem.
- [CVE-2022-29582 An io_uring vulnerability]
  (https://ruia-ruia.github.io/2022/08/05/CVE-2022-29582-io-uring/),
  where a cross-cache exploit is described. While the exploit
  described in our blog post is not strictly speaking cross-cache,
  there is some similarity between the two exploit strategies. It
  also provides an explanation of slab caches and the page allocator
  relevant to our exploit strategy.
- [Escaping the Google kCTF Container with a Data-Only Exploit]
  (https://h0mbre.github.io/kCTF_Data_Only_Exploit/), where a
  different strategy for data-only exploit of an io_uring
  vulnerability is described.
- [Conquering the memory through io_uring - Analysis of CVE-2023-2598]
  (https://anatomic.rip/cve-2023-2598/), a writeup of a vulnerability
  that yields a very similar exploit primitive to ours. In this case,
  however, the exploit strategy relies on manipulating a structure
  associated with a socket, instead of manipulating file structures.

In the next subsections we give an overview of the io_uring interface.
We pay special attention to the Provided Buffer Ring functionality,
which is relevant to the vulnerability discussed in this post. The
reader can also check "[What is io_uring?]
(https://unixism.net/loti/what_is_io_uring.html)", as well as the
above references for alternative overviews of this subsystem.


### The io_uring Interface

The basis of io_uring is a set of two ring buffers used for
communication between user and kernel space. These are:

- The *submission queue* (SQ), which contains submission queue
  entries (SQEs) describing a request for an I/O operation, such as
  reading or writing to a file, etc.
- The *completion queue* (CQ), which contains completion queue
  entries (CQEs) that correspond to SQEs that have been processed and
  completed.

This model allows executing a number of I/O requests to be performed
asynchronously using a single system call, while in a synchronous
manner each request would have typically corresponded to a single
system call. This reduces the overhead caused by blocking system
calls, thus improving performance. Moreover, the use of shared
buffers also reduces the overhead as no data between user and
kernelspace has to be transferred.

The io_uring API consists of three system calls:

- `io_uring_setup()`
- `io_uring_register()`
- `io_uring_enter()`

#### The `io_uring_setup()` System Call

The `io_uring_setup()` system call sets up a context for an io_uring
instance, that is, a submission and a completion queue with the
indicated number of entries each one. Its prototype is the
following:

```c
int io_uring_setup(u32 entries, struct io_uring_params *p);
```

Its arguments are:

- `entries`: It determines how many elements the SQ and CQ must have
  at the minimum.
- `params`: It can be used by the application to pass options to the
  kernel, and by the kernel to pass information to the application
  about the ring buffers.

On success, the return value of this system call is a file descriptor
that can be later used to perform operation on the io_uring instance.

#### The `io_uring_register()` System Call

The `io_uring_register()` system call allows registering resources,
such as user buffers, files, etc., for use in an io_uring instance.
Registering such resources makes the kernel map them, avoiding future
copies to and from userspace, thus improving performance. Its
prototype is the following:

```c
int io_uring_register(unsigned int fd, unsigned int opcode, void *arg=20
     unsigned int nr_args);
```

Its arguments are:

- `fd`: The io_uring file descriptor returned by the
  `io_uring_setup()` system call.
- `opcode`: The specific operation to be executed. It can have certain
  values such as `IORING_REGISTER_BUFFERS`, to register user buffers,
  or `IORING_UNREGISTER_BUFFERS`, to release the previously
  registered buffers.
- `arg`: Arguments passed to the operation being executed. Their type
  depends on the specific `opcode` being passed.
- `nr_args`: Number of arguments in `args` being passed.

On success, the return value of this system call is either zero or a positi=
ve value, depending on the `opcode` used.

##### Provided Buffer Rings

An application might need to have different types of registered
buffers for different I/O requests. Since kernel version 5.7, to
facilitate managing these different sets of buffers, io_uring allows
the application to register a pool of buffers that are identified by
a group ID. This is done using the `IORING_REGISTER_PBUF_RING` opcode
in the `io_uring_register()` system call.

More precisely, the application starts by allocating a set of buffers
that it wants to register. Then, it makes the=20
`io_uring_register()` system call with opcode
`IORING_REGISTER_PBUF_RING`, specifying a group ID with which these
buffers should be associated, a start address of the buffers, the
length of each buffer, the number of buffers, and a starting buffer
ID. This can be done for multiple sets of buffers, each one having a
different group ID.

Finally, when submitting a request, the application can use the
`IOSQE_BUFFER_SELECT` flag and provide the desired group ID to
indicate that a provided buffer ring from the corresponding set
should be used. When the operation has been completed, the buffer ID
of the buffer used for the operation is passed to the application via
the corresponding CQE.

Provided buffer rings can be unregistered via the=20
`io_uring_register()` system call using the=20
`IORING_UNREGISTER_PBUF_RING` opcode.

##### User-mapped Provided Buffer Rings

In addition to the buffers allocated by the application, since kernel
version 6.4, io_uring allows a user to delegate the allocation of
provided buffer rings to the kernel. This is done using the
`IOU_PBUF_RING_MMAP` flag passed as an argument to=20
`io_uring_register()`. In this case, the application does not need=20
to previously allocate these buffers, and therefore the start address
of the buffers does not have to be passed to the system call. Then,
after `io_uring_register()` returns, the application can `mmap()` the
buffers into userspace with the offset set as:

```c=20
IORING_OFF_PBUF_RING | (bgid << IORING_OFF_PBUF_SHIFT)
```

where `bgid` is the corresponding group ID. These offsets, as well as
others used to `mmap()` the io_uring data, are defined in
`include/uapi/linux/io_uring.h`:

```c
/*
 * Magic offsets for the application to mmap the data it needs
 */
#define IORING_OFF_SQ_RING			0ULL #define
 IORING_OFF_CQ_RING			0x8000000ULL #define
 IORING_OFF_SQES				0x10000000ULL #define
 IORING_OFF_PBUF_RING		0x80000000ULL #define
 IORING_OFF_PBUF_SHIFT		16 #define
 IORING_OFF_MMAP_MASK		0xf8000000ULL=20
```

The function that handles such an `mmap()` call is `io_uring_mmap()`:

```c
// Source: https://elixir.bootlin.com/linux/v6.5.3/source/io_uring/io_uring=
.c#L3439

static __cold int io_uring_mmap(struct file *file, struct vm_area_struct *v=
ma)
{
	size_t sz =3D vma->vm_end - vma->vm_start;
	unsigned long pfn;
	void *ptr;

	ptr =3D io_uring_validate_mmap_request(file, vma->vm_pgoff, sz);
	if (IS_ERR(ptr))
		return PTR_ERR(ptr);

	pfn =3D virt_to_phys(ptr) >> PAGE_SHIFT;
	return remap_pfn_range(vma, vma->vm_start, pfn, sz, vma->vm_page_prot);
}
```

Note that `remap_pfn_range()` ultimately creates a mapping with the
`VM_PFNMAP` flag set, which means that the MM subsystem will treat
the base pages as raw page frame number mappings wihout an associated
page structure. In particular, the core kernel will not keep
reference counts of these pages, and keeping track of it is the
responsability of the calling code (in this case, the io_uring
subsystem).


#### The `io_uring_enter()` System Call

The `io_uring_enter()` system call is used to initiate and complete
I/O using the SQ and CQ that have been previously set up via the
`io_uring_setup()` system call. Its prototype is the following:

```c
int io_uring_enter(unsigned int fd, unsigned int to_submit,=20
	unsigned int min_complete, unsigned int flags, sigset_t *sig);
```

Its arguments are:

- `fd`: The io_uring file descriptor returned by the=20
  `io_uring_setup()` system call.
- `to_submit`: Specifies the number of I/Os to submit from the SQ.
- `flags`: A bitmask value that allows specifying certain options,
  such as `IORING_ENTER_GETEVENTS`, `IORING_ENTER_SQ_WAKEUP`,
  `IORING_ENTER_SQ_WAIT`, etc.
- `sig`: A pointer to a signal mask. If it is not `NULL`, the system
  call replaces the current signal mask by the one pointed to by
  `sig`, and when events become available in the CQ restores the
  original signal mask.


## Vulnerability

The vulnerability can be triggered when an application registers a
provided buffer ring with the `IOU_PBUF_RING_MMAP` flag. In this
case, the kernel allocates the memory for the provided buffer ring,
instead of it being done by the application. To access the buffers,
the application has to `mmap()` them to get a virtual mapping. If the
application later unregisters the provided buffer ring using the
`IORING_UNREGISTER_PBUF_RING` opcode, the kernel frees this memory
and returns it to the page allocator. However, it does not have any
mechanism to check whether the memory has been previously unmapped in
userspace. If this has not been done, the application has a valid
memory mapping to freed pages that can be reallocated by the kernel
for other purposes. From this point, reading or writing to these
pages will trigger a use-after-free.

The following code blocks show the affected parts of functions
relevant to this vulnerability. Code snippets are demarcated by
reference markers denoted by [N]. Lines not relevant to this
vulnerability are replaced by a [Truncated] marker. The code
corresponds to the Linux kernel version 6.5.3, which corresponds to
the version used in the Ubuntu kernel `6.5.0-15-generic`.

### Registering User-mapped Provided Buffer Rings

The handler of the `IORING_REGISTER_PBUF_RING` opcode for the
`io_uring_register()` system call is the=20
`io_register_pbuf_ring()` function, shown in the next listing.

```c
// Source: https://elixir.bootlin.com/linux/v6.5.3/source/io_uring/kbuf.c#L=
537

int io_register_pbuf_ring(struct io_ring_ctx *ctx, void __user *arg)
{
	struct io_uring_buf_reg reg;
	struct io_buffer_list *bl, *free_bl =3D NULL;
	int ret;

[1]

	if (copy_from_user(&reg, arg, sizeof(reg)))
		return -EFAULT;

[Truncated]

	if (!is_power_of_2(reg.ring_entries))
		return -EINVAL;

[2]

	/* cannot disambiguate full vs empty due to head/tail size */
	if (reg.ring_entries >=3D 65536)
		return -EINVAL;

	if (unlikely(reg.bgid < BGID_ARRAY && !ctx->io_bl)) {
		int ret =3D io_init_bl_list(ctx);
		if (ret)
			return ret;
	}

	bl =3D io_buffer_get_list(ctx, reg.bgid);
	if (bl) {
		/* if mapped buffer ring OR classic exists, don't allow */
		if (bl->is_mapped || !list_empty(&bl->buf_list))
			return -EEXIST;
	} else {

[3]

		free_bl =3D bl =3D kzalloc(sizeof(*bl), GFP_KERNEL);
		if (!bl)
			return -ENOMEM;
	}

[4]

	if (!(reg.flags & IOU_PBUF_RING_MMAP))
		ret =3D io_pin_pbuf_ring(&reg, bl);
	else
		ret =3D io_alloc_pbuf_ring(&reg, bl);

[Truncated]

	return ret;
}
```

The function starts by copying the provided arguments into an
`io_uring_buf_reg` structure reg [1]. Then, it checks that the
desired number of entries is a power of two and is strictly less than
65536 [2]. Note that this implies that the maximum number of allowed
entries is 32768.

Next, it checks whether a provided buffer list with the specified
group ID `reg.bgid` exists and, in case it does not, an
`io_buffer_list` structure is allocated and its address is stored in
the variable `bl` [3]. Finally, if the provided arguments have the=20
flag `IOU_PBUF_RING_MMAP` set, the `io_alloc_pbuf_ring()` function is
called [4], passing in the address of the structure `reg`, which
contains the arguments passed to the system call, and the pointer to
the allocated buffer list structure `bl`.

```c
// Source: https://elixir.bootlin.com/linux/v6.5.3/source/io_uring/kbuf.c#L=
519

static int io_alloc_pbuf_ring(struct io_uring_buf_reg *reg,
			      struct io_buffer_list *bl)
{
	gfp_t gfp =3D GFP_KERNEL_ACCOUNT | __GFP_ZERO | __GFP_NOWARN | __GFP_COMP;
	size_t ring_size;
	void *ptr;

[5]

	ring_size =3D reg->ring_entries * sizeof(struct io_uring_buf_ring);

[6]

	ptr =3D (void *) __get_free_pages(gfp, get_order(ring_size));
	if (!ptr)
		return -ENOMEM;

[7]

	bl->buf_ring =3D ptr;
	bl->is_mapped =3D 1;
	bl->is_mmap =3D 1;
	return 0;
}
```

The `io_alloc_pbuf_ring()` function takes the number of ring entries
specified in `reg->ring_entries` and computes the resulting size
`ring_size` by multiplying it by the size of the `io_uring_buf_ring`
structure [5], which is 16 bytes. Then, it requests a number of pages
from the page allocator that can fit this size via a call to
`__get_free_pages()` [6]. Note that for the maximum number of allowed
ring entries, 32768, `ring_size` is 524288 and thus the maximum
number of 4096-byte pages that can be retrieved is 128. The address
of the first page is then stored in the `io_buffer_list` structure,
more precisely in `bl->buf_ring` [7]. Also, `bl->is_mapped` and
`bl->is_mmap` are set to 1.

### Unregistering Provided Buffer Rings

The handler of the `IORING_UNREGISTER_PBUF_RING` opcode for the
`io_uring_register()` system call is the=20
`io_unregister_pbuf_ring()` function, shown in the next listing.

```c
// Source: https://elixir.bootlin.com/linux/v6.5.3/source/io_uring/kbuf.c#L=
601

int io_unregister_pbuf_ring(struct io_ring_ctx *ctx, void __user *arg)
{
	struct io_uring_buf_reg reg;
	struct io_buffer_list *bl;

[8]

    if (copy_from_user(&reg, arg, sizeof(reg)))
		return -EFAULT;
	if (reg.resv[0] || reg.resv[1] || reg.resv[2])
		return -EINVAL;
	if (reg.flags)
		return -EINVAL;

[9]

	bl =3D io_buffer_get_list(ctx, reg.bgid);
	if (!bl)
		return -ENOENT;
	if (!bl->is_mapped)
		return -EINVAL;

[10]

	__io_remove_buffers(ctx, bl, -1U);
	if (bl->bgid >=3D BGID_ARRAY) {
		xa_erase(&ctx->io_bl_xa, bl->bgid);
		kfree(bl);
	}
	return 0;
}
```

Again, the function starts by copying the provided arguments into a
`io_uring_buf_reg` structure `reg` [8]. Then, it retrieves the=20
provided buffer list corresponding to the group ID specified in
`reg.bgid` and stores its address in the variable `bl` [9]. Finally,
it passes `bl` to the function `__io_remove_buffers()` [10].

```c
// Source: https://elixir.bootlin.com/linux/v6.5.3/source/io_uring/kbuf.c#L=
209

static int __io_remove_buffers(struct io_ring_ctx *ctx,
			       struct io_buffer_list *bl, unsigned nbufs)
{
	unsigned i =3D 0;

	/* shouldn't happen */
	if (!nbufs)
		return 0;

	if (bl->is_mapped) {
		i =3D bl->buf_ring->tail - bl->head;
		if (bl->is_mmap) {
			struct page *page;

[11]

			page =3D virt_to_head_page(bl->buf_ring);
=20=20=20=20=20=20=20=20=20=20=20=20
[12]

			if (put_page_testzero(page))
				free_compound_page(page);
			bl->buf_ring =3D NULL;
			bl->is_mmap =3D 0;
		} else if (bl->buf_nr_pages) {

[Truncated]
```

In case the buffer list structure has the `is_mapped` and `is_mmap`
flags set, which is the case when the buffer ring was registered with
the `IOU_PBUF_RING_MMAP` flag [7], the function reaches [11]. Then,
the `page` structure of the head page corresponding to the virtual
address of the buffer ring `bl->buf_ring` is obtained. Finally, all
the pages forming the compound page with head `page` are freed at
[12], thus returning them to the page allocator.

Note that if the provided buffer ring is set up with
`IOU_PBUF_RING_MMAP`, that is, it has been allocated by the kernel
and not the application, the userspace application is expected to
have previously `mmap()`ed this memory. Moreover, recall that since=20
the memory mapping was created with the `VM_PFNMAP` flag, the
reference count of the page structure was not modified during this
operation. In other words, in the code above there is no way for the
kernel to know whether the application has unmapped the memory before
freeing it via the call to `free_compound_page()`. If this has not
happened, a use-after-free can be triggered by the application by
just reading or writing to this memory.

## Exploitation

The exploitation mechanism presented in this post relies on how memory
allocation works on Linux, so the reader is expected to have some
familiarity with it. As a refresher, we highlight the following
facts:

- The page allocator is in charge of managing memory pages, which are
  usually 4096 bytes. It keeps lists of free pages of order n, that
  is, memory chunks of page size multiplied by 2^n. These pages are
  served in a first-in-first-out basis.
- The slab allocator sits on top of the buddy allocator and keeps
  caches of commonly used objects (dedicated caches) or fixed-size
  objects (generic caches), called slab caches, available for
  allocation in the kernel. There are several implementations of slab
  allocators, but for the purpose of this post only the SLUB
  allocator, the default in modern versions of the kernel, is
  relevant.
- Slab caches are formed by multiple slabs, which are sets of one or
  more contiguous pages of memory. When a slab cache runs out of free
  slabs, which can happen if a large number of objects of the same
  type or size are allocated and not freed during a period of time,
  the operating system allocates a new slab by requesting free pages
  to the page allocator.

One of such cache slabs is the `filp`, which contains `file`
structures. A `file` structure, shown in the next listing, represents
an open file.

```c
// Source: https://elixir.bootlin.com/linux/v6.5.3/source/include/linux/fs.=
h#L961

struct file {
	union {
		struct llist_node	f_llist;
		struct rcu_head 	f_rcuhead;
		unsigned int 		f_iocb_flags;
	};

	/*
	 * Protects f_ep, f_flags.
	 * Must not be taken from IRQ context.
	 */
	spinlock_t		f_lock;
	fmode_t			f_mode;
	atomic_long_t		f_count;
	struct mutex		f_pos_lock;
	loff_t			f_pos;
	unsigned int		f_flags;
	struct fown_struct	f_owner;
	const struct cred	*f_cred;
	struct file_ra_state	f_ra;
	struct path		f_path;
	struct inode		*f_inode;	/* cached value */
	const struct file_operations	*f_op;

	u64			f_version;
#ifdef CONFIG_SECURITY
	void			*f_security;
#endif
	/* needed for tty driver, and maybe others */
	void			*private_data;

#ifdef CONFIG_EPOLL
	/* Used by fs/eventpoll.c to link all the hooks to this file */
	struct hlist_head	*f_ep;
#endif /* #ifdef CONFIG_EPOLL */
	struct address_space	*f_mapping;
	errseq_t		f_wb_err;
	errseq_t		f_sb_err; /* for syncfs */
} __randomize_layout
  __attribute__((aligned(4)));	/* lest something weird decides that 2 is OK=
 */
```

The most relevant fields for this exploit are the following:

- `f_mode`: Determines whether the file is readable or writable.
- `f_pos`: Determines the current reading or writing position.
- `f_op`: The operations associated with the file. It determines the
  functions to be executed when certain system calls such as=20
  `read()`, `write()`, etc., are issued on the file. For files in
  `ext4` filesystems, this is equal to the `ext4_file_operations`
  variable.

### Strategy for a Data-Only Exploit

The exploit primitive provides an attacker with read and write access
to a certain number of free pages that have been returned to the page
allocator. By opening a file a large number of times, the attacker
can force the exhaustion of all the slabs in the `filp` cache, so
that free pages are requested to the page allocator to create a new
slab in this cache. In this case, further allocations of file
structures will happen in the pages on which the attacker has read
and write access, thus being able to modify them. In particular, for
example, by modifying the `f_mode` field, the attacker can make a
file that has been opened with read-only permissions to be writable.

This strategy was implemented to successfully exploit the following
versions of Ubuntu:

- Ubuntu 22.04 Jammy Jellyfish LTS with kernel `6.5.0-15-generic`.
- Ubuntu 22.04 Jammy Jellyfish LTS with kernel `6.5.0-17-generic`.
- Ubuntu 23.10 Mantic Minotaur with kernel `6.5.0-15-generic`.
- Ubuntu 23.10 Mantic Minotaur with kernel `6.5.0-17-generic`.

The next subsections give more details on how this strategy can be
carried out.

#### Triggering the Vulnerability

The strategy begins by triggering the vulnerability to obtain read and
write access to freed pages. This can be done by executing the
following steps:
- Making an `io_uring_setup()` system call to set up the io_uring
  instance.
- Making an `io_uring_register()` system call with opcode
  `IORING_REGISTER_PBUF_RING` and the `IOU_PBUF_RING_MMAP` flag,  so
  that the kernel itself allocates the memory for the provided buffer
  ring.
- `mmap()`ing the memory of the provided buffer ring with read and
  write permissions, using the io_uring file descriptor and the
  offset `IORING_OFF_PBUF_RING`.=20
- Unregistering the provided buffer ring by making an
  `io_uring_register()` system call with opcode
  `IORING_UNREGISTER_PBUF_RING`.

At this point, the pages corresponding to the provided buffer ring have bee=
n returned to the page allocator, while the attacker still has a valid refe=
rence to them.

#### Spraying File Structures

The next step is spawning a large number of child processes, each one
opening the file `/etc/passwd` many times with read-only permissions.
This forces the allocation of corresponding file structures in the
kernel.

By opening a large number of files, the attacker can force the
exhaustion of the slabs in the `filp` cache. After that, new slabs
will be allocated by requesting free pages from the page allocator.
At some point, the pages that previously corresponded to the provided
buffer ring, and to which the attacker still has read and write
access, will be returned by the page allocator.

Hence, all of the file structures created after this point will be
allocated in the attacker-controlled memory region, giving them the
possibility to modify the structures.

Note that these child processes have to wait until indicated to
proceed in the last stage of the exploit, so that the files are kept
open and their corresponding structures are not freed.

#### Locating a File Structure in Memory

Although the attacker may have access to some slabs belonging to the
`filp` cache, they don't know where they are within the memory
region. To identify these slabs, however, the attacker can search for
the `ext4_file_operations` address at the offset of the `file.f_op`
field within the file structure. When one is found, it can be safely
assumed that it corresponds to the file structure of one instance of
the previously opened `/etc/passwd` file.

Note that even when Kernel Address Space Layout Randomization
(KASLR) is enabled, to identify the `ext4_file_operations` address in
memory it is only necessary to know the offset of this symbol with
respect to the `_text` symbol, so there is no need for a KASLR
bypass. Indeed, given a value `val` of an unsigned integer found in
memory at the corresponding offset, one can safely assume that it is
the address of `ext4_file_operations` if:

- `(val >> 32 & 0xffffffff) =3D=3D 0xffffffff`, i.e. the 32 most
  significant bits are all 1.
- `(val & 0xfffff) =3D=3D (ext4_fops_offset & 0xfffff)`, i.e. the 20 least
  significant bits of `val` and `ext4_fops_offset`, the offset of
  `ext4_file_operations` with respect to `_text`, are the same.

#### Changing File Permissions and Adding a Backdoor Account

Once a file structure corresponding to the `/etc/passwd` file is
located in the memory region accessible by the attacker, it can be
modified at will. In particular, setting the `FMODE_WRITE` and
`FMODE_CAN_WRITE` flags in the `file.f_mode` field of the found
structure will make the `/etc/passwd` file writable when using the
corresponding file descriptor.

Moreover, setting the `file.f_pos` field of the found file structure
to the current size of the `/etc/passwd` file, the attacker can
ensure that any data written to it is appended at the end of the
file.

To finish, the attacker can signal all the child processes spawned in
the second stage to try to write to the opened `/etc/passwd` file.
While most of all of such attempts will fail, as the file was opened
with read-only permissions, the one corresponding to the modified
file structure, which has write permissions enabled due to the
modification of the `file->f_mode` field, will succeed.


## The Fix

As mentioned above, a fix for this vulnerability was introduced in
the Linux kernel in commit c392cbecd8ec.

The main points of this fix are the following:

- A field `io_buf_list` in the io_uring context structure is added.
  This is a list of `io_buf_free` structures, which contain the
  addresses of buffer rings allocated by the kernel that will have to
  be freed eventually.

- When the kernel allocates a provided buffer ring with
  `io_alloc_pbuf_ring()`, it stores its address in an `io_buf_free`
  structure, which is then added to the `io_buf_list` list.

- Within the `__io_remove_buffers()` function, the pages corresponding
  to `bl->buf_ring` are no longer freed.

- Only when the io_uring context is freed (which happens when the
  references to the io_uring device file drop to 0, and therefore
  when no userspace mapping to the buffer ring can exist), the pages
  of the provided buffer rings stored in the `io_buf_list` are
  freed.

