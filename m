X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9298" "Wednesday" "22" "July" "2015" "11:12:00" "-0700" "Andy Lutomirski" "luto@amacapital.net" "<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" "190" "[oss-security] Linux x86_64 NMI security issues" nil nil nil "7" "2015072218:12:00" "[oss-security] Linux x86_64 NMI security issues" (number mark "        luto@amacapi Jul 22  190/9298  " thread-indent "\"[oss-security] Linux x86_64 NMI security issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11596 invoked by uid 550); 22 Jul 2015 18:12:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11467 invoked from network); 22 Jul 2015 18:12:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=QHFZvZYknxFjn/8iCuQE2ZH/ZQokusdjrm/235Db+nQ=;
        b=UjBQbJUtCiDzl8qgypFJ5IaZktso+7xUazFJY7quXnKwvEJenAhE7nHjPIdtrZwUDo
         7z0XbMWQupqZ3fxdkCPLHb/Da/twbjZnhNraHyIK/L4Fuhc/1YmE5bcMA6ixxYR1Jl8V
         NOSqXzm7d/maYdX64Yx7hxgC0xluTO64cmFukr7kQTKr9w0TFuCgpetGKt99p6KVsCjh
         bwi3d3m5T5EHlWUV1xm3qSWuhwnLmT8evqxnjlVd9ag5u407494qBk8HoQcnS2Z1HjHx
         tNvnv3YLmOXTf+ylqwif42ziiGB3iCz/deTS3fwpmXm/uNIrpqNpLYA4AECVxlkvJa6u
         9LYw==
X-Gm-Message-State: ALoCoQk8W6PDethiGWdPCkMUgNNjjT7OnqDChbgQ/2YExRRn5+Tf91OaQJBRPi7OdGEDQWa5QHPp
X-Received: by 10.112.35.229 with SMTP id l5mr3686449lbj.0.1437588739877; Wed,
 22 Jul 2015 11:12:19 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a11c36c402d0346051b7ab681
Date: Wed, 22 Jul 2015 11:12:00 -0700
From: Andy Lutomirski <luto@amacapital.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux x86_64 NMI security issues
To: oss security list <oss-security@lists.openwall.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>

--001a11c36c402d0346051b7ab681
Content-Type: text/plain; charset=UTF-8

x86 has a woefully poorly designed NMI mechanism.  Linux uses it for
profiling.  The tricks that keep NMIs from nesting improperly are
complicated, as are the tricks that try to handle things like NMI
watchdogs and physical buttons without proper status registers.  On
x86_64 it's particularly bad due to a nasty interaction with SYSCALL.

Perhaps unsurprisingly, the implementation was incorrect in a few corner cases.

+++++ CVE-2015-3291 +++++

Malicious user code can cause some fraction of NMIs to be ignored.
(Off the top of my head, it might work 25% of the time.)  This happens
when user code points RSP to the kernel's NMI stack and executes
SYSCALL.  An NMI that occurs before the kernel updates RSP or that
occurs between when the kernel restores RSP and executes SYSRET will
take the wrong code path through the NMI handler and be ignored.

This has probably existed since Linux 3.3.  The impact is extremely
low.  Fixed by:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=810bc075f78ff2c221536eb3008eac6a492dba2d

+++++ CVE-2015-5157 +++++

Petr Matousek and I discovered that an NMI that interrupts userspace
and encounters an IRET fault is incorrectly handled.  Symptoms range
from an OOPS to possible corruption or privilege escalation.  I
haven't verified how much corruption is possible or on what kernel
versions it occurs.  Some form of crash is likely in principle since
3.3, and it can be triggered by the attached exploit on 3.13 or newer,
I believe.

On kernels that are patched for BadIRET and have a fixup_bad_iret
function (which should be most kernels that are keeping up with
low-level security issues), there are two cases.

