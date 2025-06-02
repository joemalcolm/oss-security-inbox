Received: (qmail 30682 invoked by uid 550); 2 Jun 2025 18:07:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30643 invoked from network); 2 Jun 2025 18:07:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748887610;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dGYeN1YQ1wEmu6JLNQo6i1mq2uwmuTqWPfug+Afvgno=;
	b=dWwdcHOpAsj/5PRkHdtPpmkjkeNrN2jQPA/uUQcqpzWtGIlYhuW+5DIDRAMG25flbZo472
	+DmgewIYt2+Im/fSP3CkvadqxE93/JDi4CQHYCe39AtJ2dNlU3UJGyntthppTZbCj/Dhw4
	LS8B+BePeXzntzlnoV6qbbjEAgkjcow=
X-MC-Unique: 7plVXE08NQGgf4kgNsP9-w-1
X-Mimecast-MFC-AGG-ID: 7plVXE08NQGgf4kgNsP9-w_1748887606
From: Florian Weimer <fweimer@redhat.com>
To: Leon Timmermans <fawaka@gmail.com>
Cc: Stig Palmquist <stig@stig.io>,  perl5-porters@perl.org,
  oss-security@lists.openwall.com
In-Reply-To: <CAHhgV8hQR51pP=ioqw8Q2YFCcTZUOs7JaQv8Wq1gW=r2PyKP-A@mail.gmail.com>
	(Leon Timmermans's message of "Mon, 2 Jun 2025 19:22:49 +0200")
References: <omnnpezilawlern5txh6xnng26fmenimxl7ijy6oykuxlurfbg@yo2pvsq3q6v6>
	<87y0uaeeod.fsf@oldenburg.str.redhat.com>
	<CAHhgV8hQR51pP=ioqw8Q2YFCcTZUOs7JaQv8Wq1gW=r2PyKP-A@mail.gmail.com>
Date: Mon, 02 Jun 2025 20:06:40 +0200
Message-ID: <87jz5uauhb.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: QNL43x2ounIazmrK5nsQuPCPu7XrYdm6j1bVNF1lF98_1748887606
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: CVE-2025-40909: Perl threads have a working directory race
 condition where file operations may target unintended paths

* Leon Timmermans:

> On Mon, Jun 2, 2025 at 10:22=E2=80=AFAM Florian Weimer via perl5-porters
> <perl5-porters@perl.org> wrote:
>>
>> * Stig Palmquist:
>>
>> > References
>> > ----------
>> > https://github.com/Perl/perl5/commit/918bfff86ca8d6d4e4ec5b30994451e0b=
d74aba9.patch
>>
>> Is this fix really correct?
>>
>> +    ret =3D fdopendir(dup(my_dirfd(dp)));
>>
>> This does not create a separate open file description, only a second
>> descriptor that shares the read position of the directory stream with
>> the original directory stream.  I think you have to use something like
>> this:
>>
>>      ret =3D fdopendir(openat(my_dirfd(dp), ".", O_DIRECTORY | O_CLOEXEC=
));
>
> Our thread cloning in general is a terribly awkward business, where
> "what is the correct behavior" isn't always well defined or possible;
> I can see the arguments for both to be honest.
>
> For file descriptors we don't create new file descriptions either (we
> don't even create new file descriptors, we refcount them), so why
> should we do so for directory handles? I'm not sure that expectation
> makes sense in that context.

That's a fair point.  It's more like fork in this regard, which has
similar failure cases for DIR * objects (shared file description, but
unshared buffers and a separate descriptor).

> And if we did go the openat way, I don't think that seekdir on the new
> handle with the telldir of the old one is necessarily valid if the
> directory has been changed (I mean even a rewinddir can invalidate
> telldir's return value). I don't think we can do a fully correct copy
> here.

Ugh, I had not considered that.  Yes, glibc will have to switch to an
implementation where telldir offsets are specific to a DIR * for certain
file systems on 32-bit architectures (because telldir returns long, not
off_t).

Hopefully sharing the description isn't much of a problem in practice.

Thanks,
Florian

