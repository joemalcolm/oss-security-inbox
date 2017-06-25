X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7014" "Sunday" "25" "June" "2017" "11:55:26" "+0300" "Ariel Zelivansky" "ariel@twistlock.com" "<CAMgJUL1gMQSuUPrqjuu07=ewRv=tA4m+qjMa0snUqWRvD0F8OA@mail.gmail.com>" "165" "[oss-security] CVE-2017-9669 and CVE-2017-9671: Exploitable buffer overflows in apk (Alpine's package manager)" "^Date:" nil nil "6" "2017062508:55:26" "[oss-security] CVE-2017-9669 and CVE-2017-9671: Exploitable buffer overflows in apk (Alpine's package manager)" (number mark "U       ariel@twistl Jun 25  165/7014  " thread-indent "\"[oss-security] CVE-2017-9669 and CVE-2017-9671: Exploitable buffer overflows in apk (Alpine's package manager)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5753 invoked by uid 550); 25 Jun 2017 11:06:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32267 invoked from network); 25 Jun 2017 08:55:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=twistlock.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=3bX4WmZp2/hmHoku+I0o5omOgsJCmUnjLWnt1SQMM+g=;
        b=hdq8pDnsP3gM8NgOFNtjQ/xpQ+0k4kkSk6cjHN4QniMOmKLy7AlIN4peqBO+p+8+yV
         hnXaSeFKBwLmIplAgOu14Y9TzMdu1RlKkCMQBrkLBWp1x5u/jgHyibU4622zFJfG8JP+
         TAt2h+h3+92hSZNdEutJRG5BFHTgWENW/Qsd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3bX4WmZp2/hmHoku+I0o5omOgsJCmUnjLWnt1SQMM+g=;
        b=E17/zYw8FowEofLIjjvUeODXD9Fu0jCcw2dZsIO+ZJOvKTLnZ4mCoLhbv3MB1TQnns
         VE0kyIojAHSrhneXKwGNOvRNvHU+09ScdQZYphgaGLjcIHEBNPXBC5VVd2Wic34UXMZP
         1BhFl6reacyART7kZR96soYTzFLa9GZMi7AT3fN5g8Mg+4//S2rjuRogsannJ/cdKPsq
         tHF8mkKBr8CEwg5ZvOFigd6S3UZPuzIv+Tx7k5UIevXfsLeQZwEXz8C0G0PI0hLIuVhi
         Gd8hJMKBH64HYM15tjtoM38SB9h12nnjjADo508lc9No3HL837rQHZsNbUBckOSho/pE
         WKjQ==
X-Gm-Message-State: AKS2vOx3F3oHwSnpWlBYRQBer8twYo8a+RXxSSZFrWxr5aqVucUZBoFp
	6sfkwnjCldtXOgdn2bMa7meBuVPkFdSsCpdR9g==
X-Received: by 10.107.144.86 with SMTP id s83mr18812676iod.22.1498380927119;
 Sun, 25 Jun 2017 01:55:27 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAMgJUL1gMQSuUPrqjuu07=ewRv=tA4m+qjMa0snUqWRvD0F8OA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c055842e64b520552c4fe68"
