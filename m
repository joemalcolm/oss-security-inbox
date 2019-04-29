X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1711" "Monday" "29" "April" "2019" "14:56:06" "-0400" "Jann Horn" "jannhorn@googlemail.com" nil "29" nil "^Date:" nil nil "4" nil nil (number mark "U       jannhorn@goo Apr 29   29/1711  " thread-indent "\"[oss-security] Linux kernel: multiple issues\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: multiple issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8062 invoked by uid 550); 29 Apr 2019 19:03:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32174 invoked from network); 29 Apr 2019 18:56:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=KzRGvE87am4FAsJPpwNFZq6fx2c5o12TgEJiwywA4Pk=;
        b=Ab/4h/+NjqbM9+dGOOdoDavuSAn7vuGi96vsuSAQ+Vxz2K0/U7CrXSBthh8xsRdRvE
         PgIJ/d4OsHkxo82ZOmWU4t2W3GJQ7Kk75FIhEOegxKrvNDh+BYYlg5AhldC2wRideyPL
         WGRA9FPYQcy88bvHRCk6LVKssFtsXj7lmThPbbTiTdXsdUEhdKSoyuAz4xMa9Al2Wzjn
         67BNtU2iCXWp1R+STBqIalB0UJE8AHdYWF7Jsc5UO5v/2fh76a0YDaENUsCJ0GvrSd40
         KSTBs1P5gaQA6F4k0sNTS5nSAu0iyNKfa1ZpFhq4Japu6uCs6pE4d895ml3O9B9pFcgm
         ldjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=KzRGvE87am4FAsJPpwNFZq6fx2c5o12TgEJiwywA4Pk=;
        b=gyE3lNReoyedCx0CE9qozhOJSssd1tuxKmp1Z/3g2cq5rBNMnL7lB9jxJWsOQHfMLC
         nDa3dMF3ua02WGBqd2QiJCqoQ3LrlahsMpfBLgkOyuGkiAibAG+OrSidV4mMVLQMAOn3
         VlOjfmj1jzB8ANBN02Hb703rMVitLdlPKE++A4KtL8b+xaICReMpmzWdIK/1bRKOPWRL
         b9KZDbESvWgWDn1ybi2LC+4Yjw1DoCAhR+VQjb92LoHld3dEXPpoFD83n3Kk5KcxHc8E
         ZiT5tUMq107uKOMYkxd28SSrlEyVPKxPFuBedAOjpGLJfhUfeZWXRR2AZRehcBUeeJ5P
         vcJA==
X-Gm-Message-State: APjAAAVYM/FbYjldQiWNo6K8w0fYtKr7W0Sm14V6gPuVnmzTNyOV1Ly4
	cL9x1vgdrkzrkX5t7cgHXAZxpmo85RY=
X-Google-Smtp-Source: APXvYqy/oeUj3VQrk/Q3r2BUt5K6shLio+y+KWVnqZPbkP6LhOUVQt5xEZwbe6y6A3mdnwItkD6FQg==
X-Received: by 2002:aca:ab12:: with SMTP id u18mr370835oie.48.1556564194616;
        Mon, 29 Apr 2019 11:56:34 -0700 (PDT)
X-Received: by 2002:aca:c5d7:: with SMTP id v206mr253887oif.157.1556564193065;
 Mon, 29 Apr 2019 11:56:33 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAG48ez04TXacCC8-PSw_gHofAux6tfxXBU6EMGpoqL=KzevKuw@mail.gmail.com>
Message-ID: <CAG48ez04TXacCC8-PSw_gHofAux6tfxXBU6EMGpoqL=KzevKuw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 29 Apr 2019 14:56:06 -0400
From: Jann Horn <jannhorn@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: multiple issues
To: oss-security@lists.openwall.com

Here are several issues that became public somewhat recently:

== page->_refcount overflow via FUSE with ~140GiB RAM usage ==
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6b3a707736301c2128ca85ce85fb13f60b5e350a
https://bugs.chromium.org/p/project-zero/issues/detail?id=1752
CVE-2019-11487
NOTE: not relevant (AFAIK) on machines with normal amounts of physical memory

== missing locking in Siemens R3964 line discipline ==
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c7084edc3f6d67750f50d4183134c4fb5712a5c8
https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.0.8
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.35
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.112
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.9.169
https://bugs.chromium.org/p/project-zero/issues/detail?id=1752
CVE-2019-11486
NOTE: Rather than fixing the various issues in the driver, the commit
marks the driver as BROKEN to keep people from building it. If you
actually use the Siemens R3964 line discipline for talking to
Programmable Logic Controllers, or something like that, you may want
to reach out to gregkh and help test things - see the commit message.

== missing locking between ELF coredump code and userfaultfd VMA modification ==
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=04f5866e41fb70690e28397487d8bd8eea7d712a
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.114
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.37
https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.0.10
https://bugs.chromium.org/p/project-zero/issues/detail?id=1790
CVE-2019-11599
