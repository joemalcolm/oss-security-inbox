X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1119" "Thursday" "16" "March" "2017" "21:15:28" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<3025119.tSIlaHEIMQ@arcadia>" "31" "Re: [oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities" nil nil nil "3" "2017031620:15:28" "[oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities" (number mark "U       ago@gentoo.o Mar 16   31/1119  " thread-indent "\"Re: [oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities\"\n") "<CAMNd5sthm7v3xxeZvpd6WBXQoM8OJsst+AWK9jQinzkM-VbZiw@mail.gmail.com>" ("<CAMNd5sthm7v3xxeZvpd6WBXQoM8OJsst+AWK9jQinzkM-VbZiw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25822 invoked by uid 550); 16 Mar 2017 20:15:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25801 invoked from network); 16 Mar 2017 20:15:45 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Thuan Pham <thuanpv@comp.nus.edu.sg>
Date: Thu, 16 Mar 2017 21:15:28 +0100
Message-ID: <3025119.tSIlaHEIMQ@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.29; x86_64; ; )
In-Reply-To: <CAMNd5sthm7v3xxeZvpd6WBXQoM8OJsst+AWK9jQinzkM-VbZiw@mail.gmail.com>
References: <CAMNd5sthm7v3xxeZvpd6WBXQoM8OJsst+AWK9jQinzkM-VbZiw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities

On Friday 17 March 2017 00:58:05 Thuan Pham wrote:
> Could you please check whether these bugs are suitable for CVEs?

Thuan,
thanks for sharing.

Since few time the cve requests happens on https://cveform.mitre.org instead 
of here.

>From some time of fuzz experience, from multiple cve requests and multiple 
feedback from mitre I'd say:
- In any way you are able to crash a library, it needs a cve because it is 
supposed to receive multiple inputs.
- Undefined behavior in a library also needs a cve. 
- while the bug is in a command line tool:
1) if it is a simple crash like fpe / segv, it is considered just an 
inconvenience.
2) if it is an overflow with read of size 1 is also considered an inconveniece 
unless you can demostrate any evidence of damage.
The mentioned cases are not just an inconvenience unless there are common 
cases where you know that for example a webapp relies on this command line 
tool.
3) if it is an overflow with write access it should have a cve.


@everyone, if you think it is wrong or I missed something feel free to correct 
me. 
 
-- 
Agostino Sarubbo
Gentoo Linux Developer
