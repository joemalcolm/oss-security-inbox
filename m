X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1297" "Wednesday" "5" "September" "2018" "17:32:20" "-0600" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20180905233220.GK1664@takahe.colorado.edu>" "27" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "9" "2018090523:32:20" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        leonid.isaev Sep  5   27/1297  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>" ("<CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>" "<CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com>" "<20180903105747.dihmczuqhl4kcnx5@suse.de>" "<CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>" "<CAJ_zFk++=BcFw0mU1NefSCkGqo3RzRjePQwPo0mCUzL=QeGBiA@mail.gmail.com>" "<F21BEEA3-4932-472D-9FEA-A318F543861D@gmail.com>" "<CAJ_zFkLmua6XK9iRV-TRQsXKXo=s9Y32FQjOM5UB_UPrrNsAxw@mail.gmail.com>" "<CAJ_zFkLvLBnn8OO6Q3JuqyvpRKoo=63wE1meqsT_jR4USir4DQ@mail.gmail.com>" "<20180905150128.5f9430f4@jabberwock.cb.piermont.com>" "<74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18054 invoked by uid 550); 6 Sep 2018 10:34:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22374 invoked from network); 5 Sep 2018 23:32:35 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20180905233220.GK1664@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>
 <CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com>
 <20180903105747.dihmczuqhl4kcnx5@suse.de>
 <CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>
 <CAJ_zFk++=BcFw0mU1NefSCkGqo3RzRjePQwPo0mCUzL=QeGBiA@mail.gmail.com>
 <F21BEEA3-4932-472D-9FEA-A318F543861D@gmail.com>
 <CAJ_zFkLmua6XK9iRV-TRQsXKXo=s9Y32FQjOM5UB_UPrrNsAxw@mail.gmail.com>
 <CAJ_zFkLvLBnn8OO6Q3JuqyvpRKoo=63wE1meqsT_jR4USir4DQ@mail.gmail.com>
 <20180905150128.5f9430f4@jabberwock.cb.piermont.com>
 <74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Wed, 5 Sep 2018 17:32:20 -0600
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

On Wed, Sep 05, 2018 at 03:13:53PM -0400, Stuart Gathman wrote:
> Postscript is a general purpose programming language.  It can do
> anything to your system that a C or Python program could.  The SAFER
> sandbox was supposed to be able to prevent untrusted postscript code
> from doing serious damage.  But this series of bugs shows that the
> sandbox is very flawed, and running untrusted postscript relying only on
> the SAFER sandbox is a very bad idea.
> 
> What I need to study, is whether random PDF files from the internet (as
> opposed to general postscript) are therefore malware vectors.  I thought
> that PDF used a restricted subset of operations that "rendered" it not a
> general purpose language and therefore "safe".   But if SAFER was the
> implementation of that restricted subset, then all internet PDFs are
> suspect.

In addition to that, pdf files can contains things like javascript... There are
some python tools to analyze them and detect (even obfuscated JS) -- see [1]
and links therein. But yes, unless you generate a pdf/ps file yourself (e.g.
with pdflatex or a graphics program), you should consider it untrusted.

Cheers,
L.

[1] https://stackoverflow.com/questions/29342542/how-can-i-extract-a-javascript-from-a-pdf-file-with-a-command-line-tool

-- 
Leonid Isaev
