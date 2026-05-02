Received: (qmail 5403 invoked by uid 550); 2 May 2026 13:26:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1040 invoked from network); 2 May 2026 00:25:27 -0000
Message-ID: <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
From: Reid Sutherland <reid@thirddimension.net>
To: oss-security@lists.openwall.com
Date: Fri, 01 May 2026 20:25:17 -0400
In-Reply-To: <20260501165221.27420-1-justin.swartz@risingedge.co.za>
References: <afJorKIje4O6dXbH@netmeister.org>
	 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
	 <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh>
	 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
	 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
	 <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
	 <20260501165221.27420-1-justin.swartz@risingedge.co.za>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
Subject: Re: [oss-security] Re: CVE-2026-31431: CopyFail: linux local
 privilege scalation



On Fri, 2026-05-01 at 18:52 +0200, Justin Swartz wrote:
> On Fri, 2026-05-01 at 11:08 -0400, Reid Sutherland wrote:
> > Does anything load the vulnerable module by default or not?=C2=A0 If
> > not,
> > this should be low-rated IMO.
>=20
> An unprivileged user requesting an AF_ALG socket will trigger the
> kernel
> module autoloader:
>=20
> $ su -l
> Password:
>=20
> # cat > /root/modprobe << "EOF"
> #!/bin/sh
> echo "$(date -u) modprobe $@" >> /tmp/modprobe.log
> exec /sbin/modprobe "$@"
> EOF
>=20
> # chmod 700 /root/modprobe
>=20
> # cat /proc/sys/kernel/modprobe
> /sbin/modprobe
>=20
> # echo "/root/modprobe" > /proc/sys/kernel/modprobe
> # cat /proc/sys/kernel/modprobe
> /root/modprobe
>=20
> # exit
>=20
> $ lsmod | grep aead | wc -l
> 0
>=20
> $ date -u && ./copy_fail_exp.py
> Fri 01 May 2026 16:08:24 UTC
>=20
> # cat /tmp/modprobe.log
> Fri May=C2=A0 1 16:08:24 UTC 2026 modprobe -q -- net-pf-38
> Fri May=C2=A0 1 16:08:24 UTC 2026 modprobe -q -- algif-aead
>=20
> # lsmod | grep aead
> algif_aead=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 16384=C2=A0 0
> af_alg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 36864=C2=A0 1 algif_aead
>=20
> # echo "/sbin/modprobe" > /proc/sys/kernel/modprobe
> # cat /proc/sys/kernel/modprobe
> /sbin/modprobe
>=20
> # exit


Why is userspace allowed to load modules in any capacity?  Why do we
need kernel modules for math?

I'm assuming any thoroughly qualified platform engineer compiles the
host kernel without module support.  At least, that needs to make a
comeback, bring back applying grsec patches and make menuconfig..

I just finished defending the kernel on LinkedIn too, in that kernel
exploit attack surface is a non-issue if you trust how it's maintained.
Massive torpedo to my reputation two days later.
