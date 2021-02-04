X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1385" "Friday" "5" "February" "2021" "00:43:31" "+0300" "Alexander Popov" "alex.popov@linux.com" "<f345a0d3-34f2-a013-545b-bf49ec5a4818@linux.com>" "29" "[oss-security] Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation" nil nil nil "2" "2021020421:43:31" "[oss-security] Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation" (number mark "U       alex.popov@l Feb  5   29/1385  " thread-indent "\"[oss-security] Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9302 invoked by uid 550); 4 Feb 2021 21:43:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9284 invoked from network); 4 Feb 2021 21:43:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=obp2Sig8Ad/8fz4+hH8W54AVlYayuolIVnRIXC8JEh4=;
        b=d1ZyrXH9FOSOqI/0ekSIY9YoC/8w9bWhxOF4Y5g2kQ/Lv+ErE4v+3GQy4UzhziniDe
         c9fvnlVwtQj0/UP2nUtZxklaQ9+3i2PMXXxxyCqjLXA3+Jv2MQFJu32XYc/WymOTgJGb
         +4tGdxh096Cyv/Jgr7TfKeysWjRakd2KdULfkjTdptpW700VS4rFGBXCi6hCh1uNAC8U
         H1f3LzdoBl/Hps7flsrRxb4/G89vBnS8VncEyvlDKebOLCaV+805Gqe+78qQHPtZIR1S
         9t72fyeh2GlKFF8//i2PsfoycZwTMwVQ3TGDS6qc1ukFP0yFhLBYinLsFF93W8py0ATy
         0fNQ==
X-Gm-Message-State: AOAM531/AvoQgYn9qR4sJUus2Ub1shHdUdsdCTPSMYCz4Vs1U7XS4/KO
	xYWfN5151cC7XQ6ZdNfp46g=
X-Google-Smtp-Source: ABdhPJxG6KG6FDFlfJ6W1J3FP1kFew3Rm/Um3Zma+dtn4iDE+khtAmz0QeoEG90xKVMBbOQgsSP6OQ==
X-Received: by 2002:adf:e381:: with SMTP id e1mr1457291wrm.22.1612475014445;
        Thu, 04 Feb 2021 13:43:34 -0800 (PST)
To: oss-security <oss-security@lists.openwall.com>
Cc: linux-distros@vs.openwall.org,
 Linus Torvalds <torvalds@linuxfoundation.org>, Greg KH <greg@kroah.com>,
 "security@kernel.org" <security@kernel.org>,
 Norbert Slusarek <nslusarek@gmx.net>,
 Stefano Garzarella <sgarzare@redhat.com>, Eric Dumazet
 <edumazet@google.com>, Anthony Liguori <aliguori@amazon.com>,
 David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jorgen Hansen <jhansen@vmware.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Jeff Vander Stoep <jeffv@google.com>,
 Andrey Konovalov <andreyknvl@google.com>
From: Alexander Popov <alex.popov@linux.com>
Message-ID: <f345a0d3-34f2-a013-545b-bf49ec5a4818@linux.com>
Date: Fri, 5 Feb 2021 00:43:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation

Hello!

Let me inform you about the Linux kernel vulnerabilities that I've found in
AF_VSOCK implementation. I managed to exploit one of them for a local privilege
escalation on Fedora Server 33 for x86_64, bypassing SMEP and SMAP. I'm going to
share all the details about the exploit techniques later.

CONFIG_VSOCKETS and CONFIG_VIRTIO_VSOCKETS are shipped as kernel modules in all
major GNU/Linux distributions. The vulnerable modules are automatically loaded
when you create a socket for AF_VSOCK. That is available for unprivileged users
and user namespaces are not needed for that.

These vulnerabilities are race conditions caused by wrong locking in
net/vmw_vsock/af_vsock.c. The race conditions were implicitly introduced in
November 2019 in the commits c0cfa2d8a788fcf4 and 6a2c0962105ae8ce that added
VSOCK multi-transport support. These commits were merged in the Linux kernel
v5.5-rc1.

I prepared the fixing patch and made responsible disclosure to
security@kernel.org. Now the patch is merged into the mainline kernel:
  "vsock: fix the race conditions in multi-transport support"

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c518adafa39f37858697ac9309c6cf1805581446
This patch is also backported into the affected stable trees.

I've requested a CVE ID for these vulnerabilities at https://cveform.mitre.org/.

Best regards,
Alexander
