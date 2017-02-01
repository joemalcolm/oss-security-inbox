X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["498" "Wednesday" "1" "February" "2017" "14:07:31" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1748187.AJXrn83EvZ@blackgate>" "20" "Re: [oss-security] CVE-2017-0358 ntfs-3g: modprobe influence vulnerability via environment variables" nil nil nil "2" "2017020113:07:31" "[oss-security] CVE-2017-0358 ntfs-3g: modprobe influence vulnerability via environment variables" (number mark "U       ago@gentoo.o Feb  1   20/498   " thread-indent "\"Re: [oss-security] CVE-2017-0358 ntfs-3g: modprobe influence vulnerability via environment variables\"\n") "<1485931455.2391.3.camel@debian.org>" ("<1485931455.2391.3.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8182 invoked by uid 550); 1 Feb 2017 13:07:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8159 invoked from network); 1 Feb 2017 13:07:48 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: "Laszlo Boszormenyi (GCS)" <gcs@debian.org>
Date: Wed, 01 Feb 2017 14:07:31 +0100
Message-ID: <1748187.AJXrn83EvZ@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <1485931455.2391.3.camel@debian.org>
References: <1485931455.2391.3.camel@debian.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart3171834.52ks7OG8eO"
Content-Transfer-Encoding: 7Bit
Subject: Re: [oss-security] CVE-2017-0358 ntfs-3g: modprobe influence vulnerability via environment variables

--nextPart3171834.52ks7OG8eO
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Wednesday 01 February 2017 07:44:15 Laszlo 
Boszormenyi wrote:
> This is the case for Debian,Ubuntu and probably Gentoo.

To clarify:
on Gentoo the package is installed as setuid only when 
there is USE="suid" which is not active by default.
I reported the issue into our bugzilla as well.
Thanks for the report.

-- 
Agostino Sarubbo
Gentoo Linux Developer

--nextPart3171834.52ks7OG8eO--

