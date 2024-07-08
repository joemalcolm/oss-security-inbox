Received: (qmail 21956 invoked by uid 550); 8 Jul 2024 19:05:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21938 invoked from network); 8 Jul 2024 19:05:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=JWhImCaqHsofqaqniqTrhmgGw4dCj8aiXk9mPKLzvEo=; b=TpM3ov4kapjyAu4xr8xroOsYCF
	GVW0tt0rNDLddSPUu3akpU0u6jQKZnL8qSOMklFH6j1Rg56SLU9LCLCre2bWT+HRYYohPclOHCmvW
	pfcz8pxJ6JArFSBbfqDhiBRY/EwmUsBmY8jK5yw9rZbF4LyeD/4DTjQG+cW+Vpb4/BO+ZpKTwHNWP
	NiXnMhGgnGB8JcDY6DlLxYX0BTdSW7vxfWIF+3IaAsxaaTOo2KcsR3YBATOfzGWbiCZXctLp0MZV6
	Yf2ZLOsiN+CkHTTb9kkiwVRyLGv2uQldfx+HptF/3w1ubeuL7aPSdO258c/Jdwo7tgJaauUG00WhP
	cRisRvFg==;
Date: Mon, 8 Jul 2024 20:05:13 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Zow4aQrC2Q478N62@remnant.pseudorandom.co.uk>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
X-Debian-User: smcv
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

On Mon, 08 Jul 2024 at 12:37:08 -0400, Will Dormann wrote:
>  - Modern (e.g. 6.x kernel) x86 platforms load a large-enough libc at the
> same address every time. (i.e. no practical ASLR -- "ASLRn't")

To be more clear about this, when you said "x86" in that message, did you
mean a purely 32-bit x86 system (also known as IA32, i386 or similar),
with a 32-bit kernel and 32-bit user-space?

Or did you mean the whole 32- and 64-bit CPU family, including the purely
32-bit systems described above, but also x86_64?

Based on how you contrasted "x86 systems" vs. x86_64 kernels running
various user-space processes, I think (I hope!) you are using x86 to mean
the 32-bit architecture specifically, similar to how the Meson build
system uses the term; but some writers, projects and APIs say "x86" as
an umbrella term that includes both 32- and 64-bit flavours, the same
way you might talk about "ARM" and intend that to include 64-bit ARMv8.
So I think it would be useful to clarify which you meant.

    smcv
