Received: (qmail 5480 invoked by uid 550); 2 Jun 2025 08:22:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5448 invoked from network); 2 Jun 2025 08:22:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748852539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pszW4zn/PDprJX/L6gr3/9S2xFXBDqDsH99+/fawFCI=;
	b=Vm/qopOl85GxWBtxQfbZ4cGfcE18DC2B9iK79p6zU+GjmmTGPdhWLobA8tDTo6QWqyMvyf
	PzDgrgxbAaDeDbUbK6wX1w2oYVL5QMatk8CEo/+psdQC6UWiQYw84rfzXB/l+42ToTSVj6
	uXxyC9oAj1vwKGrrbS5hmf0p4HLUIvs=
X-MC-Unique: hmTjhWeCOwaEJIXQPDIVmA-1
X-Mimecast-MFC-AGG-ID: hmTjhWeCOwaEJIXQPDIVmA_1748852535
From: Florian Weimer <fweimer@redhat.com>
To: Stig Palmquist <stig@stig.io>
Cc: perl5-porters@perl.org, oss-security@lists.openwall.com
In-Reply-To: <omnnpezilawlern5txh6xnng26fmenimxl7ijy6oykuxlurfbg@yo2pvsq3q6v6>
	(Stig Palmquist's message of "Fri, 30 May 2025 14:29:29 +0200")
References: <omnnpezilawlern5txh6xnng26fmenimxl7ijy6oykuxlurfbg@yo2pvsq3q6v6>
Date: Mon, 02 Jun 2025 10:22:10 +0200
Message-ID: <87y0uaeeod.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: GBk_AL-FNosbROf5WGlFz3ITIrVjSzMfFhp7GQJdap8_1748852535
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: [oss-security] Re: CVE-2025-40909: Perl threads have a working directory race
 condition where file operations may target unintended paths

* Stig Palmquist:

> References
> ----------
> https://github.com/Perl/perl5/commit/918bfff86ca8d6d4e4ec5b30994451e0bd74aba9.patch

Is this fix really correct?

+    ret = fdopendir(dup(my_dirfd(dp)));

This does not create a separate open file description, only a second
descriptor that shares the read position of the directory stream with
the original directory stream.  I think you have to use something like
this:

     ret = fdopendir(openat(my_dirfd(dp), ".", O_DIRECTORY | O_CLOEXEC));

(The original dup approach failed to set the O_CLOEXEC flag, potentially
causing the descriptor to leak to subprocesses.)

Futhermore, if there is error reporting using errno in the Perl code (I
haven't checked), it makes sense not to pass a -1 failure indicator from
openat to fdopendir because that unconditionally results in EBADF
instead of more precise error codes such as ENFILE or EMFILE.

Thanks,
Florian

