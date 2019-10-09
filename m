X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1899" "Wednesday" "9" "October" "2019" "13:04:30" "-0500" "Tina Li" "tli@digitalocean.com" "<CAA8FXenGavrNCBU08REE1PANa9_jCGA9Xqx2CuK7zFhHWTygGg@mail.gmail.com>" "47" "[oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow" "^Cc:" nil nil "10" "2019100918:04:30" "[oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow" (number mark "        tli@digitalo Oct  9   47/1899  " thread-indent "\"[oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow\"\n") "<CAAt3=A5YsFK-UEJFOqpXQsNFjAey+0hpJsksohjyoiypLQL8_A@mail.gmail.com>" ("<CAAt3=A5YsFK-UEJFOqpXQsNFjAey+0hpJsksohjyoiypLQL8_A@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24270 invoked by uid 550); 9 Oct 2019 18:27:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16100 invoked from network); 9 Oct 2019 18:04:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=digitalocean.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3JscY2Hf9lQNX42XXeyS2abIFCbtWsi9w0Bl+qOmVUA=;
        b=h++uVDPO0P6W/svrPI204zCPlXwkHlpzwFa3bzeoLxOWR7iqWQhR0OQf8hX/yiSJaH
         YIKn+OgKoTdPmkTsJiKgtqENfSUMLh63wGDgCXp+A5cO9P6BUYwIrqeFfHBmApfDMLhk
         x8grSJ+xyj4NfTlGbJ8DWsHzo9l1wcZ575XtY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3JscY2Hf9lQNX42XXeyS2abIFCbtWsi9w0Bl+qOmVUA=;
        b=WqjlFeGbkzNT5mkygvr5XHr8+YDmXjVx87V7MphdG2VK7pJftuKZbaRaMY+G+gSNrq
         kDNVnNlYjjcghjUdhPTPEZR/hmXB5z6pw2hUZYjSou65KFCkCo760hgVAiKDmjgVP0lN
         b8J5xprvICdVMamOnWXK2IDvQJAgx9Kl3iuorFSrGdY+fT15/GiPm0sNisBt9gRJBPSM
         qSbjcZ4x/fnjoVNYwCq5zQwhM3VsaS6XrelYyKM24LqFEa0ljKZmaaM55g1j4QYtEcqq
         gg9B9mNwPayBXZCdLgCycIv0ePaBUuM7d2i4CVFr8hWCG9j5UA+esGyw702ex/xviwtj
         p7VA==
X-Gm-Message-State: APjAAAX9BpMgX7NSt08NhH8OlcISrp/kTrRCygqS/0SVs/wxeQFIRfZl
	cKYCwrx+QnEbUzxDsExkrhPSgHJw4sq74oT+mER3
X-Google-Smtp-Source: APXvYqzXt5YWGzcTnHAGiAhXw21bTf7IO4O3E7eT6N2KuS4tyqQhQkCtv6zB86NUK7FJm7WAoFTp0p8Ba572ot67Yo0=
X-Received: by 2002:a6b:7a45:: with SMTP id k5mr4580066iop.217.1570644281729;
 Wed, 09 Oct 2019 11:04:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAAt3=A5YsFK-UEJFOqpXQsNFjAey+0hpJsksohjyoiypLQL8_A@mail.gmail.com>
In-Reply-To: <CAAt3=A5YsFK-UEJFOqpXQsNFjAey+0hpJsksohjyoiypLQL8_A@mail.gmail.com>
Message-ID: <CAA8FXenGavrNCBU08REE1PANa9_jCGA9Xqx2CuK7zFhHWTygGg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007b3dab05947e1e1c"
Cc: Vineeth Remanan Pillai <vpillai@digitalocean.com>, tiangangpi@gmail.com, 
	oss-security@lists.openwall.com
Date: Wed, 9 Oct 2019 13:04:30 -0500
From: Tina Li <tli@digitalocean.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape
 Vulnerability: vhost/vhost_net kernel buffer overflow
To: bo Zhang <zhangbo5891001@gmail.com>

--0000000000007b3dab05947e1e1c
Content-Type: text/plain; charset="UTF-8"

Hi Bo,
Thanks for your reply.

> This vulnerability is a kernel vul and different verison of Qemu should
> not affect the reproduce. Try the following steps:
>
> 1. The guest kernel patch is for this version:
> Ubuntu-hwe-4.15.0-50.54_16.04.1(
> https://kernel.ubuntu.com/git/ubuntu/ubuntu-xenial.git/tree/drivers/virtio/virtio_ring.c?h=Ubuntu-hwe-4.15.0-50.54_16.04.1),
> if you use different kernel version, the patch may need to be modified
> slightly.
> The patch makes the guest kernel create a invalid descriptor table and the
> echo command is just to trigger the bug through a kernel variable.
>

Our host kernel is 4.15 and it is unpatched. In the guest, we use the
reproducer patch that you provided for Ubuntu-hwe-4.15.0-50.54_16.04.1. But
it doesn't work for us, and it is either crashing the guest or not able to
crash the host during the migration.
1. If we ssh to the guest, and run the echo command to trigger the bug.
Then the guest kernel crashes, even before the modprobe command is executed.
2. If we use the console to access the guest, then we can run echo/modprobe
-r /modprobe commands successfully. But later the live migration is always
successful, and the host is not crashed.

So, as described above, we are not able to reproduce the host crash with
the provided patch because either the guest crashes with the patch or live
migration succeeds when the guest is not crashing.
Would it be possible for you to have another look at the patches that you
used to reproduce and probably post if the patches that you have differs
from the posted one?
Thanks a lot!

Best regards,
Tina

> 2. Ubuntu had released the patched kernel, the host kernel you used should
> not be patched(< 5.2.x) for reproducing the vulnerability.
>
> Thanks!
> cradmin of Tencent Blade Team
>

--0000000000007b3dab05947e1e1c--
