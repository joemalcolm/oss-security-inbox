X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1104" "Thursday" "29" "September" "2016" "05:17:01" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87shsjcs42.fsf@mid.deneb.enyo.de>" "31" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Date:" nil nil "9" "2016092903:17:01" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        fw@deneb.eny Sep 29   31/1104  " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<CAJ_zFkKcsBVfV8AT3yUhAcMUSE-A89saZdfGMM822q43MsVLWw@mail.gmail.com>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" "<CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com>" "<alpine.GSO.2.20.1609281712500.18003@freddy.simplesystems.org>" "<CAJ_zFkKcsBVfV8AT3yUhAcMUSE-A89saZdfGMM822q43MsVLWw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5894 invoked by uid 550); 29 Sep 2016 03:17:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5874 invoked from network); 29 Sep 2016 03:17:13 -0000
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
	<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>
	<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
	<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
	<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
	<CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com>
	<alpine.GSO.2.20.1609281712500.18003@freddy.simplesystems.org>
	<CAJ_zFkKcsBVfV8AT3yUhAcMUSE-A89saZdfGMM822q43MsVLWw@mail.gmail.com>
In-Reply-To: <CAJ_zFkKcsBVfV8AT3yUhAcMUSE-A89saZdfGMM822q43MsVLWw@mail.gmail.com>
	(Tavis Ormandy's message of "Wed, 28 Sep 2016 16:03:08 -0700")
Message-ID: <87shsjcs42.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Thu, 29 Sep 2016 05:17:01 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

* Tavis Ormandy:

> On Wed, Sep 28, 2016 at 3:15 PM, Bob Friesenhahn
> <bfriesen@simple.dallas.tx.us> wrote:
>> On Wed, 28 Sep 2016, Tavis Ormandy wrote:
>>>
>>>
>>> (/etc/passwd) /dumpname load 256 string filenameforall
>>> $ convert test.gif png:test.png
>>> <creates a file called test.png containing first line of /etc/passwd>
>>>
>>> Also seems to work with gm convert.
>>
>>
>> It is good that you did not single out just one using program.
>>
>> This issue seems to afflict any program which invokes Ghostscript in general
>> and not just *Magick.  However, 'convert' does offer to write a rendered
>> result to an output file.
>>
>
> I think I see the problem, ghostscript broke -dSAFER then they fixed
> it later but didn't allocate a CVE, so the distros never updated.
>
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ae930279498a5961fcf5d70ffe86864883609cbc
>
> I think it should be fixed in gs 9.10 or later (Debian appears to be
> on 9.06), but you can still enumerate filenames (just not the
> content).

Is anyone investigating this and taking care of CVE assignment already?
