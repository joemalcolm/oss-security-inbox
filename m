X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1256" "Wednesday" "10" "October" "2018" "15:26:05" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20181010152605.68fb4e49@jabberwock.cb.piermont.com>" "32" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018101019:26:05" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        perry@piermo Oct 10   32/1256  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>" "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>" "<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>" "<20181009182643.5d601a06@jabberwock.cb.piermont.com>" "<CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13644 invoked by uid 550); 10 Oct 2018 19:26:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13626 invoked from network); 10 Oct 2018 19:26:17 -0000
Message-ID: <20181010152605.68fb4e49@jabberwock.cb.piermont.com>
In-Reply-To: <CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
	<20181009153006.GF21509@takahe.colorado.edu>
	<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
	<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>
	<20181009182643.5d601a06@jabberwock.cb.piermont.com>
	<CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com, Bob Friesenhahn
 <bfriesen@simple.dallas.tx.us>
Date: Wed, 10 Oct 2018 15:26:05 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: Tavis Ormandy <taviso@google.com>

On Tue, 9 Oct 2018 15:32:02 -0700 Tavis Ormandy <taviso@google.com>
wrote:
> On Tue, Oct 9, 2018 at 3:27 PM Perry E. Metzger
> <perry@piermont.com> wrote:
> 
> > I keep wondering if there isn't a way to fully remove the
> > dangerous bits from a postscript interpreter so it can _only_ be
> > used to view the document and literally has no file system access
> > compiled in at all, so there's no way to touch the fs etc.
> > regardless of what flags the interpreter is invoked with.
> >
> > (I, too, find removing the ability to look at historical
> > postscript documents a bit more draconian than I like.)
> >
> >  
> I've discussed it with upstream, it's a hard no because they feel
> it would make ghostscript non-conforming (i.e. non-conforming with
> the Adobe PostScript Language Reference Manual)
> 
> We probably have similar thoughts on this, but that is the final
> word from upstream.

They wouldn't even support a compilation mode where if you #define
the right thing those syscalls are cut out?

I don't care much about upstream's desires on this if they oppose
that. I'd be happy to have patches that simply cut out the dangerous
syscalls entirely. It's open source, that should be feasible.

Perry
-- 
Perry E. Metzger		perry@piermont.com