Case 1a (more up-to-date kernels where INTERRUPT_RETURN is "jmp
irq_return"): fixup_bad_iret will be invoked and will attempt to
recover.  There's a narrow window in which a new NMI will cause
corruption, in which case all bets are off.  That could hang, crash,
or possibly be exploited for privilege escalation.

Case 1b (less up-to-date kernels where INTERRUPT_RETURN is "iretq"):
The kernel will try to OOPS due to a bad kernel fault, except that the
OOPS will be processed with the wrong gsbase.  This is basically the
BadIRET condition, and is probably exploitable using similar
techniques to BadIRET.

Case 2 (kernels that are not patched for BadIRET): I didn't analyze
it.  BadIRET is a much worse vulnerability and you should fix it.  If
you have just the minimal BadIRET fix but not fixup_bad_iret, the
impact is probably similar to Case 1a except that the window for
corruption is much larger.

On some of these kernels, it can take quite a while for the exploit to
do anything.

Mitigations: Use seccomp to disable perf_event_open or modify_ldt or
run with only a single CPU.  To my knowledge, this cannot be exploited
on single-processor systems or in single-threaded applications.

Fixed by:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=9b6e6a8334d56354853f9c255d1395c2ba570e0a

Alternatively worked around by:

https://git.kernel.org/cgit/linux/kernel/git/luto/linux.git/commit/?h=x86/nmi&id=59ab8e572e5f65289822f3cedfcdf857f43f7c74

although the latter patch is incompatible with Xen.

+++++ NMI bug, no CVE assigned +++++

On a kernel with the first of the two patches above but not the
second, the attached CVE-2015-5157 exploit can cause severe log spam.

I don't think this fundamentally depends on the first of the patches,
but I haven't been able to reproduce it without that patch.  On the
other hand, I haven't tried that hard.

+++++ CVE-2015-3290 +++++

High impact NMI bug on x86_64 systems 3.13 and newer, embargoed.  Also fixed by:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=9b6e6a8334d56354853f9c255d1395c2ba570e0a

The other fix (synchronous modify_ldt) does *not* fix CVE-2015-3290.

You can mitigate CVE-2015-3290 by blocking modify_ldt or
perf_event_open using seccomp.  A fully-functional, portable, reliable
exploit is privately available and will be published in a week or two.
*Patch your systems*


Note: Several of these fixes each depend on a few patches immediately
before them.  The NMI stack switching fix also depends on changes made
in 4.2 and will appear to apply but crash on older kernels.  I have a
different variant that's more portable.

-- 
Andy Lutomirski
AMA Capital Management, LLC

--001a11c36c402d0346051b7ab681
Content-Type: text/x-csrc; charset=US-ASCII; name="CVE-2015-5157.c"
Content-Disposition: attachment; filename="CVE-2015-5157.c"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_icexvgh20

LyoKICogQ29weXJpZ2h0IChjKSAyMDE1IEFuZHJldyBMdXRvbWlyc2tpCiAq
IEdQTCB2MgogKgogKiBFeHBsb2l0IGZvciBDVkUtMjAxNS01MTU3LCBhIGRl
bmlhbCBvZiBzZXJ2aWNlLgogKiBCdWlsZCB3aXRoOgogKiAgIGdjYyAtbTMy
IC1PMiAtbyBDVkUtMjAxNS01MTU3IENWRS0yMDE1LTUxNTcuYyAtcHRocmVh
ZAogKgogKiBSdW4gaXQgYW5kIGZvbGxvdyBkaXJlY3Rpb25zLgogKi8KCiNk
ZWZpbmUgX0dOVV9TT1VSQ0UKCiNpbmNsdWRlIDxzeXMvdGltZS5oPgojaW5j
bHVkZSA8dGltZS5oPgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxz
eXMvc3lzY2FsbC5oPgojaW5jbHVkZSA8dW5pc3RkLmg+CiNpbmNsdWRlIDxz
dGRpby5oPgojaW5jbHVkZSA8c3RyaW5nLmg+CiNpbmNsdWRlIDxpbnR0eXBl
cy5oPgojaW5jbHVkZSA8c3lzL21tYW4uaD4KI2luY2x1ZGUgPHN5cy9zaWdu
YWwuaD4KI2luY2x1ZGUgPHN5cy91Y29udGV4dC5oPgojaW5jbHVkZSA8YXNt
L2xkdC5oPgojaW5jbHVkZSA8ZXJyLmg+CiNpbmNsdWRlIDxzZXRqbXAuaD4K
I2luY2x1ZGUgPHB0aHJlYWQuaD4KI2luY2x1ZGUgPGxpbnV4L2Z1dGV4Lmg+
CiNpbmNsdWRlIDxlcnJuby5oPgoKc3RhdGljIHZvaWQgc2V0X2NzKHVuc2ln
bmVkIHNob3J0IGNzKQp7CiNpZmRlZiBfX3g4Nl82NF9fCglhc20gdm9sYXRp
bGUgKAoJCSIgICBwdXNocQklMAkJXG5cdCIKCQkiICAgY2FsbAkxZgkJXG5c
dCIKCQkiMTogYWRkcQkkMmYtMWIsICglJXJzcCkJXG5cdCIKCQkiICAgbHJl
dHEJCQlcblx0IgoJCSIyOiIKCQk6IDogInIiIChjcykpOwojZWxzZQoJYXNt
IHZvbGF0aWxlICgKCQkiICAgcHVzaGwJJTAJCVxuXHQiCgkJIiAgIGNhbGwJ
MWYJCVxuXHQiCgkJIjE6IGFkZGwJJDJmLTFiLCAoJSVlc3ApCVxuXHQiCgkJ
IiAgIGxyZXRsCQkJXG5cdCIKCQkiMjoiCgkJOiA6ICJyIiAoKHVuc2lnbmVk
IGludCljcykpOwojZW5kaWYKfQoKc3RhdGljIHZvaWQgc2V0aGFuZGxlcihp
bnQgc2lnLCB2b2lkICgqaGFuZGxlcikoaW50LCBzaWdpbmZvX3QgKiwgdm9p
ZCAqKSwKCQkgICAgICAgaW50IGZsYWdzKQp7CglzdHJ1Y3Qgc2lnYWN0aW9u
IHNhOwoJbWVtc2V0KCZzYSwgMCwgc2l6ZW9mKHNhKSk7CglzYS5zYV9zaWdh
Y3Rpb24gPSBoYW5kbGVyOwoJc2Euc2FfZmxhZ3MgPSBTQV9TSUdJTkZPIHwg
ZmxhZ3M7CglzaWdlbXB0eXNldCgmc2Euc2FfbWFzayk7CglpZiAoc2lnYWN0
aW9uKHNpZywgJnNhLCAwKSkKCQllcnIoMSwgInNpZ2FjdGlvbiIpOwoKfQoK
c3RhdGljIHZvaWQgc2V0X2xkdCh2b2lkKQp7Cgljb25zdCBzdHJ1Y3QgdXNl
cl9kZXNjIGRlc2MgPSB7CgkJLmVudHJ5X251bWJlciAgICA9IDAsCgkJLmJh
c2VfYWRkciAgICAgICA9IDAsCgkJLmxpbWl0ICAgICAgICAgICA9IDB4ZmZm
ZmYsCgkJLnNlZ18zMmJpdCAgICAgICA9IDEsCgkJLmNvbnRlbnRzICAgICAg
ICA9IDIsIC8qIENvZGUsIG5vdCBjb25mb3JtaW5nICovCgkJLnJlYWRfZXhl
Y19vbmx5ICA9IDAsCgkJLmxpbWl0X2luX3BhZ2VzICA9IDEsCgkJLnNlZ19u
b3RfcHJlc2VudCA9IDAsCgkJLnVzZWFibGUgICAgICAgICA9IDAKCX07CgoJ
aWYgKHN5c2NhbGwoU1lTX21vZGlmeV9sZHQsIDEsICZkZXNjLCBzaXplb2Yo
ZGVzYykpICE9IDApCgkJZXJyKDEsICJtb2RpZnlfbGR0Iik7Cn0KCnN0YXRp
YyB2b2lkIGNsZWFyX2xkdCh2b2lkKQp7Cgljb25zdCBzdHJ1Y3QgdXNlcl9k
ZXNjIGRlc2MgPSB7fTsKCWlmIChzeXNjYWxsKFNZU19tb2RpZnlfbGR0LCAx
LCAmZGVzYywgc2l6ZW9mKGRlc2MpKSAhPSAwKQoJCWVycigxLCAibW9kaWZ5
X2xkdCIpOwp9CgpzdGF0aWMgam1wX2J1ZiBqbXBidWY7CnN0YXRpYyB2b2xh
dGlsZSB1bnNpZ25lZCBpbnQgZnR4OwoKc3RhdGljIHZvaWQgc2lnc2Vndihp
bnQgc2lnLCBzaWdpbmZvX3QgKmluZm8sIHZvaWQgKmN0eF92b2lkKQp7Cglp
ZiAoZnR4ID09IDEpIHsKCQlwcmludGYoIlVuZXhwZWN0ZWQgU0VHVlxuIik7
CgkJX2V4aXQoMSk7Cgl9CgoJc2lnbG9uZ2ptcChqbXBidWYsIDEpOwp9Cgpz
dGF0aWMgdm9pZCAqdGhyZWFkcHJvYyh2b2lkICpjdHgpCnsKCWNwdV9zZXRf
dCBjcHVzZXQ7CglDUFVfWkVSTygmY3B1c2V0KTsKCUNQVV9TRVQoMSwgJmNw
dXNldCk7CglpZiAoc2NoZWRfc2V0YWZmaW5pdHkoMCwgc2l6ZW9mKGNwdXNl
dCksICZjcHVzZXQpICE9IDApIHsKCQlpZiAoZXJybm8gPT0gRUlOVkFMKQoJ
CQllcnJ4KDEsICJGYWlsZWQgdG8gYmluZCB0byBDUFUgMSAtLSBtYWtlIHN1
cmUgeW91IGhhdmUgYXQgbGVhc3QgdHdvIENQVXNcbiIpOwoJCWVycigxLCAi
c2NoZWRfc2V0YWZmaW5pdHkgdG8gQ1BVIDEiKTsKCX0KCgl3aGlsZSAoMSkg
ewoJCXN5c2NhbGwoU1lTX2Z1dGV4LCAmZnR4LCBGVVRFWF9XQUlULCAwLCBO
VUxMLCBOVUxMLCAwKTsKCQl3aGlsZSAoZnR4ICE9IDIpCgkJCTsKCQljbGVh
cl9sZHQoKTsKCQlmdHggPSAwOwoJfQp9CgppbnQgbWFpbihpbnQgYXJnYywg
Y2hhciAqKmFyZ3YpCnsKCXB0aHJlYWRfdCB0aHJlYWQ7CgoJcHJpbnRmKCJU
aGlzIHRlc3QgcnVucyBmb3JldmVyLiAgUHJlc3MgQ3RybC1DIGlmIHlvdSBn
ZXQgYm9yZWQuXG4iCgkgICAgICAgIklmIG5vdGhpbmcgaGFwcGVucywgdGhl
biBlaXRoZXIgeW91ciBrZXJuZWwgaXMgb2theVxuIgoJICAgICAgICJvciB5
b3UgZGlkbid0IGFidXNlIHBlcmYgYXBwcm9wcmlhdGVseS5cbiIKCSAgICAg
ICAiUnVuIG1lIHVuZGVyIGhlYXZ5IHBlcmYgbG9hZC4gIEZvciBleGFtcGxl
OlxuIgoJICAgICAgICJwZXJmIHJlY29yZCAtbyAvZGV2L251bGwgLWUgY3lj
bGVzIC1lIGluc3RydWN0aW9ucyAtYyAxMDAwMCAlc1xuIiwgYXJndlswXSk7
CgoJaWYgKHB0aHJlYWRfY3JlYXRlKCZ0aHJlYWQsIDAsIHRocmVhZHByb2Ms
IDApICE9IDApCgkJZXJyKDEsICJwdGhyZWFkX2NyZWF0ZSIpOwoKCWNwdV9z
ZXRfdCBjcHVzZXQ7CglDUFVfWkVSTygmY3B1c2V0KTsKCUNQVV9TRVQoMCwg
JmNwdXNldCk7CglpZiAoc2NoZWRfc2V0YWZmaW5pdHkoMCwgc2l6ZW9mKGNw
dXNldCksICZjcHVzZXQpICE9IDApCgkJZXJyKDEsICJzY2hlZF9zZXRhZmZp
bml0eSB0byBDUFUgMCIpOwoKCXNldGhhbmRsZXIoU0lHU0VHViwgc2lnc2Vn
diwgMCk7CglzaWdzZXRqbXAoam1wYnVmLCAxKTsKCQoJd2hpbGUgKGZ0eCAh
PSAwKQoJCTsKCXNldF9sZHQoKTsKCiNpZmRlZiBfX3g4Nl82NF9fCi8vIFdl
IGNhbid0IGFkZCBhIDY0LWJpdCBjb2RlIHNlZ21lbnQgdG8gdGhlIExEVAoj
ZXJyb3IgQnVpbGQgYXMgMzItYml0CiNlbmRpZgoKCWZ0eCA9IDE7CglzeXNj
YWxsKFNZU19mdXRleCwgJmZ0eCwgRlVURVhfV0FLRSwgMCwgTlVMTCwgTlVM
TCwgMCk7CgoJc2V0X2NzKDB4Nyk7CgoJZnR4ID0gMjsKCgl3aGlsZSAoMSkK
CQk7Cn0K

--001a11c36c402d0346051b7ab681--
