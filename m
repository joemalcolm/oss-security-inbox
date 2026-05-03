Received: (qmail 25668 invoked by uid 550); 3 May 2026 11:00:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25647 invoked from network); 3 May 2026 11:00:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=zPddSZGvbFoMFStLdNAu472JvUYbGLAnyi59Os+eF2I=; b=ioFIaxXcrp1/JIE/K6qaU0doi5
	29MgT3G9JcnreS+JAPZGZnnI/LT5OCvIMJJzJIXdubIYOxBds3FX+nrue/Ovd+/5mSq4ZERojejQZ
	o+xpAn15itqhuHcPjO8v0m1oF8le3oIIiWw+pQ1mveVUBiO7K2+z9hHFeRYra+xgeCkWXK7GbHESj
	R+KGdj0Yfrvkp7pC5OtjijaRJDD8BUb4acvsVA2hyt96mxBOVmdJ2hjfYqf6AHXMmGaAs5ETv7xTP
	v8UJDzIH1QYVcEw7WpzWTVBhHzszvuqgJi9U5u0NwSWjkA1nPgzKcJjb5AkYon+dOkgD8eipB3Grx
	IEvCm6Pw==;
Date: Sun, 3 May 2026 12:00:20 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <afcqxCv58YrhbtVr@definition.pseudorandom.co.uk>
References: <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
 <20260501180028.GA2260@sol>
 <19837ef5-e5b6-45f4-8336-3ce07423dfb1@gmail.com>
 <20260501201841.GA2540@quark>
 <c13dd3c5-ddc1-431e-bc7d-2de39c551f8e@gmail.com>
 <20260502033556.GA3872267@google.com>
 <20260502035402.GB3872267@google.com>
 <378c2ca2-417a-4969-bda5-b7d3f3e8b6fd@gmail.com>
 <CAM=PXV4q2i13W8Z_AZGDfdxbqWANJ=U4Sw3FTcv5mH_QUrrSfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CAM=PXV4q2i13W8Z_AZGDfdxbqWANJ=U4Sw3FTcv5mH_QUrrSfA@mail.gmail.com>
X-Debian-User: smcv
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Sat, 02 May 2026 at 14:21:57 -0600, Greg Dahlman wrote:
>LD_PRELOAD and capabilities

These seem orthogonal, rather than being part of the same idea.

LD_PRELOAD is discretionary (cooperative) so it would only be useful if 
used in a design something like this:

- at the kernel level, AF_ALG just doesn't work (fails with a
   permission-related error), at least for unprivileged processes
- but in user-space, an opt-in LD_PRELOAD module intercepts the socket(),
   etc. calls for AF_ALG, and emulates the behaviour of current kernels
   by calling into a user-space crypto library

It can't be a security boundary, but it can be a mitigation for the 
regressions that a new security boundary (or complete feature removal) 
would otherwise cause, similar to the way LD_PRELOADs like aoss and 
padsp mitigated the regressions for older binaries when distro kernels 
disabled OSS audio.

Meanwhile capabilities are a way to let trusted, privileged processes 
have access to things that unprivileged processes do not, for example 
making AF_ALG available to a few system services that need it but not 
available to all of user-space.

>You should expect any UID (even nobody) to be able to gain the
>privileges in their bounding set

The kernel can distinguish between "CAP_FOO in the init namespace" and 
"CAP_FOO in any other userns" if it wants to, and some kernel features 
are already gated by having a capability in the init namespace 
specifically. For example CAP_SYS_ADMIN in the init namespace allows 
mounting block-device-backed filesystems like ext4, but CAP_SYS_ADMIN in 
a different userns only allows a few "safe" mount operations 
(bind-mounts, overlayfs, FUSE).

     smcv
