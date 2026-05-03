Received: (qmail 16079 invoked by uid 550); 3 May 2026 17:58:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7877 invoked from network); 3 May 2026 15:50:38 -0000
Message-ID: <0610241d156806108139c9055b210bcfd4a7c554.camel@thirddimension.net>
From: Reid Sutherland <reid@thirddimension.net>
To: oss-security@lists.openwall.com
Date: Sun, 03 May 2026 11:50:27 -0400
In-Reply-To: <87qzntmqqr.fsf@linuxpenguins.xyz>
References: <afJorKIje4O6dXbH@netmeister.org>
	 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org>
	 <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh>
	 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
	 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
	 <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
	 <20260501165221.27420-1-justin.swartz@risingedge.co.za>
	 <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
	 <87qzntmqqr.fsf@linuxpenguins.xyz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
Subject: Re: [oss-security] Re: CVE-2026-31431: CopyFail: linux local
 privilege scalation

On Sun, 2026-05-03 at 07:43 +1000, Brian May wrote:
> Reid Sutherland <reid@thirddimension.net> writes:
>=20
> > I'm assuming any thoroughly qualified platform engineer compiles
> > the
> > host kernel without module support.=C2=A0 At least, that needs to make a
> > comeback, bring back applying grsec patches and make menuconfig..
>=20
> Kernel modules here are good, not bad. If everything was compiled
> into
> the kernel it would be harder to solve this sort of security issue.
>=20

Yeah but there's a series of problems here, like autoloading modules on
a server that doesn't change.

Thinking about the math functions, there's a good benefit in the kernel
carrying common interfaces for functions they have already solved.  But
we need a new unprivileged layer in the kernel, like a library layer,
if this is desired.

Microsoft had to rework the kernel security after Crowdstrike ruined
everything with that ridiculous outage.


> In this case, it often just meant disabling the module that often
> wasn't
> even loaded.=C2=A0 The only exception was if I tested the vulnerabilty
> before
> hand :-). Even then, easy to unload the module and disable it.
>=20
> But I heard some enterprise kernels came with the code compiled into
> the
> kernel, and these required a kernel command line option and a reboot
> to
> fix.
>=20
> Of course, maybe there is the argument that only the things you need
> should be enabled; but this would be a lot harder for distros to keep
> everyone happy. Maybe an argument for building your own custom
> kernels
> not relying on distro kernels.


Yeah that would be it.  You boot with the default kernel and then build
your system specific kernel.
