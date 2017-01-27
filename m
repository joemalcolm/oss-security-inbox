X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1917" "Friday" "27" "January" "2017" "12:21:42" "+0100" "Raphael Hertzog" "hertzog@debian.org" "<20170127112142.pgx5mrvl5qsxnvpa@home.ouaza.com>" "50" "Re: [oss-security] CVE-2016-9584: heap use-after-free on libical" nil nil nil "1" "2017012711:21:42" "[oss-security] CVE-2016-9584: heap use-after-free on libical" (number mark "U       hertzog@debi Jan 27   50/1917  " thread-indent "\"Re: [oss-security] CVE-2016-9584: heap use-after-free on libical\"\n") "<CACn5sdTLxn6uRQdZfpkrWzY4Tc+2_mLGdjG6-O_7hoUSoHNa7Q@mail.gmail.com>" ("<CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>" "<CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>" "<20170120112604.cga6fjvktcveo46g@home.ouaza.com>" "<CACn5sdTLxn6uRQdZfpkrWzY4Tc+2_mLGdjG6-O_7hoUSoHNa7Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14054 invoked by uid 550); 27 Jan 2017 11:26:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10168 invoked from network); 27 Jan 2017 11:21:54 -0000
Date: Fri, 27 Jan 2017 12:21:42 +0100
From: Raphael Hertzog <hertzog@debian.org>
To: oss-security@lists.openwall.com
Cc: Gustavo Grieco <gustavo.grieco@gmail.com>
Message-ID: <20170127112142.pgx5mrvl5qsxnvpa@home.ouaza.com>
References: <CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>
 <CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>
 <20170120112604.cga6fjvktcveo46g@home.ouaza.com>
 <CACn5sdTLxn6uRQdZfpkrWzY4Tc+2_mLGdjG6-O_7hoUSoHNa7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACn5sdTLxn6uRQdZfpkrWzY4Tc+2_mLGdjG6-O_7hoUSoHNa7Q@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
Subject: Re: [oss-security] CVE-2016-9584: heap use-after-free on libical

On Fri, 20 Jan 2017, Gustavo Grieco wrote:
> > Any reason why you did not request a CVE for #251?
> 
> Yes. It was already reported here:
> https://bugzilla.mozilla.org/show_bug.cgi?id=1275400 (CVE-2016-5824)
> but it was never officially reported upstream (and therefore, never fixed).

It was reported in https://github.com/libical/libical/issues/235 but then
closed by the submitter.

You could have stated in #251 that you believed this crash to be the same
than the one above. It was not obvious to me, I did it for you.

> >> It is worth to mention there is a very similar bug found (CVE-2016-5824) on
> >> the libical version used by
> >> Thunderbird but we think is *not* the same as this one. In fact, we've
> >> tested it on Thunderbird and it does *not* crash.
> >>
> >> The reproducer is available upon request.
> >
> > #253 has a reproducer here:
> > https://github.com/libical/libical/files/627392/heap-use-after-free.ical.txt
> >
> > Is this the same file?
> 
> It is not the same file in fact. We found a variation of the original
> input that trigger this
> read out-of-bounds to read more than 60 bytes. This looks more serious
> than usual (maybe you can read as much as you want) .
> We had some complains in the past for making public test cases ..

Here, I'm lost. You said that this oss-security report (CVE-2016-9584) is
the same as #253 but you have another file than the test case
submitted in #253.

Are you sure that this second file is the same underlying issue ?

> > If it's a different file, then I'd like to have access to the file but I
> > would prefer if it was just available publicly and not to me only.
> 
> Feel free to make the file public if you want.

You would have to send it to me first :-)

Cheers,
-- 
Raphaël Hertzog ◈ Debian Developer

Support Debian LTS: https://www.freexian.com/services/debian-lts.html
Learn to master Debian: https://debian-handbook.info/get/
