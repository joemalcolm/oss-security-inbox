X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1231" "Tuesday" "8" "May" "2018" "17:38:28" "+0000" "Andy Lutomirski" "luto@kernel.org" "<CALCETrXb4H5qa1o9qbC=+VJ+y6PGdoO-XWV3QNtNxkwCWC2ZTw@mail.gmail.com>" "23" "[oss-security] CVE-2018-1087: KVM incorrectly handles #DB exceptions while deferred by MOV SS/POP SS" nil nil nil "5" "2018050817:38:28" "[oss-security] CVE-2018-1087: KVM incorrectly handles #DB exceptions while deferred by MOV SS/POP SS" (number mark "U       luto@kernel. May  8   23/1231  " thread-indent "\"[oss-security] CVE-2018-1087: KVM incorrectly handles #DB exceptions while deferred by MOV SS/POP SS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1524 invoked by uid 550); 8 May 2018 18:27:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11456 invoked from network); 8 May 2018 17:38:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1525801121;
	bh=58J2z/sWE8PazJOemKhoBDOXFOQt1uC+q/s6s+e9iFU=;
	h=From:Date:Subject:To:From;
	b=pn6mgwaTxwHnvyB3/NGbT8vSGg+6NFsf9wY2pmhAc3MXRHT5ipYIPJU+yPCFbMuef
	 H7QdgbU9Em/k9iFY6hn4yc0R64OSiEhllD6XoSktIqN0LqOBMVtCylxiW1fXFkU0v7
	 zIK+gcoHUSnNPiP079qVM9GVD4cBc0WfgjspXIU4=
X-Gm-Message-State: ALQs6tDTBCaM6AE9fwGVpnB/kbPhECmT0npjf50U+vAA9FplfmFpNl0r
	x3mE4XGh+M9QUuMgcUVqhH8WtCxQHTR+VfOcWUF4eA==
X-Google-Smtp-Source: AB8JxZqgeJVmp4L1OcV/7bZY43SbjG+iSIqGdY7XeE+utRwQHo1eET6ZbiEH58JdwolgKj+AuFGoOQsAqTabCIHH5cA=
X-Received: by 2002:adf:85dd:: with SMTP id 29-v6mr34067042wru.120.1525801119267;
 Tue, 08 May 2018 10:38:39 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@kernel.org>
Date: Tue, 08 May 2018 17:38:28 +0000
X-Gmail-Original-Message-ID: <CALCETrXb4H5qa1o9qbC=+VJ+y6PGdoO-XWV3QNtNxkwCWC2ZTw@mail.gmail.com>
Message-ID: <CALCETrXb4H5qa1o9qbC=+VJ+y6PGdoO-XWV3QNtNxkwCWC2ZTw@mail.gmail.com>
To: oss security list <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-1087: KVM incorrectly handles #DB exceptions while deferred
 by MOV SS/POP SS

On x86, MOV SS and POP SS behave strangely if they encounter a data
breakpoint.  If this occurs in a KVM guest, KVM incorrectly thinks that a
#DB instruction was caused by the undocumented ICEBP instruction.  This
results in #DB being delivered to the guest kernel with an incorrect RIP on
the stack.  On most guest kernels, this will allow a guest user to DoS the
guest kernel or even to escalate privilege to that of the guest kernel.

Fixed upstream by commit 32d43cd391ba ("kvm/x86: fix icebp instruction
handling").

If you are running a guest OS that runs untrusted userspace code and you
are forced to run on an unpatched host, you may be able to mitigate this
issue by inserting 15 consecutive NOP instructions in your SYSCALL64 and
SYSCALL32 entry points as well as in your IDT vectors 3 and 4.  I am
hesitant to submit such a patch for upstream Linux, since the bug is
clearly a KVM bug and is now fixed.

Discovered by me.  A PoC can be found here:

https://lkml.kernel.org/r/67e08b69817171da8026e0eb3af0214b06b4d74f.1525800455.git.luto@kernel.org/67e08b69817171da8026e0eb3af0214b06b4d74f.1525800455.git.luto@kernel.org

Thank you to Paolo Bonzini and Linus Torvalds for handling most of the
technical bits of this bug.
