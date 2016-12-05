X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3007" "Monday" "5" "December" "2016" "10:17:13" "-0600" "Tyler Hicks" "tyhicks@canonical.com" "<93993db8-1bd4-85e5-fe22-06d3a4e44117@canonical.com>" "72" "[oss-security] CVE Request: Info-Zip zipinfo buffer overflow" nil nil nil "12" "2016120516:17:13" "[oss-security] CVE Request: Info-Zip zipinfo buffer overflow" (number mark "U       tyhicks@cano Dec  5   72/3007  " thread-indent "\"[oss-security] CVE Request: Info-Zip zipinfo buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17576 invoked by uid 550); 5 Dec 2016 16:17:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17558 invoked from network); 5 Dec 2016 16:17:27 -0000
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: "security@ubuntu.com" <security@ubuntu.com>,
 "Steven M. Schweda" <sms@antinode.info>
Message-ID: <93993db8-1bd4-85e5-fe22-06d3a4e44117@canonical.com>
Date: Mon, 5 Dec 2016 10:17:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE Request: Info-Zip zipinfo buffer overflow

Alexis Vanden Eijnde has discovered a zipinfo buffer overflow and
reported it here:

  https://launchpad.net/bugs/1643750

It is very similar to, but different than, this `unzip -l` crasher:

  http://www.openwall.com/lists/oss-security/2014/11/03/5

The zipinfo buffer overflow occurs due to a flaw in zipinfo.c's
zi_short() function:

(gdb) bt
#0  0x00007ffff7833428 in __GI_raise (sig=sig@entry=6) at
../sysdeps/unix/sysv/linux/raise.c:54
#1  0x00007ffff783502a in __GI_abort () at abort.c:89
#2  0x00007ffff78757ea in __libc_message (do_abort=do_abort@entry=2,
fmt=fmt@entry=0x7ffff798c8a2 "*** %s ***: %s terminated\n")
    at ../sysdeps/posix/libc_fatal.c:175
#3  0x00007ffff791656c in __GI___fortify_fail (msg=<optimized out>,
msg@entry=0x7ffff798c833 "buffer overflow detected") at fortify_fail.c:37
#4  0x00007ffff7914570 in __GI___chk_fail () at chk_fail.c:28
#5  0x00007ffff7913ad9 in _IO_str_chk_overflow (fp=<optimized out>,
c=<optimized out>) at vsprintf_chk.c:31
#6  0x00007ffff78796b0 in __GI__IO_default_xsputn (f=0x7fffffffe040,
data=<optimized out>, n=4) at genops.c:455
#7  0x00007ffff784be00 in _IO_vfprintf_internal
(s=s@entry=0x7fffffffe040, format=<optimized out>, format@entry=0x420d93
"%03u",
    ap=ap@entry=0x7fffffffe178) at vfprintf.c:1631
#8  0x00007ffff7913b64 in ___vsprintf_chk (s=0x7fffffffe301 "100",
flags=1, slen=4, format=0x420d93 "%03u", args=args@entry=0x7fffffffe178)
    at vsprintf_chk.c:82
#9  0x00007ffff7913abd in ___sprintf_chk (s=s@entry=0x7fffffffe301
"100", flags=flags@entry=1, slen=slen@entry=4,
format=format@entry=0x420d93 "%03u")
    at sprintf_chk.c:31
#10 0x000000000041729b in sprintf (__fmt=0x420d93 "%03u",
__s=0x7fffffffe301 "100") at /usr/include/x86_64-linux-gnu/bits/stdio2.h:33
#11 zi_short () at zipinfo.c:1986
#12 zipinfo () at zipinfo.c:919
#13 0x000000000041144a in do_seekable (lastchance=lastchance@entry=0) at
process.c:974
#14 0x0000000000411bdf in process_zipfiles () at process.c:401
#15 0x0000000000404191 in unzip (argc=0, argv=0x7fffffffe628) at
unzip.c:1278
#16 0x00007ffff781e830 in __libc_start_main (main=0x401f60 <main>,
argc=2, argv=0x7fffffffe618, init=<optimized out>, fini=<optimized out>,
    rtld_fini=<optimized out>, stack_end=0x7fffffffe608) at
../csu/libc-start.c:291
#17 0x0000000000401fa9 in _start ()

The overflow occurs when the two-byte compression method field in the
central directory file header is greater then 999. The sprintf at line
1986 overflows the methbuf buffer:

  1937  static int zi_short(__G)   /* return PK-type error code */
  ...
  1947      char        methbuf[5];
  ...
  1985      } else if (methnum >= NUM_METHODS) {   /* unknown */
  1986          sprintf(&methbuf[1], "%03u", G.crec.compression_method);
  1987      }

An offset of 1 byte + "999" + "\0" fills the entire buffer so a
compression method field of 1000 and greater overwrites bytes outside of
the buffer.

Please assign a CVE. Also, consider assigning a CVE to the related
`unzip -l` issue from 2014. Thank you!

Tyler
