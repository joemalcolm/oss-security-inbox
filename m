X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5072" "Sunday" "26" "February" "2017" "01:45:54" "+0100" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+yy0A9M73-vx+B5VtMQo3hH88h_jvmJ=0-UiRhd9rh6xA@mail.gmail.com>" "111" "[oss-security] Re: Linux kernel: CVE-2017-6074: DCCP double-free vulnerability (local root)" "^Date:" nil nil "2" "2017022600:45:54" "[oss-security] Re: Linux kernel: CVE-2017-6074: DCCP double-free vulnerability (local root)" (number mark "U       andreyknvl@g Feb 26  111/5072  " thread-indent "\"[oss-security] Re: Linux kernel: CVE-2017-6074: DCCP double-free vulnerability (local root)\"\n") "<CAAeHK+xECAFQigwhfNWhrQBronMHWKxcLkWAfnqKo4WEtquPTg@mail.gmail.com>" ("<CAAeHK+xECAFQigwhfNWhrQBronMHWKxcLkWAfnqKo4WEtquPTg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22111 invoked by uid 550); 26 Feb 2017 09:16:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32613 invoked from network); 26 Feb 2017 00:46:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Bdvluhpl6hPuoYNZNMAjnO/NWSsP67LHJIvbo4GBH4g=;
        b=DNxx8NCv4iGjlutdIVMpgEwTQplqY5mX90WzejG/sjb/nTlkklakYghfaFe7qPVkkX
         rrCZefmcGfd4X/Da+C1Y/IWiQkO/jHM4sp0XXiWJh2AnPtyWb0UVQjcKNd3AH3V1nQSF
         om0hFmo5+a9U6g/oOCx8BEntmKiDtvUkz81hPppcYYlEwPHedFHcyHGy60eFQMNgvDvZ
         6NmT2fMvmoi9Lj56qdvoinJBJCnHi9BKti7DOZ+2dHJX55biSEl54VkdKf2FPxOJFItC
         F7zIPJuYbzd3XBCzqKz/lGqlwd47ipaeytY2wtm4R51qXidMYDQNMSn5cWxHZ4DAox4Q
         7uyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Bdvluhpl6hPuoYNZNMAjnO/NWSsP67LHJIvbo4GBH4g=;
        b=dSdqN9sxhJ/WLEMZX9wLJE1UGsoSjaDn1hdkK48ajMBDQYkHvYlDJpAGIkmKG8qdh5
         jjRzAtCIb4Glu989aaYxfx6mAtq8NCUzwaW1HqgiKp4SFQSSYKsEcsaemKz9l86sSx31
         z9qCTuqLLmktr7j4zPCZjisvlTx/yTg7m7nYeyIW0Gnz2g5TFIHJskiUFwpsYbunjFRG
         TlTucbtnwbKwJQNUDKgRq6XjJho/NWEDpdQAayZxjzhXsGmfCv2tRT6ugrmaNRQNY/P/
         CkVabqrQEnVocAKH1wS8DKUb9wvEv2BBKU8GvJ+xPZnSYNR6D/s8geEsL6f0F25sOIeJ
         SSOg==
X-Gm-Message-State: AMke39mq+sK5VhiNCfIbVIwk6CG6SajTkG2U446kgnPYsa8KPTqu/8F/s8T0fHUoWNO3leqXLlfmbFXkRxq9yBd+
X-Received: by 10.28.16.211 with SMTP id 202mr8590336wmq.133.1488069954817;
 Sat, 25 Feb 2017 16:45:54 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAAeHK+xECAFQigwhfNWhrQBronMHWKxcLkWAfnqKo4WEtquPTg@mail.gmail.com>
References: <CAAeHK+xECAFQigwhfNWhrQBronMHWKxcLkWAfnqKo4WEtquPTg@mail.gmail.com>
Message-ID: <CAAeHK+yy0A9M73-vx+B5VtMQo3hH88h_jvmJ=0-UiRhd9rh6xA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sun, 26 Feb 2017 01:45:54 +0100
From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux kernel: CVE-2017-6074: DCCP double-free vulnerability
 (local root)
To: oss-security@lists.openwall.com

I've uploaded the proof-of-concept exploit here:
https://github.com/xairy/kernel-exploits/tree/master/CVE-2017-6074

It includes a SMEP/SMAP bypass, however it's not very reliable. The
exploit was tested on Ubuntu 16.04 with 4.4.0-62-generic kernel. It
will most likely crash on anything else, unless you at least update
the offsets.

A little detail that's missing from the initial announcement is that
this bug is technically a use-after-free followed by a double-free.
The kernel frees skb in dccp_rcv_state_process and then again when
destroying the socket due to inet6_destroy_sock. There's actually a
lot more stuff going on under the hood, but that's the essential part.

The use-after-free happens on skb and skb->data (they are allocated
and freed separately though one right after another). Exploiting this
would allow us to overwrite skb or skb->data with arbitrary data. The
double-free, however, allows us to control what object we overwrite by
doing the trick I mentioned in the previous email.

To get execution control we can overwrite skb->data, since it has
skb_shared_info struct at the end, and
shinfo->destructor_arg->callback is a function pointer, which is
triggered by skb_release_data. The exploit puts ubuf_info struct and
the payload to get root in userspace, so this will be detected by SMAP
and SMEP.

To disable SMEP and SMAP I used the idea from the CVE-2016-8655
exploit by Philip Pettersson. We can overwrite packet_sock struct,
which has a timer_list field deep inside it, which contains a callback
and it's argument. We allocate this struct, overwrite the time_list
field and schedule the timer. I used native_write_cr4 as the callback
and a value with SMEP and SMAP bits disabled for it's argument. Note,
that CVE-2016-8655 by itself resulted in a use-after-free on the
packet_sock struct, but in this case we make a use-after-free happen
by exploiting a double-free.

As I mentioned, the exploit is not very reliable, but I don't want to
spend any more time on it. The kernel can crash due to a memory
corruption if we fail to reallocate some objects in time or in the
correct order. However I've managed to make it work on three different
environments I have set up (including two vms and a real machine).

On Wed, Feb 22, 2017 at 2:28 PM, Andrey Konovalov <andreyknvl@google.com> wrote:
> Hi,
>
> This is an announcement about CVE-2017-6074 [1] which is a double-free
> vulnerability I found in the Linux kernel. It can be exploited to gain
> kernel code execution from an unprivileged processes.
>
> Fixed on Feb 17, 2017:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=5edabca9d4cff7f1f2b68f0bac55ef99d9798ba4
>
> The oldest version that was checked is 2.6.18 (Sep 2006), which is
> vulnerable. However, the bug was introduced before that, probably in
> the first release with DCCP support (2.6.14, Oct 2005).
>
> The kernel needs to be built with CONFIG_IP_DCCP for the vulnerability
> to be present. A lot of modern distributions enable this option by
> default.
>
> The bug was found with syzkaller [2].
>
> ### Bug details
>
> In the current DCCP implementation an skb for a DCCP_PKT_REQUEST
> packet is forcibly freed via __kfree_skb in dccp_rcv_state_process if
> dccp_v6_conn_request successfully returns [3].
>
> However, if IPV6_RECVPKTINFO is set on a socket, the address of the
> skb is saved to ireq->pktopts and the ref count for skb is incremented
> in dccp_v6_conn_request [4], so skb is still in use. Nevertheless, it
> still gets freed in dccp_rcv_state_process.
>
> The fix is to call consume_skb, which accounts for skb->users,
> instead of doing goto discard and therefore calling __kfree_skb.
>
> To exploit this double-free, it can be turned into a use-after-free:
>
> //  The first free:
> kfree(dccp_skb)
> // Another object allocated on the same place as dccp_skb:
> some_object = kmalloc()
> // The second free, effectively frees some_object
> kfree(dccp_skb)
>
> As this point we have a use-after-free on some_object. An attacker can
> control what object that would be and overwrite it's content with
> arbitrary data by using some of the kernel heap spraying techniques.
> If the overwritten object has any triggerable function pointers, an
> attacker gets to execute arbitrary code within the kernel.
>
> I'll publish an exploit in a few days, giving people time to update.
>
> New Ubuntu kernels are out so please update as soon as possible.
>
> ### Timeline
>
> 2017-02-15: Bug reported to security@kernel.org
> 2017-02-16: Patch submitted to netdev
> 2017-02-17: Patch committed to mainline kernel
> 2017-02-18: Notification sent to linux-distros
> 2017-02-22: Public announcement
>
> ### Links
>
> [1] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-6074
> [2] https://github.com/google/syzkaller
> [3] http://lxr.free-electrons.com/source/net/dccp/input.c?v=4.9#L606
> [4] http://lxr.free-electrons.com/source/net/dccp/ipv6.c?v=4.9#L351
> [5] https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=5edabca9d4cff7f1f2b68f0bac55ef99d9798ba4