Date: Sun, 25 Jun 2017 11:55:26 +0300
From: Ariel Zelivansky <ariel@twistlock.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-9669 and CVE-2017-9671: Exploitable buffer overflows in apk
 (Alpine's package manager)
To: oss-security@lists.openwall.com

--94eb2c055842e64b520552c4fe68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm a security researcher at Twistlock. I've recently found two heap
overflow vulnerabilities in apk (the package manager of Alpine Linux). With
either of these vulnerabilities I was able to achieve remote code execution
from a naive call to "apk update" (under some restrictions - i.e. no ASLR).
MITRE has assigned CVE-2017-9669 and CVE-2017-9671 for these issues.

I privately disclosed the issue with Timo Ter=C3=A4s (apk's maintainer) and=
 he
had already released fixes to solve these issues. The fixes are available
from apk-tools 2.7.2 and 2.6.9 and all alpine repositories back to
3.2-stable are updated with it (3.3-stable is actually the latest supported
version but Timo updated 3.2 too).

I've discussed the possibility of publicly disclosing the vulnerabilities
with Timo and he agreed to have this advisory published. A blog post with
similar details is to be posted on Twistlock's blog in the following days.

Find below the original disclosure (plus a reasonable disclaimer):

1. blob_realloc
---------------
The function blob_realloc (archive.c:136) accepts a pointer to apk_blob_t
and a size - of type int - and resizes the underlying buffer to size using
realloc. [0] Before calling realloc, it compares the current buffer size to
the requested size. If it is bigger or equal, it does not call realloc and
returns 0. See line 139:

if (b->len >=3D newsize) return 0;

This is generally OK as long as the code around it also expects size to be
a signed int.

1.1 longname overflow (CVE-2017-9669)
-------------------------------------

The function apk_tar_parse (archive.c:189) is used to parse a tar stream.
One of the tar block types is a longname (or "GNU long name extension", see
line 242). Consult the tar format standard to learn about block types. [1]
When dealing with a longname block apk_tar_parse calls blob_realloc with
the size read from the block header plus one byte for null terminator. See
line 243:

if (blob_realloc(&longname, entry.size+1)) goto err_nomem;

After the call to blob_realloc, the name buffer is copied from the stream
to the allocated buffer. See lines 244-246:

entry.name =3D longname.ptr;
is->read(is, entry.name, entry.size);
entry.name[entry.size] =3D 0;

When the stream is a gzipped tar (tar.gz) such as with update files for
apk, the read function of the stream results in gzi_read (gunzip.c:40).
gzi_read accepts a size of size_t. This is significant because size_t is
unsigned by definition. So let's see what happens when we have a negative
size - the call to blob_realloc will not do anything and return 0 (the
buffer pointer is not changed), and later the call to gzi_read will attempt
to copy a huge amount of bytes - i.e. a number from 0x80000000 to
0xffffffff bytes. If the result buffer (the allocated buffer) is not null,
the bytes will be read from the gzipped stream, resulting in an overflow of
that buffer.

Versions affected
-----------------

The call to blob_realloc was added in 2.5.0_rc1 (from commit
36d5b91495e22fe8425277f2d793fd4a284ee2b6). However it seems that all
versions before it (from the first commit to archive.c) may be vulnerable
to an integer overflow that could lead to a buffer overflow after a failing
call to malloc... However vulnerabilities in older versions is beyond the
scope of this advisory.

1.2 pax header overflow (CVE-2017-9671)
---------------------------------------

The latter is also possible with the call to blob_realloc with a block type
of a pax header. See line 292:

if (blob_realloc(&pax, (paxlen + 511) & -512)) goto err_nomem;

A buffer overflow in the following call to is->read may be exploited in the
same fashion.

Versions affected
-----------------

Any version from 2.5.0_rc1 (same commit as 1.1. All versions before that
are not vulnerable because pax headers were not parsed).

2. Impact
---------
There are numerous ways in which these buffer overflows could be exploited.
To demonstrate the impact, I've crafted a malicious tar.gz file
(specifically, an APKINDEX.tar.gz file [2]) that leads the code to the
buffer overflow copy, in which a struct on the heap that has a function
pointer is overridden. The execution is then lead to a call to `system`
with a string that I control as a parameter.

To put it simply, a man in the middle attacker could result in code
execution when a call to apk update is made. At a later date, I may decide
to release the proof of concept with the details of such an attack.

It is also worth noting that even if the call to read failed, in some
scenarios it may also be possible to use the null byte write (line 246) to
write to specific addresses. This could be dangerous especially on 32-bit
(in 64-bit the addresses are too high to actually reach anything
significant such as the stack).

As another anecdote, I originally discovered this issue from a crash by a
null deference. When fuzzing, I used apk_tar_parse with the stream from a
file and not from the gzip stream. Unlike gzip_read, fdi_read (io.c:71)
calls lseek when the target buffer pointer is null. And it fails when there
is not enough data on the file (gzip just reads whatever it has before
failing). This resulted in a scenario where handle_extended_header is
called, and then in apk_blob_pull_uint a null deference occurred if the pax
buffer was never allocated. [3] I have not assigned a CVE ID for this issue
because I did not reach a scenario where apk_tar_parse gets a file stream,
besides my fuzzer, and since the previous CVE IDs can relate to the same
issue.

2.1 Attack examples
-------------------

Disclaimer: As a perquisite to the examples below, the attacker must be
able to fully predict the memory layout of the execution.

1. Remote shell by `apk update`: https://asciinema.
org/a/8ftsmf3yf2aiooh20p3wyrf38
2. Remote shell from within `docker build`: https://asciinema.org/
a/08gvjvegerli00xp8o8y1qsxy

3. Use https
------------

As a general suggestion, consider fully enforcing the use of HTTPS in your
CDN servers (and in the /etc/apk/repositories file). The impact of these
vulnerabilities would be significantly lower if a MITM attack was
infeasible (or at least difficult). [4]

Credits
-------

All bugs were found with the use of afl-fuzz.

Footnotes
---------

[0] All line references are from the apk branch of 2.7.1
[1] http://www.gnu.org/software/tar/manual/html_node/Standard.html
[2] https://wiki.alpinelinux.org/wiki/Apkindex_format
[3] This is still achievable in theory if we have a huge stream
(0x80000000+512*2 bytes) so gzip reads 0x80000000 bytes and then moves on
to the call to handle_extended_header, but the size is converted to off_t
as explained and it is 64-bit and I'm unlikely to hold more than
0xffffffff80000000 bytes in memory... at least in the meantime.
[4] Also consider certificate/PK pinning https://www.owasp.org/
index.php/Certificate_and_Public_Key_Pinning

--94eb2c055842e64b520552c4fe68--
