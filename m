Received: (qmail 13790 invoked by uid 550); 2 Nov 2022 10:18:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32566 invoked from network); 2 Nov 2022 03:37:55 -0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ayaya.dev; s=key1;
	t=1667360264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VRY+a19xyZupVz2P2o9N+7mxT/iQfRmcjvrMFMtm+yk=;
	b=NpDlqYvWQqXTU660S37zdrV2sRMJTltBMm0CTh0RseAR4wYZ7YFDPzS1P+Rx54FJ8OLI78
	1VjiHFUM537QcBxOoN/n5hSdpg2U8fTDGTC/QRMOqiJqZnSV1kc4WrAQpnQHMzgqGrRAK+
	ZkifqEaqD3H8huef4t8uAN6LCvI5l7s=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 02 Nov 2022 04:37:43 +0100
Message-Id: <CO1HVUSF8YCE.38QUAT9ASBE5V@sumire>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "alice" <alice@ayaya.dev>
To: <oss-security@lists.openwall.com>
References: <20221101170833.GA10470@openwall.com>
 <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
 <CAPWQ=1TzQ_e2yHZMXx6Tm4UJG3owZypShvm+VDoxEMcDSDxX+A@mail.gmail.com>
 <CAH8yC8mzcw-C257znYHH+qSyXoFVJWaAD=3dbvH3ZxymUtZU0A@mail.gmail.com>
 <Y2HcWkqpp9KhX80r@itl-email>
In-Reply-To: <Y2HcWkqpp9KhX80r@itl-email>
X-Migadu-Flow: FLOW_OUT
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Wed Nov 2, 2022 at 3:56 AM CET, Demi Marie Obenour wrote:
> On Tue, Nov 01, 2022 at 04:57:25PM -0400, Jeffrey Walton wrote:
> > On Tue, Nov 1, 2022 at 3:55 PM Pavan Maddamsetti
> > <pavan.maddamsetti@gmail.com> wrote:
> > >
> > > https://github.com/RustCrypto
> >=20
> > I hope this does not start a war.. The problem with Rust is, it's only
> > guaranteed to work on i686 and x86_64.
> >=20
> > Trying to compile Rust programs on armel, armhf, aarch64 and PowerPC
> > has been excruciatingly painful. The tool cannot compile its own
> > cargo's on those platforms. I gave up trying to use Rust on anything
> > but x86_64.
>
> Rust should certainly be able to compile its own Cargo, so this is an
> outright bug.  Please report it.  If the instructions are confusing
> enough that it is easy to make a mistake, that=E2=80=99s a bug in the
> documentation.
alpine linux successfully manages to build rust with itself for x86_64,
i586 (currently, might be pentium4 x86 in the future), armhf (v6+hf),
armv7, aarch64, ppc64le, s390x, and riscv64. s390x/riscv64 were the
hardest to get to work here, and the ecosystem has a few issues on those
architectures (old libc/nix crate versions, rustls crate not having asm
for s390x/riscv64 (+ ppc64le), to name two), but the same really goes
for a lot of software even in c/++ in general on those architectures
lacking support.

so yes, this seems like a bug that should be reported.

> --=20
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab

