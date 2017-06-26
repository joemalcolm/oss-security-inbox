X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1839" "Sunday" "25" "June" "2017" "20:49:43" "-0700" "Andy Lutomirski" "luto@kernel.org" "<CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>" "37" "[oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?" "^Date:" nil nil "6" "2017062603:49:43" "[oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?" (number mark "        luto@kernel. Jun 25   37/1839  " thread-indent "\"[oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9536 invoked by uid 550); 26 Jun 2017 06:22:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10232 invoked from network); 26 Jun 2017 03:50:17 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C6AF22BCF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=luto@kernel.org
X-Gm-Message-State: AKS2vOxntg+8CEzS8HCJQuivXKFOsRpWsR1Y0SlGrPNVJcJaI1H1KyuE
	bTHw4InTENkOgGEO018A9SwS0GKwenaB
X-Received: by 10.176.78.168 with SMTP id l40mr8197317uah.79.1498449004420;
 Sun, 25 Jun 2017 20:50:04 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>
Message-ID: <CALCETrWGp4wARvxNopt7ZFUfDMssAw9oS8fuwROv76EdQe_OQA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 25 Jun 2017 20:49:43 -0700
From: Andy Lutomirski <luto@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Can someone explain all the CONFIG_VMAP_STACK CVEs lately?
To: oss security list <oss-security@lists.openwall.com>

As the author of the CONFIG_VMAP_STACK patches, I'm a bit confused
here.  There have been quite a few bugs in which some code passes a
stack buffer to either sg_set_buf(), etc. or to the usb core.  The
former seem to all be crypto users.

As I understand it, the supposed vulnerability is that, if you can
force the buffer to span a page boundary, the kernel or device will
instead hit the physical page following the the first page of the
buffer, which is likely to be the wrong page.  This causes corruption
and maybe code execution.

Naively, this failure mode occurs because __pa (or virt_to_phys() or
virt_to_page() or whatever interface gets used) will return the PA of
the *beginning* of the buffer, but the next virtual page may not be
the next physical page.  But this makes no sense -- __pa and friends
don't have that effect when called on addresses in vmap space.

So I tried to refresh my memory of what actually happened.  (I looked
into this when I wrote CONFIG_VMAP_STACK.)  __pa() and friends return
garbage when called on a vmap address.  (I think it's likely to be a
totally bogus PA that won't even correspond to a real physical page of
memory.)  The tricky but is that it's *invertable* garbage.  When
these buffers are passed to synchronous crypto APIs, the crypto core
calls sg_virt(), which inverts the transformation and returns a valid
virtual address of the page.  But this is the original VA and points
to the vmap space where the buffer is genuinely contiguous.

IOW, for most synchronous crypto, using sg_set_buf() on a stack
address is utterly bogus, but it works correctly.  Ick.

I haven't checked what USB does, but I suspect it's a wildly
out-of-bounds DMA transfer that's more likely to result in a
straight-up abort than easily exploitable corruption.

So could someone all these CVEs, please?

--Andy
