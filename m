X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4687" "Friday" "13" "January" "2017" "15:26:40" "-0200" "Henrique de Moraes Holschuh" "hmh@hmh.eng.br" "<20170113172640.GB18334@khazad-dum.debian.net>" "128" "[oss-security] CVE-2017-0357: iucode-tool (v1.4 to v2.1): heap buffer overflow on -tr loader" nil nil nil "1" "2017011317:26:40" "[oss-security] CVE-2017-0357: iucode-tool (v1.4 to v2.1): heap buffer overflow on -tr loader" (number mark "U       hmh@hmh.eng. Jan 13  128/4687  " thread-indent "\"[oss-security] CVE-2017-0357: iucode-tool (v1.4 to v2.1): heap buffer overflow on -tr loader\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3552 invoked by uid 550); 13 Jan 2017 17:32:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32325 invoked from network); 13 Jan 2017 17:26:56 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=hmh.eng.br; h=
	content-type:date:from:message-id:mime-version:subject:to
	:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=oIO
	CIo2Y/VufIfupTemrkFdG+po=; b=p+tBfgrqvI2E8WpJtWFLEW7Qo51dT8AzSGS
	ZNbvw9tqWg9wTfTtQSmHXrdt5opX9jWm6MQu3FMOZr0vyt13CSAFY64fT/7KI6Nv
	Ake+Csr6KrBnO5QhvQ+8py0bncoXkCkglL//QCg5RTKfq4OQopJscbVR3lfLmhwa
	4jKe8KDA=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=oIOCIo2Y/VufIfupTemrkFdG+po=; b=bEuzZ
	FivzFAef8DomqbaQU5VTYdrzc+Vm4+Ci75FgYKRFPI3+h09l65/yenUVaK75cVu6
	8PSkvwe1B0FLfWllT33lkkICkwsHpJp5kM8uwim04puiwGuVnp75KForxJ1rdb03
	wnrSKcR5TlxpNGYVKph+F6p77pVdLh/YYfHQoc=
X-ME-Sender: <xms:1A15WPC3CWW_YqVXLCq-Qbk4sI1tqYfwnpXrrNdHjCLUHFxb2n-Bqg>
X-Sasl-enc: HF1RCyfWoSYbvvZ7QyJbVX3HKQoFQCCkF6ecVnL1Zr9V 1484328404
X-Virus-Scanned: Debian amavisd-new at khazad-dum.debian.net
Date: Fri, 13 Jan 2017 15:26:40 -0200
From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
To: oss-security@lists.openwall.com
Message-ID: <20170113172640.GB18334@khazad-dum.debian.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ikeVEW9yuYc//A+q"
Content-Disposition: inline
X-GPG-Fingerprint1: 4096R/0x0BD9E81139CB4807: C467 A717 507B BAFE D3C1  6092
 0BD9 E811 39CB 4807
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE-2017-0357: iucode-tool (v1.4 to v2.1): heap buffer overflow on
 -tr loader

--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


CVE-2017-0357: iucode-tool: heap buffer overflow on -tr loader

Project URL:
https://gitlab.com/iucode-tool/iucode-tool

Tracker for this Issue:
https://gitlab.com/iucode-tool/iucode-tool/issues/3

Versions affected:
iucode_tool 1.4, up to and including 2.1


iucode_tool is a program to manipulate microcode update collections for
Intel(R) i686 and X86-64 system processors, and prepare them for use by
the Linux kernel.

This bug affects a somewhat obscure feature of iucode_tool, the
microcode recovery loader, accessed through the "-tr" command line
switch.  The microcode recovery loader is typically used to inspect or
extract microcodes directly from kernel images, initramfs images, etc.

This loader works by reading the entire datafile in memory (it imposes a
hard limit of 1GiB worth of data), then scanning that memory forwards
for microcode regions (a region is one or more microcodes adjacent to
each other), and packing any it finds at the beginning of the memory
buffer to create a single microcode region.  When it finishes, it
realloc()s the memory buffer to its new (likely smaller) size.

When a valid microcode is present at the end of the data file and there
is no extra data after it, intel_ucode_scan_for_microcode() would fail
to detect the end-of-buffer situation, and read data past the end of the
memory buffer looking for an *adjacent* valid microcode.

This is usually harmless, as typically there will not be a valid
microcode update exactly right past the end of the memory buffer.

Unfortunately, should there be a valid microcode exactly after the
memory buffer, iucode_tool will misbehave.  A SIGSEGV is the best result
one could expect.  Heap corruption can happen if further, non-adjacent
microcodes are found in memory as iucode_tool will use memmove() to
compact them into a single region, possibly overwiting the heap memory
past the end of the buffer.

The heap buffer overflow (but not the heap corruption) is trivially
triggered by using the -tr (recovery) loader on proper binary microcode
data files:

"iucode_tool -tr /lib/firmware/intel-ucode"

The heap buffer overflow can be detected by Valgrind's memcheck, or by
instrumenting iucode_tool using -fsanitize=address under gcc or clang.


Exploiting the bug:
-------------------

It might be possible for an attacker to force a heap corruption with
attacker-supplied data by using a number of specially crafted data
files.  This might also require tricking the user into using a specially
crafted command line.

The number of specially crafted data files required is a minimum of two,
but it depends on how unpredictable the data written by glibc's heap
implementation is.  It could be quite large, or quite small.

If iucode_tool is linked to a libc that won't change data in the free'd
or realloc'd heap chunks the way modern glibc typically does by default,
triggering the attacker-controlled heap corruption might be trivial.
Tuning glibc's malloc() behavior might also change things.

I am no expert in exploiting glibc heap corruption.  I have assumed it
is possible to leverage it into shellcode execution in the name of
caution.

-- 
  Henrique Holschuh

--ikeVEW9yuYc//A+q
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="iucode-tool_fix-cve-2017-0357.patch"

From: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sat, 7 Jan 2017 17:12:04 -0200
Subject: CVE-2017-0357: iucode_tool: fix heap buffer overflow on -tr loader

When the last microcode region ends at exactly the end of a data file
*being loaded using the -tr loader*, intel_ucode_scan_for_microcode()
would read data past the end of the memory buffer.

It is likely possible for an attacker to use this bug to trigger heap
corruption using specially crafted data file(s), possibly also requiring
a specially crafted command line.

The heap corruption might be exploitable depending on libc details, and
could lead to code execution.

This issue was fixed in iucode_tool v2.1.1.
This issue is present in iucode_tool v1.4, up to an including v2.1.

---
 intel_microcode.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/intel_microcode.c b/intel_microcode.c
index 7ce575b..c094c66 100644
--- a/intel_microcode.c
+++ b/intel_microcode.c
@@ -532,6 +532,10 @@ int intel_ucode_scan_for_microcode(const void **bs, const void **be,
 		bl += total_size;
 		al -= total_size;
 
+		/* xx_intel_ucode_check_uc() before v2.1.1 special-cases al == 0 */
+		if (!al)
+			break;
+
 		r = xx_intel_ucode_check_uc(p, al, 0);
 	} while (r == INTEL_UCODE_NOERROR);
 
-- 
2.1.4


--ikeVEW9yuYc//A+q--
