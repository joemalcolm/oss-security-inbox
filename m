X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1320" "Wednesday" "7" "April" "2021" "19:16:07" "+0800" "=?UTF-8?B?6ams5ZOy5a6H?=" "zheyuma97@gmail.com" nil "33" "[oss-security] CVE-2021-3483: Linux kernel: a use-after-free bug in nosy driver" nil nil nil "4" nil nil (number mark "U       zheyuma97@gm Apr  7   33/1320  " thread-indent "\"[oss-security] CVE-2021-3483: Linux kernel: a use-after-free bug in nosy driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3483: Linux kernel: a use-after-free bug in nosy driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3308 invoked by uid 550); 7 Apr 2021 11:24:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28245 invoked from network); 7 Apr 2021 11:16:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=5WO9KPEbZLWOxfnJ0wWa7vulMIJaL9OctXbMfAdDzAY=;
        b=NYaJ0PTBRO2vBahBOcAOpY3phfD8B9xBlx4vKvlKPUWlPNpHhbqdEV8PTqdKmvnqdL
         tKJlr2smrSwgYcVpnCOV2Wq5JUivDCxTMus7EIzyJ99pUO7+liTIaeAaegRPVBztBKuB
         sif3I1fJFu5mNVEN9DL61+QaD1prRrMIonLaBgnUtCGt0kiuklMxV6JwvVOhalubxalq
         DolYnHSy93nyvh0x2FckeqCZA2zCrqZOB7dHd+WZUldJ+OiRLtIF9N9Oxn9M6mTR/JVc
         8YTS8c/ju7nT6FNz5TZaEU3XUWz4dvR0Fgizk4641h2VnP5/GYhNd8X70aXjZm+rVAV0
         H0Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5WO9KPEbZLWOxfnJ0wWa7vulMIJaL9OctXbMfAdDzAY=;
        b=mqDy91QFWqkA6/vQd6ZgiH5OCfWAq9P+HXz7i63NHHDhVczCOImoLgHY2oZ2c9BIEG
         Xa4KI1DQ43cKFnRHU7fBOEWgM8o5MKowo6qiqTsUvFW1rNLGk1Nm2CeQib57BQpizjed
         pdIC3peJDh7kR9Rh21Jmvkhe7oNpxYCdt/s11o7m/t7A/+NyG8lXLcRRx87hSTr3y92u
         Cc+S3+I5KfB3I7vPKA5m4FqhViVBccNQxavBd0edXYa238v0lNrz1U4Za1FFz4KYUonH
         sj0kQ1NnGfD9uDjxLeCRCTQQUT9yl408jXPaEU6kkUvnJndI5UBsQxDzx6L/A7f2p1fu
         e2Bw==
X-Gm-Message-State: AOAM530+yDgrtis7XzvjEYA4MuE3sXv3JyMKIJ+JTO46VBbKFS/IZiaW
	RqEDteEo8j5mcKDmPYyY4QoVS1VJjw0E5XYKxyWxYhS0km28
X-Google-Smtp-Source: ABdhPJzw0+gpGWoZRFxahOX/VtWziBDbqFqblQ+cpkrqu5nFgA5aY42fzj/AUtbl/te9hszGiF03ELmGF4RGbtdIWuY=
X-Received: by 2002:a05:6830:1404:: with SMTP id v4mr2471347otp.2.1617794178775;
 Wed, 07 Apr 2021 04:16:18 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?6ams5ZOy5a6H?= <zheyuma97@gmail.com>
Date: Wed, 7 Apr 2021 19:16:07 +0800
Message-ID: <CAMhUBj=2rfJDZyO01nDEof8c-bS5Y+tLL0NKJzDXJqTgTTariQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-3483: Linux kernel: a use-after-free bug in nosy driver

Hello,

I found a bug in the latest Linux kernel. The
location of the bug is Linux/drivers/firewire/nosy.c.   Nosy is an
IEEE 1394 packet sniffer which is used for protocol analysis and in the
development of IEEE 1394 drivers, applications, or firmware.

For each device, the nosy driver allocates a pcilynx structure. A
use-after-free might happen in the following scenario:

1. Open nosy device for the first time and call ioctl with command
NOSY_IOC_START, then a new client A will be malloced and added to
doubly linked list.
2. Open nosy device for the second time and call ioctl with command
NOSY_IOC_START, then a new client B will be malloced and added to
doubly linked list.
3. Call ioctl with command NOSY_IOC_START for client A, then client A
will be readded to the doubly linked list. Now the doubly linked list
is messed up.
4. Close the first nosy device and nosy_release will be called. In
nosy_release, client A will be unlinked and freed.
5. Close the second nosy device, and client A will be referenced,
resulting in UAF.

The root cause of this bug is that the element in the doubly linked
list is reentered into the list.

Here is the commit to patch this BUG:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=829933ef05a951c8ff140e814656d73e74915faf

Regards,

Zheyu Ma
