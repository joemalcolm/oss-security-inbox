X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4148" "Friday" "23" "November" "2018" "18:22:09" "+0100" "Yves-Alexis Perez" "corsac@debian.org" "<20181123172208.GA16585@scapa.corsac.net>" "135" "[oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" "^Cc:" nil nil "11" "2018112317:22:09" "[oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" (number mark "        corsac@debia Nov 23  135/4148  " thread-indent "\"[oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22295 invoked by uid 550); 23 Nov 2018 17:25:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19622 invoked from network); 23 Nov 2018 17:22:20 -0000
Message-ID: <20181123172208.GA16585@scapa.corsac.net>
Mail-Followup-To: oss-security@lists.openwall.com,
	Wei Wu <ww9210@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Wei Wu <ww9210@gmail.com>
Date: Fri, 23 Nov 2018 18:22:09 +0100
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit
 provided)
To: oss-security@lists.openwall.com

--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi list,

we were notified on the Linux distros list of a vulnerability in the bpf
subsystem of the Linux kernel.

I asked the reported (Wei Wu) if security@k.o had been notified, and
this was done in the following mail, leading Eric Dumazet to suggest
posting this on netdev.

In turn, this has been done just afterwards [1] so the issue is now
public. According to the linux-distros list policy, the original
reporter should also have made the issue public here, but failed to do
that.

I'm posting this right now in order to raise awareness for the
distributions already including 4.19 in a supported release.

As the original mail indicates, an exploit code had been provided by the
reporter, but I intend to wait until a 4.19 kernel including the patch
is released (but not after next Thursday) to publish it as a followup.

Regards,
--=20
Yves-Alexis

[1] https://marc.info/?l=3Dlinux-netdev&m=3D154290236228315&w=3D2

----- Forwarded message from Wei Wu <ww9210@gmail.com> -----

Date: Thu, 22 Nov 2018 21:45:11 +0800
From: Wei Wu <ww9210@gmail.com>
To: linux-distros@vs.openwall.org
Subject: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit pro=
vided)
X-Mailer: MIME-tools 5.501 (Entity 5.501)
Message-ID: <CACmwppyMMd+T87DytX=3DX_KzmK+b3Dpx8zBp5GXrPaywKAzN-Gg@mail.gma=
il.com>

Hello,

I am writing to report a heap overflow vulnerability in kernel bpf module
There is an integer-overflow-to-buffer-overflow vulnerability in the
bpf functions introduced in 4.19 and affect up to 4.20-rc3, attached
is an LPE exploit which is able to spawn a root shell.
I will first introduce the root cause vulnerability and then discuss
how to fix this vulnerability.

In the following code shows a integer overflow when calculating size =3D
attr->max_entries + 1;
size is used to calculate queue_size in line 72, and queue size is
used to malloc,
if  attr->max_entries is 0xffffffff, then size will be zero, which
result in a smaller buffer allocated.

static struct bpf_map *queue_stack_map_alloc(union bpf_attr *attr)
63 {
64 int ret, numa_node =3D bpf_map_attr_numa_node(attr);
65 struct bpf_queue_stack *qs;
66 u32 size, value_size;
67 u64 queue_size, cost;
68
69 size =3D attr->max_entries + 1;
70 value_size =3D attr->value_size;
71
72 queue_size =3D sizeof(*qs) + (u64) value_size * size;
73
74 cost =3D queue_size;
75 if (cost >=3D U32_MAX - PAGE_SIZE)
76 return ERR_PTR(-E2BIG);
77
78 cost =3D round_up(cost, PAGE_SIZE) >> PAGE_SHIFT;
79
80 ret =3D bpf_map_precharge_memlock(cost);
81 if (ret < 0)
82 return ERR_PTR(ret);
83
84 qs =3D bpf_map_area_alloc(queue_size, numa_node);



later in function queue_stack_map_push_elem we can overflow this
buffer with arbitrary length with user-controllable content.

229 dst =3D &qs->elements[qs->head * qs->map.value_size];
230 memcpy(dst, value, qs->map.value_size);


running the exploit gives me a root shell in a custom compiled 4.20-rc3 sys=
tem:

user@test:~$ ./exp
rop_payload_initialized
uid=3D0(root) gid=3D0(root) groups=3D0(root) context=3Dsystem_u:system_r:ke=
rnel_t:s0
# uname -a
Linux syzkaller 4.20.0-rc3 #1 SMP Thu Nov 22 15:12:38 CST 2018 x86_64 GNU/L=
inux
#


To fix this vulnerability, we should add check prevent the integer overflow.

Luckily it does not affect any distributions now, hope it get fixed soon : )

--
Wei Wu (ww9210)
University of Chinese Academy of Sciences


----- End forwarded message -----

--=20
Yves-Alexis Perez

--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlv4Nz0ACgkQ3rYcyPpX
RFukRwgAnhpMehlR2IChLPxRPuDUtplSemNXvxqgyZ4mFvXb26zgovZ20ausmaor
j03G0gNfcfWsBOtLvxt/r91Ql6UhqH7GZBa/+XA1+0M84KOPRebsS3Sx3leFmxgW
NoRLhqzySXE3BA3bGqu+vVYQ0DAnKfQIUFnNJgFwOXbhN4mQoWG6f2wmC3KcAL44
3em9MDA7YuJtjvemILs03PbOFkJJHopigMrEv/Rfhtw8kG565MyeKLiUmbijKaJt
L6+VCoy9iWxeo35tL9emX6Vdq2FxE0u//pEhupORvHCRAvs6MUG6CxnrbHDltJHp
2U7rHJwqC4ELD4CD7om+BBxD0KcWzQ==
=CLX9
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--
