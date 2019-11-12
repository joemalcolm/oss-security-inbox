X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1171" "Tuesday" "12" "November" "2019" "13:17:50" "+0100" "pgajdos" "pgajdos@suse.cz" "<20191112121750.GA15193@laura.suse.cz>" "16" "Re: [oss-security] CVE-2019-2201: libjpeg-turbo: code execution" "^Date:" nil nil "11" "2019111212:17:50" "[oss-security] CVE-2019-2201: libjpeg-turbo: code execution" (number mark "        pgajdos@suse Nov 12   16/1171  " thread-indent "\"Re: [oss-security] CVE-2019-2201: libjpeg-turbo: code execution\"\n") "<2eb0be7f-bd31-e304-1787-09e47007d32a@suse.com>" ("<2eb0be7f-bd31-e304-1787-09e47007d32a@suse.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-2201: libjpeg-turbo: code execution" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27732 invoked by uid 550); 12 Nov 2019 12:56:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9656 invoked from network); 12 Nov 2019 12:18:02 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20191112121750.GA15193@laura.suse.cz>
References: <2eb0be7f-bd31-e304-1787-09e47007d32a@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2eb0be7f-bd31-e304-1787-09e47007d32a@suse.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Date: Tue, 12 Nov 2019 13:17:50 +0100
From: pgajdos <pgajdos@suse.cz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-2201: libjpeg-turbo: code execution
To: oss-security@lists.openwall.com

On Mon, Nov 11, 2019 at 05:49:45PM +0100, Wolfgang Frisch wrote:
> > Program received signal SIGSEGV, Segmentation fault.
> > 0x00007ffff7d44d9d in __memset_avx2_erms () from /lib64/libc.so.6
> > (gdb) bt
> > #0  0x00007ffff7d44d9d in __memset_avx2_erms () from /lib64/libc.so.6
> > #1  0x0000555555558f7a in memset (__len=18446744071562074395, __ch=127, __dest=<optimized out>) at /usr/include/bits/string_fortified.h:71
> > #2  decomp (srcBuf=0x0, jpegBuf=0x7fffffffd8e0, jpegSize=0x7fffffffd8e8, dstBuf=<optimized out>, w=26755, h=26755, subsamp=2, jpegQual=0, 
> >     fileName=0x7fffffffdfaa "CVE-2019-2201-reproducer-SEGFAULT-26755x26755", tilew=26755, tileh=26755) at /usr/src/debug/libjpeg-turbo-2.0.3-56.1.x86_64/tjbench.c:174
> > #3  0x0000555555557103 in decompTest (fileName=0x7fffffffdfaa "CVE-2019-2201-reproducer-SEGFAULT-26755x26755") at /usr/src/debug/libjpeg-turbo-2.0.3-56.1.x86_64/tjbench.c:712
> > #4  main (argc=<optimized out>, argv=<optimized out>) at /usr/src/debug/libjpeg-turbo-2.0.3-56.1.x86_64/tjbench.c:1003
> 
> We identified that it crashed on writing to a libc.so mapping.

https://github.com/libjpeg-turbo/libjpeg-turbo/issues/388

Petr
