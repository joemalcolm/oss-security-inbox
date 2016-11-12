X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["539" "Saturday" "12" "November" "2016" "11:52:09" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2200778.ln8VJyCZxr@arcadia>" "13" "Re: [oss-security] Re: libdwarf: heap-based buffer overflow in get_attr_value (print_die.c)" nil nil nil "11" "2016111210:52:09" "[oss-security] Re: libdwarf: heap-based buffer overflow in get_attr_value (print_die.c)" (number mark "U       ago@gentoo.o Nov 12   13/539   " thread-indent "\"Re: [oss-security] Re: libdwarf: heap-based buffer overflow in get_attr_value (print_die.c)\"\n") "<5b255e157f6640988ff729ba46e4896d@imshyb02.MITRE.ORG>" ("<5b255e157f6640988ff729ba46e4896d@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16204 invoked by uid 550); 12 Nov 2016 10:51:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16175 invoked from network); 12 Nov 2016 10:51:24 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sat, 12 Nov 2016 11:52:09 +0100
Message-ID: <2200778.ln8VJyCZxr@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
In-Reply-To: <5b255e157f6640988ff729ba46e4896d@imshyb02.MITRE.ORG>
References: <5b255e157f6640988ff729ba46e4896d@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] Re: libdwarf: heap-based buffer overflow in get_attr_value (print_die.c)

On Friday 11 November 2016 12:43:58 cve-assign@mitre.org wrote:
> We would need more impact analysis before assigning a CVE ID for this.
> It seems to affect only the dwarfdump command-line program, not
> library code that is used in arbitrary applications.

That's right. The problem is only in the command line utility and not in any 
library.
As it is a buffer over read of 1, it is fine for me to don't have a cve for 
this issue but I shared because distro(s) would have the patch aboard.

-- 
Agostino Sarubbo
Gentoo Linux Developer
