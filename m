X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2400" "Thursday" "30" "July" "2020" "18:54:50" "+0200" "Florian Weimer" "fweimer@redhat.com" nil "52" nil "^Cc:" nil nil "7" nil nil (number mark "        fweimer@redh Jul 30   52/2400  " thread-indent "\"[oss-security] Re: Alternative CET ABI\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Alternative CET ABI" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1974 invoked by uid 550); 30 Jul 2020 16:55:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1956 invoked from network); 30 Jul 2020 16:55:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596128097;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mUJJz00/qMUPPiVVgu2HBKBrMX99JElEmzWclI1Ii/I=;
	b=M3PUCy5wQI/fU9D2j9/WJ4T91rMWuCm/ledbF0F5vILg/TAfNclOabt0iLs1sF/aLl1IBz
	1gzBx6EQCRa+zGvl/AAZvd7zMnDps9Cb7xc9z24YepXUP+mHKDMMirJPy7NMR9NjVgQnLt
	TvXGh8TVHTf1EjUzvtwjaVDMKs9Q8lw=
X-MC-Unique: xLgGYBWVORe5mNHR8sHpHQ-1
References: <87k0ylgff0.fsf@oldenburg2.str.redhat.com>
	<CAG48ez3OF7DPupKv9mBBKmg-9hDVhVe83KrJ4Jk=CL0nOc7=Jg@mail.gmail.com>
In-Reply-To: <CAG48ez3OF7DPupKv9mBBKmg-9hDVhVe83KrJ4Jk=CL0nOc7=Jg@mail.gmail.com>
	(Jann Horn's message of "Thu, 30 Jul 2020 18:41:40 +0200")
Message-ID: <87h7tpeyed.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Cc: oss-security@lists.openwall.com,  x86-64-abi@googlegroups.com,  Kernel Hardening <kernel-hardening@lists.openwall.com>,  Szabolcs Nagy <szabolcs.nagy@arm.com>
Date: Thu, 30 Jul 2020 18:54:50 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Alternative CET ABI
To: Jann Horn <jannh@google.com>

* Jann Horn:

> On Thu, Jul 30, 2020 at 6:02 PM Florian Weimer <fweimer@redhat.com> wrote:
>> Functions no longer start with the ENDBR64 prefix.  Instead, the link
>> editor produces a PLT entry with an ENDBR64 prefix if it detects any
>> address-significant relocation for it.  The PLT entry performs a NOTRACK
>> jump to the target address.  This assumes that the target address is
>> subject to RELRO, of course, so that redirection is not possible.
>> Without address-significant relocations, the link editor produces a PLT
>> entry without the ENDBR64 prefix (but still with the NOTRACK jump), or
>> perhaps no PLT entry at all.
>
> How would this interact with function pointer comparisons? As in, if
> library A exports a function func1 without referencing it, and
> libraries B and C both take references to func1, would they end up
> with different function pointers (pointing to their respective PLT
> entries)?

Same as today.  ELF already deals with this by picking one canonical
function address per process.

Some targets already need PLTs for inter-DSO calls, so the problem is
not new.  It happens even on x86 because the main program can refer to
its PLT stubs without run-time relocations, so those determine the
canonical address of those functions, and not the actual implementation
in a shared object.

> Would this mean that the behavior of a program that compares
> function pointers obtained through different shared libraries might
> change?

Hopefully not, because that would break things quite horribly (as it's
sometimes possible to observe if the RTLD_DEEPBIND flag is used).

Both the canonicalization and the fact in order to observe the function
pointer, you need to take its address should take care of this.

> I guess you could maybe canonicalize function pointers somehow, but
> that'd probably at least break dlclose(), right?

Ahh, dlclose.  I think in this case, my idea to generate a PLT stub
locally in the address-generating DSO will not work because the
canonical address must survive dlclose if it refers to another DSO.
There are two ways to deal with this: do not unload the PLT stub until
the target DSO is also unloaded (but make sure that the DSO can be
reloaded at a different address; probably not worth the complexity),
or use the dlsym hack I sketched for regular symbol binding as well.
Even more room for experiments, I guess.

Thanks,
Florian

