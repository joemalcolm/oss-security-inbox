Received: (qmail 16293 invoked by uid 550); 8 Jul 2024 20:15:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16275 invoked from network); 8 Jul 2024 20:15:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector2; h=Message-Id:In-Reply-To:To:References:Date:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From;
	bh=iHUlsyVLuoHsdgsBWbgwgHe1/ZAoquiHPRC401qgx2c=; b=VSe5s8ZdFUAHt16CQAoMPxNrSy
	/jUpQrq3qKHhxrU0wnvseU9pr3nRlUR+BBl+6v+I9VtuDv/xFnye3GOOIjJgCXXxLYL5mKDfV5qzh
	7OiswsiHXJdaqkVCx01o2cxJe6rF7HxjA5JwAQcjpprCzuO6VaSdbETFJjzGJUxmXhno38HXhcftT
	KAmumScgz96InCfIZXdhagyxnDD9neGxyo514hpprz9rGm/ATLDdi1+mbf38/ohWf1I5wgjqo3C1k
	00YR+xo6E+he60Pd+ndB49mn0kAeHFKle3FI+KEdRK0d0P7ck78zkZWDRCFzbBbQr1UzWsgtlO+31
	PfQfRi8Q==;
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.1\))
Date: Mon, 8 Jul 2024 16:14:40 -0400
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <87y16bdc9p.fsf@oldenburg.str.redhat.com>
To: oss-security@lists.openwall.com
In-Reply-To: <87y16bdc9p.fsf@oldenburg.str.redhat.com>
Message-Id: <D52A947C-0AEC-4310-B2C5-519BBE46037C@dwheeler.com>
X-Mailer: Apple Mail (2.3731.700.6.1.1)
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

> * Will Dormann:
> - Modern (e.g. 6.x kernel) x86 platforms load a large-enough libc at
>>   the same address every time. (i.e. no practical ASLR -- "ASLRn't")

For clarity, I'm going use the term "x86_32" to clarify that we're talking =
about
32-bit architectures & *excluding* the far-more-common 64-bit case.

> On Jul 8, 2024, at 1:28 PM, Florian Weimer <fweimer@redhat.com> wrote:
> Please note that current glibc is not large enough to benefit from 2 MiB
> hugepages because all load segments are smaller than 2 MiB, so it's just
> not possible to use hugepages for libc.so.6.  This is with the default
> -z separate-code in current binutils.  Even with -z noseparate-code, the
> large readable-executable load segment is still a bit less than 2 MiB.
> Unfortunately the kernel does not know this when we reserve the address
> space for the entirety of libc.so.6.

So clearly there needs to be a way to provide this information :-).

> The kernel should not apply hugepage optimizations to mappings created
> with MAP_DENYWRITE.

Shouldn't that be MAP_EXECUTABLE, not MAP_DENYWRITE?
If you use MAP_DENYWRITE,
a program that mmaps in a large non-code dataset won't have hugepage
optimizations applied, which might be a significant performance regression.

Also, the mmap man page:
https://man7.org/linux/man-pages/man2/mmap.2.html
says that  MAP_EXECUTABLE and MAP_DENYWRITE are ignored.
There's a risk that some programs are taking that to heart & not using thos=
e flags
even when they should. If one of those flags *will* have an effect now, the=
n it'd be a good idea
to document that :-).

--- David A. Wheeler

