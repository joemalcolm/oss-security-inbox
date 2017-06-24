X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7361" "Saturday" "24" "June" "2017" "11:15:04" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20170624151504.GA25902@grsecurity.net>" "216" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^Cc:" nil nil "6" "2017062415:15:04" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        spender@grse Jun 24  216/7361  " thread-indent "\"[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12142 invoked by uid 550); 24 Jun 2017 15:34:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28068 invoked from network); 24 Jun 2017 15:15:17 -0000
Message-ID: <20170624151504.GA25902@grsecurity.net>
References: <20170624005003.GB27479@grsecurity.net>
 <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="M9NhX3UHpAaciwkO"
Content-Disposition: inline
In-Reply-To: <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com, pageexec@freemail.hu
Date: Sat, 24 Jun 2017 11:15:04 -0400
From: Brad Spengler <spender@grsecurity.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an
 ignored Secure Boot bypass / rootkit method
To: Linus Torvalds <torvalds@linux-foundation.org>

--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 23, 2017 at 06:04:00PM -0700, Linus Torvalds wrote:
> On Fri, Jun 23, 2017 at 5:50 PM, Brad Spengler <spender@grsecurity.net> w=
rote:
> >
> > BTW, we're happy to go toe-to-toe with you here in public on actual fac=
ts
> > instead of pathetic ad hominems.
>=20

Linus,

Are you backing down from providing any actual facts from your claims? (Wou=
ldn't
be the first time) Let me provide some facts then.

https://grsecurity.net/~spender/stack_gap_fix.txt
(and since posting just the URL isn't enough):
Pulled in the 4.11 upstream fixes for the stack gap problem:

Unmerged paths:
  (use "git add <file>..." to mark resolution)

	both modified:   arch/arm/mm/mmap.c
	both modified:   arch/frv/mm/elf-fdpic.c
	both modified:   arch/mips/mm/mmap.c
	both modified:   arch/powerpc/mm/slice.c
	both modified:   arch/sh/mm/mmap.c
	both modified:   arch/sparc/kernel/sys_sparc_64.c
	both modified:   arch/sparc/mm/hugetlbpage.c
	both modified:   arch/x86/kernel/sys_x86_64.c
	both modified:   arch/x86/mm/hugetlbpage.c
	both modified:   fs/hugetlbfs/inode.c
	both modified:   mm/mmap.c

Huh, this sure is a whole lot of merge conflicts, generally only
happens when someone's copy+pasting code and renaming things.
Let's take a look at some of these rejects (HEAD is PaX, the ugly vm_start_=
gap
is the upstream fix):

fs/hugetlbfs/inode.c:
<<<<<<< HEAD
                if (TASK_SIZE - len >=3D addr && check_heap_stack_gap(vma, =
addr, len))
=3D=3D=3D=3D=3D=3D=3D
                if (TASK_SIZE - len >=3D addr &&
                    (!vma || addr + len <=3D vm_start_gap(vma)))
>>>>>>> 9f3069116ed29013d0eb89e02def9effb038f850

arch/arm/mm/mmap.c:
<<<<<<< HEAD
                if (TASK_SIZE - len >=3D addr && check_heap_stack_gap(vma, =
addr, len))
=3D=3D=3D=3D=3D=3D=3D
                if (TASK_SIZE - len >=3D addr &&
                    (!vma || addr + len <=3D vm_start_gap(vma)))
>>>>>>> 9f3069116ed29013d0eb89e02def9effb038f850

arch/sh/mm/mmap.c:
<<<<<<< HEAD
                if (TASK_SIZE - len >=3D addr && check_heap_stack_gap(vma, =
addr, len))
=3D=3D=3D=3D=3D=3D=3D
                if (TASK_SIZE - len >=3D addr &&
                    (!vma || addr + len <=3D vm_start_gap(vma)))
>>>>>>> 9f3069116ed29013d0eb89e02def9effb038f850

arch/x86/kernel/sys_x86_64.c:
<<<<<<< HEAD
                if (end - len >=3D addr && check_heap_stack_gap(vma, addr, =
len))
=3D=3D=3D=3D=3D=3D=3D
                if (end - len >=3D addr &&
                    (!vma || addr + len <=3D vm_start_gap(vma)))
>>>>>>> 9f3069116ed29013d0eb89e02def9effb038f850

arch/powerpc/mm/slice.c:
<<<<<<< HEAD
        return check_heap_stack_gap(vma, addr, len);
=3D=3D=3D=3D=3D=3D=3D
        return (!vma || (addr + len) <=3D vm_start_gap(vma));
>>>>>>> 9f3069116ed29013d0eb89e02def9effb038f850

arch/frv/mm/elf-fdpic.c:
<<<<<<< HEAD
                if (TASK_SIZE - len >=3D addr && check_heap_stack_gap(vma, =
addr, len))
=3D=3D=3D=3D=3D=3D=3D
                if (TASK_SIZE - len >=3D addr &&
                    (!vma || addr + len <=3D vm_start_gap(vma)))
>>>>>>> 9f3069116ed29013d0eb89e02def9effb038f850

