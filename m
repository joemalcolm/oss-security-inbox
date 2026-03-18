Received: (qmail 1822 invoked by uid 550); 18 Mar 2026 10:45:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4028 invoked from network); 18 Mar 2026 08:14:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773821687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=z24SFVVqorktZZFFR696rwVBtO9Yssb+riKyafuYRDY=;
	b=M+plDw9u4cbt0cmUhY9kGCYVfGCw81eor9iYZP2p/Cj1BTEqF61ohLhJTdurY1cna4fGT4
	FVQBkJO0VCjO5LS/QuWdIn3zW1QEcyIot4RlkqHgF/jCSy9kJ8zAnP3JJR1CgLMeZJ41K6
	oBtWuaf5takd+jNYH+KXUw1jRWP1pMU=
X-MC-Unique: 1g4LWW35OH6q2FJu05JldA-1
X-Mimecast-MFC-AGG-ID: 1g4LWW35OH6q2FJu05JldA_1773821684
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773821683; x=1774426483;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z24SFVVqorktZZFFR696rwVBtO9Yssb+riKyafuYRDY=;
        b=DPxgSeLsu5F1IBU0kWEZhaCU7qZGvX3/+YAIz7gQGfrwl+VdQbrGLsCRROgFzpEZYN
         KD+yluaLyR9wXCo7z8/0y4+7NiLYKNjPDjN3a8EJEZAdEHhh6TxpW4SQjG5BkTePqFeO
         efZ64g7rBYr+wpIPGKZkoyKLbhfPiHaGOnOrwJ8WOnBl7YUShgOT+dr6vKCbSAikCH16
         vSak57KCdu6a3xZ486XQFek2PIqheKEIujxF/EXQDWFQaDVejtqzVo4F6ZBJ2aAdIWRm
         vhmEKRzqtJ7OL0LozxxWJDkbwP0Vyernu5ovrl31cHkm70W9OcM64cRcSOGnyEuw7rAN
         W1Sg==
X-Gm-Message-State: AOJu0Yz7KrXnjt/GW6D73kphocSbTw5hSqwlUdTIPkn2GGxUbZV9JwpR
	YLPsB2DKUPa0yPu01FC7hAmGgRECw9MycQ9sIJvWHEluy4ZEAES8fRgM/OZ2woYVux/LdeHnb1O
	iji5ZrA+FJP1H8+JCROSLNRsUxIyhZ4FzQ+UPMXy+U3rRJNDU9hLJiejt69rJpjGnqMMZCcTFfq
	hoLCaoJMu/SgKC61PaK4/oC5Wgj+qv81PcnYsJFaEGb5e1EwoV4FWp
X-Gm-Gg: ATEYQzwuG8nDRE7cXyV2B5bU7mgjH78L8KmOhs1cdjcILKRayVlBeTQq+R5v213/MSj
	rxapYD5cxcct/o1kQyP5D7pEi82oKLnNFGmPoXtAems64x+F3TiZB0urhl84x1idJHmEobdHj9z
	o3XC6UJvEo5ZVKrZ+nmdHQsN8HsByQZXnwofkfaVMjvLNR2EoyH0NDgRmI6gQippcYVYw0vdpbc
	cs=
X-Received: by 2002:a05:6512:3718:b0:5a1:37ab:312b with SMTP id 2adb3069b0e04-5a279593e23mr712394e87.15.1773821682926;
        Wed, 18 Mar 2026 01:14:42 -0700 (PDT)
X-Received: by 2002:a05:6512:3718:b0:5a1:37ab:312b with SMTP id
 2adb3069b0e04-5a279593e23mr712375e87.15.1773821682234; Wed, 18 Mar 2026
 01:14:42 -0700 (PDT)
