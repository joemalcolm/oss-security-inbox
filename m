X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1965" "Sunday" "1" "January" "2017" "21:11:42" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<3947283.bJNloLFQYu@arcadia>" "44" "Re: [oss-security] Re: libtiff: multiple heap-based buffer overflow" nil nil nil "1" "2017010120:11:42" "[oss-security] Re: libtiff: multiple heap-based buffer overflow" (number mark "U       ago@gentoo.o Jan  1   44/1965  " thread-indent "\"Re: [oss-security] Re: libtiff: multiple heap-based buffer overflow\"\n") "<a5c8bd5fcbf94dfe83238915b480add2@imshyb02.MITRE.ORG>" ("<a5c8bd5fcbf94dfe83238915b480add2@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11855 invoked by uid 550); 1 Jan 2017 20:12:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11837 invoked from network); 1 Jan 2017 20:12:00 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sun, 01 Jan 2017 21:11:42 +0100
Message-ID: <3947283.bJNloLFQYu@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
In-Reply-To: <a5c8bd5fcbf94dfe83238915b480add2@imshyb02.MITRE.ORG>
References: <a5c8bd5fcbf94dfe83238915b480add2@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] Re: libtiff: multiple heap-based buffer overflow

On Sunday 01 January 2017 12:51:35 cve-assign@mitre.org wrote:
> > https://blogs.gentoo.org/ago/2017/01/01/libtiff-multiple-heap-based-buffer
> > -overflow
> At the moment, we will assign IDs to the issues listed with a write
> impact. We will later look at the issues listed with a read or
> undefined impact, but this has some complexity. 

> Another example is that a "READ of size 1" within the source
> code of a command-line tool (not part of the library code that could
> be used in an arbitrary application) may have no risk.

Yes, we know that sometimes command line tools with issues like READ of size 1 
cannot create damage.
However, for completeness and for people/packagers that want to have them 
fixed in they repository, I shared the details as well.

> > AddressSanitizer: heap-buffer-overflow ... WRITE of size 2048 at
> > tiff-4.0.7/libtiff/tif_next.c:64:9
> > 
> >> http://bugzilla.maptools.org/show_bug.cgi?id=2624
> 
> The vendor response was "I cannot reproduce with CVS head. But I
> reproduce with 4.0.7 so this has been fixed by recent commits. Could
> you track CVS head for your next fuzzing sessions so as to avoid
> wasting our time to both of us ?"

For some reasons I like to fuzz on a stable releases. Since libtiff ships some 
binaries, I take time to test each binary. So, there was a situation where a 
bug filed against an issue reproducible via tiffcp was fixed from a commit 
which addressed an issue filed against tiffcrop.
But as you have pointed out, there were cases where a commit addressed a READ 
issue and later on it was discovered that it fixed a WRITE issue too.


> If there is additional information from bisection, please let us know.

The commit that addresses the specific issue seems to be 
9657bbe3cdce4aaa90e07d50c1c70ae52da0ba6a.
However the process seems to fails to exit and went into a loop, but that's a 
different issue and needs to be reported upstream.

-- 
Agostino Sarubbo
Gentoo Linux Developer
