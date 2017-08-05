X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8587" "Saturday" "5" "August" "2017" "07:04:17" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170805110417.GA10944@grsecurity.net>" "203" "Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()" "^Cc:" nil nil "8" "2017080511:04:17" "[oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()" (number mark "        spender@grse Aug  5  203/8587  " thread-indent "\"Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()\"\n") "<754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>" ("<465481173.38534111.1501765671454.JavaMail.zimbra@redhat.com>" "<754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21674 invoked by uid 550); 5 Aug 2017 11:09:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17491 invoked from network); 5 Aug 2017 11:04:29 -0000
Message-ID: <20170805110417.GA10944@grsecurity.net>
References: <465481173.38534111.1501765671454.JavaMail.zimbra@redhat.com>
 <754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
In-Reply-To: <754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: fulldisclosure@seclists.org, bugtraq@securityfocus.com
Date: Sat, 5 Aug 2017 07:04:17 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between
 inotify_handle_event() and sys_rename()
To: oss-security@lists.openwall.com

--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This bothers me, and since nobody else has bothered to ask, I'll chime in:
Can someone please clear up this timeline for me?

We have:
(nearly a month ago) 7/7/2017 Silent upstream fix for vulnerability, no=20
stable cc, no backports performed, no distro fixes.

Possibly before this, possibly after (please clarify) there is some=20
academic research regarding the vulnerability.  Did these researchers
report the vulnerability to security@kernel.org?

Possibly before this, possibly after (please clarify) there is an exploit=20
"in the wild" but which I have not been able to find publicly easily.=20=20
Does "in the wild" here mean it's being actively exploited?  When was the=20
existence of this exploit first known?  Who discovered it?

Was this vulnerability embargoed?  Did the researchers request a one month
embargo?  For what reason?  Why are we hearing about a vulnerability
with an exploit "in the wild" a month after it was public knowledge to
attackers?

Thanks,
-Brad


On Thu, Aug 03, 2017 at 10:00:02AM -0400, Vladis Dronov wrote:
> Hello,
>=20
> A race condition was found in Linux kernel present since v3.14-rc1 upto v=
4.12
> including. The race happens between threads of inotify_handle_event() and
> vfs_rename() while running the rename operation against the same file. Th=
e next
> slab data or the slab's free list pointer can be corrupted with attacker-=
controlled
> data as a result of the race.
>=20
> The researchers of this flaw are Fan Wu and Shixiong Zhao from a research=
 group
> supervised by Dr. Heming Cui of the Department of Computer Science, The U=
niversity
> of Hong Kong. Thanks to Rui Gu and Prof. Junfeng Yang from Columbia Unive=
rsity for
> tools and suggestions.
>=20
> References:
>=20
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1468283
>=20
> https://access.redhat.com/security/vulnerabilities/3112931
>=20
> https://patchwork.kernel.org/patch/9755753/
>=20
> https://patchwork.kernel.org/patch/9755757/
>=20
> An upstream patch:
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D49d31c2f389acfe83417083e1208422b4091cd9
>=20
> So as for the flaw itself.
>=20
> There is quite easily reached race condition between inotify_handle_event=
() and
> sys_rename(). A rename thread can change the dentry name before an fsnoti=
fy
> thread is copying the dentry name but after a memory for this is allocate=
d:
>=20
> CPU 1                          CPU 2
>=20
> fsnotify()
>   inotify_handle_event(.., file_name)
>     strlen(file_name)  // file_name is "foobar"
>     alloc_len +=3D len + 1;
>     event =3D kmalloc(alloc_len, GFP_KERNEL); // 7 bytes for the file_name
>=20
>                                sys_rename()
>                                  __d_move() [in fs/dcache.c]
>                                    copy_name()
>                                    // rename to "foobar_lol_kek_u_pwned"
>=20
>     strcpy(event->name, file_name);
>     // now file_name points to "foobar_lol_kek_u_pwned"
>     // but there is a space only for "foobar\0"
>     // the next slab or slab's *freelist is corrupted with user controlle=
d data
>=20
> There is a working exploit allowing privileges escalation in the wild for=
 32 bit
> kernels. We are unaware of such exploit for 64 bit kernels, but these are=
 affected
> by this race too and we believe such an exploit could exist.
>=20
> The result of exploiting the flaw is modified data after the slab, which =
can be
> the next slab data, freelist pointer or something else (if the slab is th=
e last
> one in the cache).
>=20
> The slab corruption caused by the exploit or the reproducer cat be easily=
 seen
> with "slub_debug=3DFZ" kernel parameter. The following log indicates a wr=
ite beyond
> the allocated slab, in this case a write to the slab's red zone:
>=20
> [  144.109993] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> [  144.110011] BUG kmalloc-64 (Not tainted): Redzone overwritten
> [  144.110011] ----------------------------------------------------------=
-------------------
> [  144.110011] Disabling lock debugging due to kernel taint
> [  144.110011] INFO: 0xffff8800bbb544f0-0xffff8800bbb544f7. First byte 0x=
33 instead of 0xcc
> [  144.110011] INFO: Slab 0xffffea0002eed500 objects=3D51 used=3D23 fp=3D=
0xffff8800bbb54d70 flags=3D0x5fffff00000081
> [  144.110011] INFO: Object 0xffff8800bbb544b0 @offset=3D1200 fp=3D0xffff=
8800bbb544b0
> [  144.110011]
> [  144.110011] Bytes b4 ffff8800bbb544a0: cc cc cc cc cc cc cc cc 00 00 0=
0 00 00 00 00 00  ................
> [  144.110011] Object ffff8800bbb544b0: b0 44 b5 bb 00 88 ff ff b0 44 b5 =
bb 00 88 ff ff  .D.......D......
> [  144.110011] Object ffff8800bbb544c0: b8 78 62 bb 00 88 ff ff 20 00 00 =
08 00 00 00 00  .xb..... .......
> [  144.110011] Object ffff8800bbb544d0: 01 00 00 00 00 00 00 00 01 00 00 =
00 61 61 61 61  ............aaaa
> [  144.110011] Object ffff8800bbb544e0: 33 32 31 30 33 32 31 30 33 32 31 =
30 33 32 31 30  3210321032103210
> [  144.110011] Redzone ffff8800bbb544f0: 33 32 31 30 33 32 31 30         =
                 32103210
> [  144.110011] Padding ffff8800bbb544f8: 00 00 00 00 00 00 00 00         =
                 ........
> [  144.110011] CPU: 2 PID: 1016 Comm: inotify Tainted: G    B          --=
----------   3.10.0-514.16.1.el7.x86_64 #1
> [  144.110011] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIO=
S 1.9.3-1.fc25 04/01/2014
> [  144.110011]  ffff88007d801d00 0000000070c5e4c2 ffff88013bad7c08 ffffff=
ff816869c3
> [  144.110011]  ffff88013bad7c48 ffffffff811d9cad 0000000000000008 ffff88=
0000000001
> [  144.110011]  ffff8800bbb544f8 ffff88007d801d00 00000000000000cc ffff88=
00bbb544b0
> [  144.110011] Call Trace:
> [  144.110011]  [<ffffffff816869c3>] dump_stack+0x19/0x1b
> [  144.110011]  [<ffffffff811d9cad>] print_trailer+0x14d/0x200
> [  144.110011]  [<ffffffff811d9e9f>] check_bytes_and_report+0xcf/0x110
> [  144.110011]  [<ffffffff811dab33>] check_object+0x193/0x250
> [  144.110011]  [<ffffffff8168380f>] free_debug_processing+0xcc/0x259
> [  144.110011]  [<ffffffff81213130>] ? poll_select_copy_remaining+0x150/0=
x150
> [  144.110011]  [<ffffffff81244f9e>] ? inotify_free_event+0xe/0x10
> [  144.110011]  [<ffffffff81244f9e>] ? inotify_free_event+0xe/0x10
> [  144.110011]  [<ffffffff811dca30>] __slab_free+0x250/0x2f0
> [  144.110011]  [<ffffffff81213130>] ? poll_select_copy_remaining+0x150/0=
x150
> [  144.110011]  [<ffffffff8168ba60>] ? __schedule+0x3b0/0x990
> [  144.110011]  [<ffffffff81244f9e>] ? inotify_free_event+0xe/0x10
> [  144.110011]  [<ffffffff811dd173>] kfree+0x103/0x140
> [  144.110011]  [<ffffffff81244f9e>] inotify_free_event+0xe/0x10
> [  144.110011]  [<ffffffff81242b30>] fsnotify_destroy_event+0x30/0x50
> [  144.110011]  [<ffffffff81245424>] inotify_read+0x224/0x3e0
> [  144.110011]  [<ffffffff810b1b20>] ? wake_up_atomic_t+0x30/0x30
> [  144.110011]  [<ffffffff811fe61e>] vfs_read+0x9e/0x170
> [  144.110011]  [<ffffffff811ff1ef>] SyS_read+0x7f/0xe0
> [  144.110011]  [<ffffffff81214954>] ? SyS_poll+0x74/0x110
> [  144.110011]  [<ffffffff81697089>] system_call_fastpath+0x16/0x1b
> [  144.110011] FIX kmalloc-64: Restoring 0xffff8800bbb544f0-0xffff8800bbb=
544f7=3D0xcc
>=20
> Best regards,
> Vladis Dronov | Red Hat, Inc. | Product Security Engineer

--BOKacYhQ+x31HxR3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJZhaYqAAoJEETRwPglJf5JpjcP/0jiMrKLGkXZrBV1/IIK5Rpz
3Rm7ZIMGQdRKEJLAgcyRLEs/3i0XIeopg+wAebuLMlMei5hZPOANvfSBKINOTj5o
p/tSXYJGSIc8PwznGqC3+0ssa3UmzF+aTDbqfUAdfUzztM9fXIjnqHaPqXvp4ZHn
zdKD5adRvrNFsyTaA6g0N/A/jWZCnGPN+XMg6QX+yyiAlvFCb5t2KXEcsg1ua2ZY
xYx2mcaKoJwuFIGJDwQJjV3E25rArnw62cL5uXSPCm/BKGJ6t1LK3Kn9nBA5Jkoj
q5DL82t+kncVa16Nh6FTRmKTAY4gOjFZGWMCmiFf9DQNH3CfTdMJzTd+ipCd1Zuj
4HsKVosjD6yLMnyKxtovlTiT9IRdqw+0dtd6uBIk0zH5GXRK2gpjPOqlb74PKPdb
tw8mVwW1c+GVmyN41lmy+t6X+NlToqyzSOKOIB43uVhBQkxiOXfLvKN2kSqJKxll
P1Ax53eXq7bWwNYh6wxy/Dn6DEaLGbs8ZtSrqVogWoK5t7XwT5kt2SyjXNQPCH6J
qUH9ddsP7nEuHRdI8SAWIm2dC4naiP6WIZoZDmBy17uKQlURQlzcOWXzjVXDQdSl
DW+QQHIwLTagQNCZgWKWuCDwcwi2qnzavyg1UmUgUzKI+/l92AQ+XXmxPsPPgv2Z
U4QqtbFj4qqUgHMwOvrH
=xvfI
-----END PGP SIGNATURE-----

--BOKacYhQ+x31HxR3--