MIME-Version: 1.0
References: <210c77d7-6b3a-45b3-8618-d18635efc5e6@canonical.com>
In-Reply-To: <210c77d7-6b3a-45b3-8618-d18635efc5e6@canonical.com>
From: Dmitry Belyavskiy <dbelyavs@redhat.com>
Date: Wed, 18 Mar 2026 09:14:31 +0100
X-Gm-Features: AaiRm53ybXzP6Ev6z7CoSmmjrkgDqM9fa8B7GWfTFoRVtnJzkEoiol0sjkHM_U0
Message-ID: <CAOcQRVW0Nestm-mMxnEzbb=cTEy_chVaoy8rm7Aqwc5OkadHVw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xd7OFLwQQX7zceaJ8yI7ECiEumIGsDjxsx0VCxZk6hY_1773821684
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000043cbf5064d480b39"
Subject: Re: [oss-security] OpenSSH GSSAPI keyex patch issue

--00000000000043cbf5064d480b39
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear colleagues,

Thanks for sharing your findings!
Can we somehow establish some better coordination in case of widely used
downstream patches, especially for such an important, ubiquitous and
heavily patched component as OpenSSH?

On Thu, Mar 12, 2026 at 7:09=E2=80=AFPM Marc Deslauriers <
marc.deslauriers@canonical.com> wrote:

> Hello,
>
> Jeremy Brown discovered a security issue in the GSSAPI Key Exchange patch
> a lot
> of distros carry on top of the OpenSSH package.
>
> Unfortunately, there seems to be quite a few different versions of this
> patch
> being used, but a lot of them share the same core issue. Different
> compiler
> options also result in different outcomes, so the severity of this issue
> varies.
>
> We have assigned CVE-2026-3497 to this issue.
>
> Attached is the full pdf from the reporter, along with the patch we used
> in
> Ubuntu. I suggest reading the full pdf, but I have extracted some of the
> most
> important excerpts from it:
>
> "The patch contains a code defect where sshpkt_disconnect() (a
> non-terminating
> function that queues a disconnect message and returns) is used where
> ssh_packet_disconnect()(which terminates the process) was intended. This
> causes
> the default: error-handling case in the GSSAPI KEX server loop to fall
> through
> into code that reads an uninitialized stack variable (recv_tok), sends its
> contents to the privileged monitor process via IPC, and then passes it to
> gss_release_buffer() which may call free() on a garbage pointer."
>
> "Bug: Non-terminating error handler (sshpkt_disconnect) in GSSAPI KEX
> server
> code allows fallthrough to uninitialized variable use
>
> - Impact: Pre-auth uninitialized pointer dereference (CWE-824, CWE-908);
> confirmed heap corruption via free() on uninitialized pointer (SIGABRT on
> x86_64); privsep boundary violation (up to 127KB of heap data to root
> monitor
> via IPC); SIGSEGV (signal 11) and SIGABRT (signal 6) on x86_64 with
> 90-second
> SSH lockout; 100% reliable child process crash
>
> - Trigger: Single crafted SSH packet (~300 bytes), no authentication or
> credentials needed
>
> - Potentially Affected: Ubuntu/Debian OpenSSH servers with
> GSSAPIKeyExchange
> yes
>
> - Potential Fix: Replace sshpkt_disconnect() with ssh_packet_disconnect()
> at the
> 3 server-side call sites in kexgsss.c"
>
> "The uninitialized recv_tok contains different stack residue depending on
> compiler, optimization level, and flags."
>
> "Different compilers produce fundamentally different residue. Clang -O0
> leaves
> 0xfffbe600 with length 4. GCC -O2 -fno-stack-protector leaves a valid heap
> address with length 127344. The 8-build matrix shows that recv_tok.value
> ranges
> from NULL to stack addresses to heap addresses to unmapped addresses."
>
>
> Thanks,
>
> Marc.
> --
> Marc Deslauriers
> Ubuntu Security Engineer     | http://www.ubuntu.com/
> Canonical Ltd.               | http://www.canonical.com/
>


--=20
Dmitry Belyavskiy

--00000000000043cbf5064d480b39--

