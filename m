X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["651" "Wednesday" "28" "September" "2016" "17:15:53" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1609281712500.18003@freddy.simplesystems.org>" "19" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^cc:" nil nil "9" "2016092822:15:53" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        bfriesen@sim Sep 28   19/651   " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" "<CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1479 invoked by uid 550); 28 Sep 2016 22:16:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1449 invoked from network); 28 Sep 2016 22:16:06 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1609281712500.18003@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org> <20160927142500.3x26pcrhw5x4nt6s@jwilk.net> <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org> <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
 <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com> <CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 28 Sep 2016 17:15:53 -0500 (CDT)
cc: oss-security@lists.openwall.com
Date: Wed, 28 Sep 2016 17:15:53 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: Tavis Ormandy <taviso@google.com>

On Wed, 28 Sep 2016, Tavis Ormandy wrote:
>
> (/etc/passwd) /dumpname load 256 string filenameforall
> $ convert test.gif png:test.png
> <creates a file called test.png containing first line of /etc/passwd>
>
> Also seems to work with gm convert.

It is good that you did not single out just one using program.

This issue seems to afflict any program which invokes Ghostscript in 
general and not just *Magick.  However, 'convert' does offer to write 
a rendered result to an output file.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
