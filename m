Received: (qmail 3315 invoked by uid 550); 9 Jul 2024 05:53:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3297 invoked from network); 9 Jul 2024 05:52:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720504370;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rjc0xEuRAxY10FHb6JnUUN8dBFLFM7qdy6/u+WRY56g=;
	b=PJBtrBVXkFh/mgEFSC64QP2rMUHifRVVf8RqrqC5NuwiyUk21yENMtsKiJnb9qzcoj2xE2
	uYcOYK3NGJSJXjXGKZiHknDwabxKEK3J5+kvGmYx0/V3NuL8ZG7ByO20sNdKZ/jf9IMPgb
	Q1/Jbnbuunp3MZKiICNsPPwlHR+b56w=
X-MC-Unique: LocaetM3OqiVNR7qeTPK5w-1
From: Florian Weimer <fweimer@redhat.com>
To: "David A. Wheeler" <dwheeler@dwheeler.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <D52A947C-0AEC-4310-B2C5-519BBE46037C@dwheeler.com> (David
	A. Wheeler's message of "Mon, 8 Jul 2024 16:14:40 -0400")
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
	<87y16bdc9p.fsf@oldenburg.str.redhat.com>
	<D52A947C-0AEC-4310-B2C5-519BBE46037C@dwheeler.com>
Date: Tue, 09 Jul 2024 07:52:42 +0200
Message-ID: <87jzhv2jth.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

* David A. Wheeler:
>> The kernel should not apply hugepage optimizations to mappings created
>> with MAP_DENYWRITE.
>
> Shouldn't that be MAP_EXECUTABLE, not MAP_DENYWRITE?
> If you use MAP_DENYWRITE,
> a program that mmaps in a large non-code dataset won't have hugepage
> optimizations applied, which might be a significant performance regression.

It's just a bit that happens to be set by the glibc dynamic linker and
not much else.  The name doesn't matter at this point.

> Also, the mmap man page:
> https://man7.org/linux/man-pages/man2/mmap.2.html says that
> MAP_EXECUTABLE and MAP_DENYWRITE are ignored.  There's a risk that
> some programs are taking that to heart & not using those flags even
> when they should. If one of those flags *will* have an effect now,
> then it'd be a good idea to document that :-).

The effect of the flag is to get back the old behavior. 8-)  It only
makes backwards compatibility better.

Thanks,
Florian

