X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["542" "Thursday" "27" "October" "2016" "00:41:28" "+0200" "Vlad Tsyrklevich" "vlad@tsyrklevich.net" "<CAH0z3hMh6Txh5Bi_JTLTkxxsfGrZyNmvB1d1h6aCSZHkBj0O7A@mail.gmail.com>" "10" "[oss-security] kernel: low-severity vfio driver integer overflow" nil nil nil "10" "2016102622:41:28" "[oss-security] kernel: low-severity vfio driver integer overflow" (number mark "U       vlad@tsyrkle Oct 27   10/542   " thread-indent "\"[oss-security] kernel: low-severity vfio driver integer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5426 invoked by uid 550); 26 Oct 2016 22:50:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31900 invoked from network); 26 Oct 2016 22:41:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=8Tb8LDHJaPF0CsHruucu4NK+SztifNBAfpCVZxiCfzs=;
        b=Sbp9N0MZ+d/0xG7bgKyYyjvzPAEMW+KyZOqj1UxRDnG7h+NKn+lj8fplOTA7iqSQsl
         eaBWPNzmH+uY5XHZF7u0af9NUeUstW+9Zo92+1Kyn+GUW2Uu+51eG8EclQaPRrV91b6l
         XgNA18SEZ2nTahyVGqZzbblIKjs+JiMkwME27xjLFHm/zLe09WQYwyClpyqTuOYTSI3y
         k2gRzF8qkw43QixgMaptIGxiPahtQsIloHMNVWt6wORdZbPtPgtbQkprggQwfh9gNcpi
         jGgzvKwWJ3zkyVwmOx9pRMQtGU7qkVfujedLhb/A8DnSj5I29EXTVg1tDAp41p5xHW1c
         3xrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=8Tb8LDHJaPF0CsHruucu4NK+SztifNBAfpCVZxiCfzs=;
        b=J/MmXXRgfHvQWr1PCMnUqGt+7eS8YsFWqfY0YZ3Tqz5gpRI27IHhg8yE2qpFPwJCxX
         GPqh0gXV3gaPuncencnSpDoOMKtF08cv93lh1AKJNHWI9H92JxD6rsWSIPjPHjgtl1tn
         RmQi6robOpgswYUTi07885BDA8fpo1JkDqoOxy0/zBgGfbloYkKA13BMABfhWTMLxRKv
         TlnzD+iQEAxoXM6frqGFE8WZmLsE2bqxhJljCCQjS9mTwzqqsE1Cmu86NYzO8QHvJaWb
         69O6XY8WKCVTpfObcNFGIhIMhjX4WCGEu5GYvXXAZywss+9L3KXQKsM2MjXPNZ/KD107
         g+Xg==
X-Gm-Message-State: ABUngvcb1d09BxQPVgzXFE9hz1FQrAiU3bBI87kXiDoO45UYKNhozOgM9Lb7OgaA1JzbiSmDjJ0fOULrfgucwA==
X-Received: by 10.194.85.106 with SMTP id g10mr3968789wjz.128.1477521689289;
 Wed, 26 Oct 2016 15:41:29 -0700 (PDT)
MIME-Version: 1.0
Sender: vlad902@gmail.com
From: Vlad Tsyrklevich <vlad@tsyrklevich.net>
Date: Thu, 27 Oct 2016 00:41:28 +0200
X-Google-Sender-Auth: SKSWf4dkLpBqI4d-a9sQCFFn-Ls
Message-ID: <CAH0z3hMh6Txh5Bi_JTLTkxxsfGrZyNmvB1d1h6aCSZHkBj0O7A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] kernel: low-severity vfio driver integer overflow

The vfio driver allows direct user access to devices. The
VFIO_DEVICE_SET_IRQS ioctl for vfio PCI devices has a state machine
confusion bug where specifying VFIO_IRQ_SET_DATA_NONE along with
another bit in VFIO_IRQ_SET_DATA_TYPE_MASK in hdr.flags allows integer
overflow checks to be skipped for hdr.start/hdr.count. This might
allow memory corruption later in vfio_pci_set_msi_trigger() with user
access to an appropriate vfio device file, but it seems difficult to
usefully exploit in practice.

https://patchwork.kernel.org/patch/9373631/