arch/mips/mm/mmap.c:
<<<<<<< HEAD
                if (TASK_SIZE - len >=3D addr && check_heap_stack_gap(vma, =
addr, len))
=3D=3D=3D=3D=3D=3D=3D
                if (TASK_SIZE - len >=3D addr &&
                    (!vma || addr + len <=3D vm_start_gap(vma)))
>>>>>>> 9f3069116ed29013d0eb89e02def9effb038f850

(the rest are all the same kinds of rejects)

Let's look at our check_heap_stack_gap():

bool check_heap_stack_gap(const struct vm_area_struct *vma, unsigned long a=
ddr, unsigned long len)
{
        if (!vma) {
#ifdef CONFIG_STACK_GROWSUP
                if (addr > sysctl_heap_stack_gap)
                        vma =3D find_vma(current->mm, addr - sysctl_heap_st=
ack_gap);
                else
                        vma =3D find_vma(current->mm, 0);
                if (vma && (vma->vm_flags & VM_GROWSUP))
                        return false;
#endif
                return true;
        }

        if (addr + len > vma->vm_start)
                return false;

        if (vma->vm_flags & VM_GROWSDOWN)
                return sysctl_heap_stack_gap <=3D vma->vm_start - addr - le=
n;
#ifdef CONFIG_STACK_GROWSUP
        else if (vma->vm_prev && (vma->vm_prev->vm_flags & VM_GROWSUP))
                return addr - vma->vm_prev->vm_end >=3D sysctl_heap_stack_g=
ap;
#endif

        return true;
}

Amazing, it took them 4 whole weeks just to rip off PaX's fix from 2010.

So Linus, you called the patches garbage when someone asked how we fixed th=
e heap
stack gap issue 7 years ago when you failed to.  Can you provide any techni=
cal details
demonstrating why that fix is garbage, the fix that looks very similar in f=
orm and
function to what's present upstream now finally (in some of the kernels at =
least, and
minus ours being configurable and cleaner)?
Can you explain how our fix breaks userland and how your 2010 fix didn't?

If not, I'd suggest you keep your lies and FUD to yourself.  No one but lac=
keys for
your cult of personality are buying it.  You and others trot out the same o=
ld tired
excuse about "breaking userland" and never offer up any real facts.  If it =
were the
case, it wouldn't be possible to run grsec on anything but distros with rec=
ompiled
userland, and yet we work just fine on any distro.  It's a meaningless crut=
ch for
people apparently have never looked at any kernel code of ours who refuse t=
o accept
the simple facts:
1) You're not security experts
2) You view security as an annoyance
3) The Linux kernel's security track record is terrible

It's the only way they can justify it in their minds -- the problem surely =
can't
be that you've ignored the problem for years and lied to people telling the=
m it's
the best that can be done.  When some outside group proves you wrong, you h=
ave to
pretend there's no way you could have done what they did, because you care =
so much
about code quality.  How can you explain the verbatim copy+pasting of our c=
ode if
that's the case?  Please explain to the world how if our code is such garba=
ge, you
haven't been able to come up with any significant security improvements wit=
hout it?

Put up or shut up, for once.

> Please.
Please.

-Brad

--M9NhX3UHpAaciwkO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJZToHxAAoJEETRwPglJf5J3WgQAJQBfZxvTipJjpl/fUREkkz9
1rIXIAxEc5Oz9ACEPvy8oT6Fn/GgbHbdJktf5uatHpi4qsFLt9TCEWYhXNlFHW8k
zwraEZw9drpmn9SuJZPUb40H3nDGUdU0vPp2wkcvow9KXz32q4f22iF1AHfuXsUJ
Em5qHaFlHA2XeKcQBdZVtnPKfBSyluQfxb/ClhVdfkpGLeGJ9DA2gcEHZxv+SETw
wgH2wcOWMMw4fd2NJdOZ3Bzv25fR8a1EO7ISWqHW9O2u+J9xC2SUSd1bWelgLSWr
n2rqh4fGR6wykIL4PIWrofSFFsq+PAspR1goCInaVidlDL67z0BkVF53TYB/Fv3y
Bau+sQkV78jnt073OpQ+ld2V/rqo9HO9ZQqO0JrxE7X7WopAHk7LJhN4dQd9cuz4
QiBPQBW5qIgHNAY8KgOemTeat3ZgKQjrj0seAF1FZnusLlbDU1ePjTq9TvumzQFT
FS2tAzTxiT5rIY0eQYSdVaE0dK0PMf238jclAY99PTVPgN5rxd3xbcPHSf47vCYh
wXyia0ovKorWJjEk0IQpLqKgW9i6tl0NUckoJKxnuC9tnDxZVQ6NzmXJxabNSzfB
SlS7IqI7S2VwBk8kvqkCnx2OBNyYmPHt1b1SyEa8w9qObkeAy+cXJrfUgTxjjNks
096VTXHZpeNnW+x9xrpO
=08Xm
-----END PGP SIGNATURE-----

--M9NhX3UHpAaciwkO--
