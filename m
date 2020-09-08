X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1398" "Tuesday" "8" "September" "2020" "08:33:00" "-0700" "Andy Lutomirski" "luto@kernel.org" "<CALCETrXCbDDPe_Z2xxycPPaFC4pxaJYYkGLC4CsiDaRB9BVgMg@mail.gmail.com>" "34" "[oss-security] CVE Request: Linux kernel vsyscall page refcounting error" nil nil nil "9" "2020090815:33:00" "[oss-security] CVE Request: Linux kernel vsyscall page refcounting error" (number mark "U       luto@kernel. Sep  8   34/1398  " thread-indent "\"[oss-security] CVE Request: Linux kernel vsyscall page refcounting error\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE Request: Linux kernel vsyscall page refcounting error" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29828 invoked by uid 550); 8 Sep 2020 15:33:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29807 invoked from network); 8 Sep 2020 15:33:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1599579193;
	bh=0BuOV5GgWYEdp5dYq0rKyPZod2iLNQ+hKKLcTmDvEHU=;
	h=From:Date:Subject:To:From;
	b=mSLlHBv2mAYux6NzQGZwSbA8/VSg8LE2Wm/vMG5bhWYsLmOMO8PlO7qKdkSE+uLAN
	 QuFkDDIV2ukFkbJUj/W6XsAU3IhHgNjj9MdkjmztubxuR/hjUKxGjCtC8hFDNiAL7y
	 +c5d9J9kWO2UXOVNCkwNXZuRwxRpViVtffI6gVt4=
X-Gm-Message-State: AOAM531zzULN9vE/RBrKs4ykNx1n7Fl1GN4IcMcA5y+TqjAWP3oX9cN0
	DAMo1mLOFk8pBZ4zDqHIxR+ncFAP1rIAJPjdKKqDRA==
X-Google-Smtp-Source: ABdhPJzIXvqxGn8SGqfw5fZ4GTZchmpIPVBaaBUQFaxvNLQsOOZHZZo+MSLh9SJnLNBrhOwgY29w4R4j1HX4f9f5bWI=
X-Received: by 2002:a5d:5111:: with SMTP id s17mr239570wrt.70.1599579191922;
 Tue, 08 Sep 2020 08:33:11 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@kernel.org>
Date: Tue, 8 Sep 2020 08:33:00 -0700
X-Gmail-Original-Message-ID: <CALCETrXCbDDPe_Z2xxycPPaFC4pxaJYYkGLC4CsiDaRB9BVgMg@mail.gmail.com>
Message-ID: <CALCETrXCbDDPe_Z2xxycPPaFC4pxaJYYkGLC4CsiDaRB9BVgMg@mail.gmail.com>
To: oss security list <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE Request: Linux kernel vsyscall page refcounting error

Linux 5.7 and 5.8 have a bug in the reference counting of the struct
page that backs the vsyscall page.  The result is a refcount
underflow.  This can be triggered by any 64-bit process that is
permitted to use ptrace() or process_vm_readv().  A creative attacker
can probably achieve kernel code escalation by using this bug.

You can prevent the issue from triggering by booting with
vsyscall=xonly or vsyscall=none.  You can also effectively hotpatch a
kernel with suitable hardening options by running the updated test
case noted below -- the test case will underflow the refcount past
zero, preventing further use of the page.  (A real attacker would
carefully underflow it exactly to zero but not past.)  Or you can fix
your kernel.

(No one should be using vsyscall=emulate any more unless they have a
very specific use case that requires it.  vsyscall=xonly is better in
almost all cases.  For some reason, Fedora still seems to be using
emulate mode, though.)

Fixed by:

commit 9fa2dd946743ae6f30dc4830da19147bf100a7f2
Author: Dave Hansen <dave.hansen@linux.intel.com>
Date:   Thu Sep 3 13:40:28 2020 -0700

    mm: fix pin vs. gup mismatch with gate pages

and tested a little better by:

commit 8891adc61dce2a8a41fc0c23262b681c3ec4b73a
Author: Andy Lutomirski <luto@kernel.org>
Date:   Thu Sep 3 13:40:30 2020 -0700

    selftests/x86/test_vsyscall: Improve the process_vm_readv() test
