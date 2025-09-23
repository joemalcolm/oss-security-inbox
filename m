Received: (qmail 14129 invoked by uid 550); 23 Sep 2025 10:42:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14101 invoked from network); 23 Sep 2025 10:42:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=61N8v8loZkOIAV+QUT8elGEQs5JisiM/mAWY4lX2Hrc=; b=lj1PfYJpRnxUdOa9f1jb96DcRS
	l3Ixtd6GTGhacT3Y3Zb1marnYezr/A6kDWf9DEi/Yql3SAXSkV9+wgd+bZxIDCvMgQ2+5i41o9eTx
	PM6OJXMxx9fooH8NPxY/txrC9Z/x3lFIoKb4GGePFPrjiAalTB3POHavR7QQFEbSZHrKLVUYQpO+p
	q6VmTcWvs50RwCg0yZfxD+/BVXuIkhQDQphfxbmG9f1WlcLKm0zqtFMC5mulLjnOIkiXa+oUmd0k8
	PxB0zdsHEXOjrviJ1BNeb8WZ+Viab/DNze2Go6tvTNtUd2OASYacmUVPR5klKkipYhUcoTAemNueZ
	YgjP2hSA==;
Date: Tue, 23 Sep 2025 11:42:28 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aNJ5lMEj4etE2n7M@remnant.pseudorandom.co.uk>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250923032113.GA14348@openwall.com>
X-Debian-User: smcv
Subject: Re: [oss-security] process exit statuses (was: CVE-2023-51767)

On Tue, 23 Sep 2025 at 05:21:13 +0200, Solar Designer wrote:
>some other system component (perhaps a library or the kernel)
>may also trigger a process exit with some code (and there are only 256
>to choose from)

There are slightly more than that at the wait() level, because "killed 
by signal N" is distinguishable from any normal exit status - although 
if the exiting executable is wrapped by an "adverb" like env(1), that 
will usually end up conflating "killed by signal N" with "exiting with 
status 128+N" and we're back to only having 256 choices.

I would say that best-practice for a component wanting to terminate a 
process abnormally should usually be to send it a fatal signal, rather 
than forcing it to _exit(). For example, assertion failures are better 
handled via abort() (SIGABRT) than as an exit status, and when the 
kernel terminates a process abnormally as a result of seccomp filters, 
resource limits or namespace-related constraints, it normally does so by 
killing the process with SIGSYS or SIGKILL.

For historical reasons libX11 and libdbus implement their optional 
exit-on-disconnection behaviour by exiting with status 1, but the 
equivalent code in GLib's D-Bus implementation uses raise(SIGTERM), 
which I think is a better implementation for exiting abnormally as a 
result of an external not-exactly-an-error condition.

     smcv
