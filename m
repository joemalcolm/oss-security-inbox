X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["864" "Wednesday" "27" "January" "2021" "15:16:40" "-0000" "Tavis Ormandy" "taviso@gmail.com" "<rus04o$q3o$1@ciao.gmane.io>" "27" "[oss-security] glibc iconv crash with ISO-2022-JP-3" nil nil nil "1" "2021012715:16:40" "[oss-security] glibc iconv crash with ISO-2022-JP-3" (number mark "U       taviso@gmail Jan 27   27/864   " thread-indent "\"[oss-security] glibc iconv crash with ISO-2022-JP-3\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] glibc iconv crash with ISO-2022-JP-3" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15534 invoked by uid 550); 27 Jan 2021 15:32:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5537 invoked from network); 27 Jan 2021 15:16:57 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Wed, 27 Jan 2021 15:16:40 -0000 (UTC)
Message-ID: <rus04o$q3o$1@ciao.gmane.io>
User-Agent: slrn/pre1.0.4-5 (Linux)
Subject: [oss-security] glibc iconv crash with ISO-2022-JP-3

Hello list, I suddenly got interested in mutt attack surface after
CVE-2021-3181, and some testing found a crash via charset conversion
glibc. It's just an abort(), I don't think there's any further impact.

I believe this would crash anything that does character conversion with
iconv. Mail clients do automatic charset conversion when they see a
Subject like:

    Subject: =?ISO-2022-JP-3?B?.....

or a MIME header like this:

    Content-Type: text/plain; charset=ISO-2022-JP-3

The impact is just that you can't open your mail client, because it
crashes as soon as it sees the subject.

Upstream bug: https://sourceware.org/bugzilla/show_bug.cgi?id=27256
Patch: https://sourceware.org/pipermail/libc-alpha/2021-January/122058.html

Thanks, Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

