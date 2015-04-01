X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1419" "Wednesday" "1" "April" "2015" "14:51:29" "-0700" "Andrew Lutomirski" "luto@kernel.org" "<CAObL_7Hkuoz12CkEfMwpwPqjAxRqEWNMYw8QSNL+Zs6geMEUfw@mail.gmail.com>" "31" "[oss-security] CVE Request: Linux mishandles int80 fork from 64-bit tasks" nil nil nil "4" "2015040121:51:29" "[oss-security] CVE Request: Linux mishandles int80 fork from 64-bit tasks" (number mark "        luto@kernel. Apr  1   31/1419  " thread-indent "\"[oss-security] CVE Request: Linux mishandles int80 fork from 64-bit tasks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21665 invoked by uid 550); 2 Apr 2015 05:20:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29811 invoked from network); 1 Apr 2015 21:52:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:from:date:message-id:subject:to:content-type;
        bh=rpbL7jn+/yXnZVsi8TxspyvLYlakmIhT6U5YItOlQgU=;
        b=m9Vls4T7jG1adOpnOkPLHiLeZtTwwWrXsl2PBLK3+85H3VGpNuKoZnT1twB2NSIRJQ
         uUVv6rRVnnxOJNzHM5K8hwkFOo1iI+x8EntCW0LY9ItcvPbxGqF2SBOGXKH80EJEhNks
         ic0xT2JQnB2p7mW2LXZ87LG5tyL3I1p4nVnRxj9X1Dmw5epoPaz+Zb2tF8TTmqeDhR5J
         BXdTyNSBrjNZSvO4flsQ8K6dV4iIYLmWfQoExmmeL/XKG4W91pnjW0yNGjmhjTAZsGaP
         RQ/I3LP6iB5+lWvmVKIGswMu8oeq9RMx+8NuBotkD+JBb/ybjmdWW7eE4mKcH0HOlWys
         jubg==
X-Received: by 10.107.15.129 with SMTP id 1mr3311566iop.20.1427925109414; Wed,
 01 Apr 2015 14:51:49 -0700 (PDT)
MIME-Version: 1.0
X-Google-Sender-Auth: 9TZKBsjhblrEn-ryVAx61Sn9Bgw
Message-ID: <CAObL_7Hkuoz12CkEfMwpwPqjAxRqEWNMYw8QSNL+Zs6geMEUfw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 1 Apr 2015 14:51:29 -0700
From: Andrew Lutomirski <luto@kernel.org>
Reply-To: oss-security@lists.openwall.com
Sender: amluto@gmail.com
Subject: [oss-security] CVE Request: Linux mishandles int80 fork from 64-bit tasks
To: oss-security@lists.openwall.com

On unpatched x86_64 Linux with 32-bit emulation enabled, calling
fork(2) or close(2) using int $0x80 in a 64-bit task could return back
to user space in the new task using ret_from_sys_call.  That's
inappropriate for an int80 entry, and, if nothing else forced a
slow-path syscall return, the kernel would execute SYSRETL.

That would likely break the calling process, since it would
incorrectly return in long mode (i.e. CS would have the wrong value).
This particular failure has no security implications.

There's another problem, though: setup_thread_stack would propagate
TS_COMPAT (i.e. the indication that the task is in a 32-bit syscall)
to the child, and nothing would clear that bit.  This violates a
general invariant that tasks executing in user mode never have
TS_COMPAT set.

The user task could then do a normal 64-bit syscall, and
is_compat_task() would incorrectly return true.  I don't see any
direct way to escalate privileges as a result, but Ingo Molnar pointed
out that this affects syscall_get_arch.  As a result, both seccomp and
audit could misinterpret the offending syscall, with possibly
dangerous results depending on configuration.

I suspect that this could be used to break out of certain seccomp
sandboxes on kernels older than 3.16.

The upstream fix is here:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=956421fbb74c3a6261903f3836c0740187cf038b

--Andy
