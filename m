Received: (qmail 3337 invoked by uid 550); 2 May 2026 20:30:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25626 invoked from network); 2 May 2026 20:19:13 -0000
Message-ID: <3fee55702aa90f0003b1758d047c65ea42141fb0.camel@thirddimension.net>
From: Reid Sutherland <reid@thirddimension.net>
To: oss-security@lists.openwall.com
Date: Sat, 02 May 2026 16:19:02 -0400
In-Reply-To: <20260502185608.24115-1-justin.swartz@risingedge.co.za>
References: <afJorKIje4O6dXbH@netmeister.org>
	 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
	 <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh>
	 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
	 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
	 <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
	 <20260501165221.27420-1-justin.swartz@risingedge.co.za>
	 <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
	 <20260502185608.24115-1-justin.swartz@risingedge.co.za>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local
 privilege scalation

On Sat, 2026-05-02 at 20:56 +0200, Justin Swartz wrote:
> On Fri, May 1, 2026 at 20:25:17 -0400, Reid Sutherland wrote:
> > Why is userspace allowed to load modules in any capacity?
>=20
> It's potentially useful for autoloading driver modules when PnP
> devices are connected, which could be considered deadweight if
> they were loaded, or baked into the kernel itself, when the
> respective devices aren't present.
>=20

This is userspace software loading an administrative driver.  Not even
close to the same as physically connecting a device.



>=20
> > Why do we need kernel modules for math?
>=20
> To interact with cryptographic acceleration hardware, if present or
> desired, and to provide support for kernel subsystems that rely on
> encryption, like IPSec or WireGuard.
>=20
>=20

Then why is it exposed to userland?  Attack surface continues to
expand.


> > I'm assuming any thoroughly qualified platform engineer compiles
> > the host kernel without module support.=C2=A0 At least, that needs to
> > make a comeback, bring back applying grsec patches and make
> > menuconfig..
>=20
> I'm thoroughly unqualified, so take my opinion with a bag of salt:
>=20
> If you have a use case that allows you to avoid loadable kernel
> modules indefinitely in a completely monolithic kernel then, by
> all means, roll your kernel as such and you'll be slightly safer
> than those who don't.
>=20

Slightly is the wrong word to use in this recent case.  It is likely
what separated the secure from vulnerable in major cloud environments.


> Kernel configuration minification doesn't seem to be spoken of
> much anymore except by those who have fairly resource constrained
> embedded systems that run Linux on some application processor.
>=20
> If you're prepared to go that far, why not roll your own distro?
>=20

Because I'm not invested.  Clearly billions are poured into this
environment and it's all hinged on an insecure chain (using math in
kernel space and loading modules from userspace).

This whole using math in the kernel and exposing it, the complexity of
code written for algorithms is often very high, this is a breeding
ground for "oops I messed up" root vulnerabilities (hindsight 20/20).


> LFS is a potentially good starting point, but you can get by with
> even less. For example: Linux, musl, busybox, just the applications
> (and mandatory dependencies) you need, and some init scripts to tie
> it all together.


I agree it's easy in theory, but unless the people are paid and
passionate, it's not going to last.  We need a serious push for a
hardened platform kernel after this.

