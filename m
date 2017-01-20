X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1371" "Friday" "20" "January" "2017" "12:26:04" "+0100" "Raphael Hertzog" "hertzog@debian.org" "<20170120112604.cga6fjvktcveo46g@home.ouaza.com>" "39" "Re: [oss-security] CVE-2016-9584: heap use-after-free on libical" nil nil nil "1" "2017012011:26:04" "[oss-security] CVE-2016-9584: heap use-after-free on libical" (number mark "U       hertzog@debi Jan 20   39/1371  " thread-indent "\"Re: [oss-security] CVE-2016-9584: heap use-after-free on libical\"\n") "<CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>" ("<CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>" "<CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13366 invoked by uid 550); 20 Jan 2017 11:45:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3460 invoked from network); 20 Jan 2017 11:26:16 -0000
Date: Fri, 20 Jan 2017 12:26:04 +0100
From: Raphael Hertzog <hertzog@debian.org>
To: oss-security@lists.openwall.com
Cc: mista.agustin@gmail.com
Message-ID: <20170120112604.cga6fjvktcveo46g@home.ouaza.com>
References: <CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>
 <CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>
User-Agent: NeoMutt/20161126 (1.7.1)
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
Subject: Re: [oss-security] CVE-2016-9584: heap use-after-free on libical

Hello,

On Thu, 15 Dec 2016, Agustin Mista wrote:
> We found a heap use-after-free in a recent revision of libical (
> f3688b444f820cecf51b1539b0856a392c0fdb0f),
> using a specially crafted ics file. This bugs looks particularly dangerous
> since it allows to read a big chunk of the heap memory.

I see you reported multiple bugs on github's libical issues page:
https://github.com/libical/libical/issues/251
https://github.com/libical/libical/issues/252
https://github.com/libical/libical/issues/253

Looking at the backtrace, it seems that #253 is the same as this one.
Do you confirm?

Any reason why you did not request a CVE for #251?

> It is worth to mention there is a very similar bug found (CVE-2016-5824) on
> the libical version used by
> Thunderbird but we think is *not* the same as this one. In fact, we've
> tested it on Thunderbird and it does *not* crash.
> 
> The reproducer is available upon request.

#253 has a reproducer here:
https://github.com/libical/libical/files/627392/heap-use-after-free.ical.txt

Is this the same file?

If it's a different file, then I'd like to have access to the file but I
would prefer if it was just available publicly and not to me only.

Cheers,
-- 
Raphaël Hertzog ◈ Debian Developer

Support Debian LTS: http://www.freexian.com/services/debian-lts.html
Learn to master Debian: http://debian-handbook.info/get/
