Received: (qmail 7621 invoked by uid 550); 27 May 2024 10:32:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7594 invoked from network); 27 May 2024 10:32:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1716805912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5NtPGkJD0TOJ7cKewqkcozNNEz0Kk+/on3Z3B8NgPsI=;
	b=c+GacIKE+hNETlkrwedmL4k0mFBJPFtK0FDuAYYg7TjXGosVY7DY3QWVD75OK+zio54kmM
	lSsAMuk6yn0tZv6r89uqVv+ZUMVxNOdAIna9rzc5R2Z16loxDplxhvtb3k758M45i5IMdI
	SlTqmwHkcXIvH2Mvr/4ksNQtIO7WOX0=
X-MC-Unique: W30cRESUMfqjmbk9nuTL0g-1
From: Florian Weimer <fweimer@redhat.com>
To: Charles Fol <c.fol@lexfo.fr>
Cc: oss-security@lists.openwall.com
In-Reply-To: <7789a6d5-92c9-4239-8a07-7b0131ed166b@lexfo.fr> (Charles Fol's
	message of "Mon, 27 May 2024 11:16:53 +0200")
References: <23c15272-d797-4c3c-bbfb-e462c900978f@gmail.com>
	<20240418164242.GA2468@openwall.com>
	<7789a6d5-92c9-4239-8a07-7b0131ed166b@lexfo.fr>
Date: Mon, 27 May 2024 12:31:46 +0200
Message-ID: <87bk4r1r71.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] The GNU C Library security advisories update for
 2024-04-17: GLIBC-SA-2024-0004/CVE-2024-2961: ISO-2022-CN-EXT: fix
 out-of-bound writes when writing escape sequence

* Charles Fol:

> Hello all,
>
> Although very late, here is a follow up explaining the impact of the
> vulnerability.
>
> Provided that you can force an application to convert a partially
> controlled buffer to ISO-2022-CN-EXT, you get an
> overflow of 1 to 3 bytes whose value you don't control.
>
> This can be triggered in at least two ways in PHP:
>
> - Through direct calls to iconv()
> - Through the use of PHP filters (i.e. using a "file read" vulnerability)
>
> Due to the way PHP's heap is built, you can use such a memory
> corruption to alter part of a free list pointer,
> which can in turn give you an arbitrary write primitive in the
> program's memory.
>
> With this bug, any person that has a file read vulnerability with a
> controlled prefix on a PHP application has RCE.

Out of curiosity, why would PHP translate a file to ISO-2022-CN-EXT
while reading it?  It's not even an ASCII-transparent charset.

Thanks,
Florian

