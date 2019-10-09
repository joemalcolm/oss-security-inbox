X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["843" "Wednesday" "9" "October" "2019" "10:56:15" "+0800" "bo Zhang" "zhangbo5891001@gmail.com" "<CAAt3=A5YsFK-UEJFOqpXQsNFjAey+0hpJsksohjyoiypLQL8_A@mail.gmail.com>" "22" "[oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow" "^Cc:" nil nil "10" "2019100902:56:15" "[oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow" (number mark "        zhangbo58910 Oct  9   22/843   " thread-indent "\"[oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow\"\n") "<CAA8FXenV6WpB3TPD8W=fi+TDsCLrqgDDFhGnfj0Q+PBUHvjdUw@mail.gmail.com>" nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19847 invoked by uid 550); 9 Oct 2019 10:50:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7303 invoked from network); 9 Oct 2019 02:56:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=byuoVLWZnzth8QUUrbSyrxzEPVWnMMcARW03gWZTUxo=;
        b=rd7lPqK/38A68/O9TyeqyJ+9PO8OCBudxLZyGL/ZOIrC16xZsIoJoek7XmXmF1LtYa
         zP6TRroA0acq381J/3wq+JnRSV7gRlM4M1Xh5G/RVP0heNpKviE93uyxg/ZPEAaCB+nP
         6ENB8A3vD6plOpEyH6JWAK/6HWE72SCkKVh7hhJ0M7Lxyh+4XIT1ENsjTTtA+Gsic4Kg
         01pRGNf8mgKdSlDa7QDY/pFuC4fTFwjobJmi0+NX7uh2A79iODm/fOvJjiSTDG958RLA
         hFlGtcmyRD8Tr2RbvXFQuFfnE6ZlEyVg6KzHE+3A1jttjnjEJcvMipboLUA+gQx9XrnS
         OYyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=byuoVLWZnzth8QUUrbSyrxzEPVWnMMcARW03gWZTUxo=;
        b=NOh/erDJh8SDD4yldBGc0muRcE08XjH43bpYSKA9Qlh8lzYxDG9ro5xDdPD18ix0Mq
         N5tuwzP3MZsXnYdcZdv+Hm/h/HCHcAUaykQ4qbHxemQdytbOeLM9ImeObIoMkbDkLZWR
         qp/s660jA1wVntkE60jr+WnF+1Rk1rxESg/kNb11Rf/jQoKSjrEe9WqAHBZk1wOphAUw
         CdlfrbNbLbKKUogyrmhkiAAFmv7Ji+jOB0ZjXzN15z+V7QOJ1Kn9wW77l4iKFYmzx9l0
         eJNdITCzqNKGaPk0PHeUGAt9WRrsqUpdeP6c7wvCHjSr11OkpnhL+XgrS9PfC2sbszUX
         Mkqw==
X-Gm-Message-State: APjAAAXxud2KPLcUPS7H/PVb4xmJeXktKCMgm/pG8+QRZMIK2WEX3253
	+LzjSvvwD/1YoWFQvjASqF/aCcPMS5+6lflYT9EXQTVI
X-Google-Smtp-Source: APXvYqzvRjzy2i0inbHNHiz6knPeavQie3IsURKsfoQZtASms0tw3g9i/pt2qRAJmE34fxDXZRZcdSTd0j31izu+7y0=
X-Received: by 2002:a19:8c5a:: with SMTP id i26mr536167lfj.118.1570589786599;
 Tue, 08 Oct 2019 19:56:26 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAAt3=A5YsFK-UEJFOqpXQsNFjAey+0hpJsksohjyoiypLQL8_A@mail.gmail.com>
In-Reply-To: <CAA8FXenV6WpB3TPD8W=fi+TDsCLrqgDDFhGnfj0Q+PBUHvjdUw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000005176510594716e05"
Cc: Vineeth Remanan Pillai <vpillai@digitalocean.com>
Date: Wed, 9 Oct 2019 10:56:15 +0800
From: bo Zhang <zhangbo5891001@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape
 Vulnerability: vhost/vhost_net kernel buffer overflow
To: oss-security@lists.openwall.com, Tina Li <tli@digitalocean.com>, 
	tiangangpi@gmail.com

--0000000000005176510594716e05
Content-Type: text/plain; charset="UTF-8"

Hi, Tina
This vulnerability is a kernel vul and different verison of Qemu should not
affect the reproduce. Try the following steps:

1. The guest kernel patch is for this version:
Ubuntu-hwe-4.15.0-50.54_16.04.1(
https://kernel.ubuntu.com/git/ubuntu/ubuntu-xenial.git/tree/drivers/virtio/virtio_ring.c?h=Ubuntu-hwe-4.15.0-50.54_16.04.1),
if you use different kernel version, the patch may need to be modified
slightly.
The patch makes the guest kernel create a invalid descriptor table and the
echo command is just to trigger the bug through a kernel variable.

2. Ubuntu had released the patched kernel, the host kernel you used should
not be patched(< 5.2.x) for reproducing the vulnerability.

Thanks!
cradmin of Tencent Blade Team

--0000000000005176510594716e05--
