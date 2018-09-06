X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["690" "Thursday" "6" "September" "2018" "10:21:09" "-0600" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20180906162109.GB19583@takahe.colorado.edu>" "18" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "9" "2018090616:21:09" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        leonid.isaev Sep  6   18/690   " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<20180906131725.5dyq5xjweg5ljet4@jwilk.net>" ("<20180903105747.dihmczuqhl4kcnx5@suse.de>" "<CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>" "<CAJ_zFk++=BcFw0mU1NefSCkGqo3RzRjePQwPo0mCUzL=QeGBiA@mail.gmail.com>" "<F21BEEA3-4932-472D-9FEA-A318F543861D@gmail.com>" "<CAJ_zFkLmua6XK9iRV-TRQsXKXo=s9Y32FQjOM5UB_UPrrNsAxw@mail.gmail.com>" "<CAJ_zFkLvLBnn8OO6Q3JuqyvpRKoo=63wE1meqsT_jR4USir4DQ@mail.gmail.com>" "<20180905150128.5f9430f4@jabberwock.cb.piermont.com>" "<74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>" "<20180905233220.GK1664@takahe.colorado.edu>" "<20180906131725.5dyq5xjweg5ljet4@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18343 invoked by uid 550); 6 Sep 2018 16:26:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13970 invoked from network); 6 Sep 2018 16:21:24 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20180906162109.GB19583@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180903105747.dihmczuqhl4kcnx5@suse.de>
 <CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>
 <CAJ_zFk++=BcFw0mU1NefSCkGqo3RzRjePQwPo0mCUzL=QeGBiA@mail.gmail.com>
 <F21BEEA3-4932-472D-9FEA-A318F543861D@gmail.com>
 <CAJ_zFkLmua6XK9iRV-TRQsXKXo=s9Y32FQjOM5UB_UPrrNsAxw@mail.gmail.com>
 <CAJ_zFkLvLBnn8OO6Q3JuqyvpRKoo=63wE1meqsT_jR4USir4DQ@mail.gmail.com>
 <20180905150128.5f9430f4@jabberwock.cb.piermont.com>
 <74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>
 <20180905233220.GK1664@takahe.colorado.edu>
 <20180906131725.5dyq5xjweg5ljet4@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180906131725.5dyq5xjweg5ljet4@jwilk.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 6 Sep 2018 10:21:09 -0600
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

On Thu, Sep 06, 2018 at 03:17:25PM +0200, Jakub Wilk wrote:
> * Leonid Isaev <leonid.isaev@jila.colorado.edu>, 2018-09-05, 17:32:
> > pdf files can contains things like javascript...
> 
> Do any open-source PDF browsers actually execute embedded JS?

Currently, evince, okular and gv don't. The same goes for zathura with its
poppler backend (haven't checked this, but pretty sure). But then there is also
Artifex Mupdf which, AFAIR, supports JS in pdf files (by extension, so does
zathura when viewing a pdf file using the mupdf plugin). I don't know how
complete that support is. Most importantly, many Android pdf/ebook readers
probably include JS support.

CHeers,
L.

-- 
Leonid Isaev
