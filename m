X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1918" "Wednesday" "17" "October" "2018" "02:09:28" "-0400" "Rich Felker" "dalias@libc.org" "<20181017060928.GL5150@brightrain.aerifal.cx>" "41" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018101706:09:28" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "U       dalias@libc. Oct 17   41/1918  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<20181010152605.68fb4e49@jabberwock.cb.piermont.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>" "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>" "<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>" "<20181009182643.5d601a06@jabberwock.cb.piermont.com>" "<CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>" "<20181010152605.68fb4e49@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18062 invoked by uid 550); 17 Oct 2018 06:24:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1758 invoked from network); 17 Oct 2018 06:09:41 -0000
Message-ID: <20181017060928.GL5150@brightrain.aerifal.cx>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <20181009153006.GF21509@takahe.colorado.edu>
 <CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
 <alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>
 <20181009182643.5d601a06@jabberwock.cb.piermont.com>
 <CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>
 <20181010152605.68fb4e49@jabberwock.cb.piermont.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181010152605.68fb4e49@jabberwock.cb.piermont.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Tavis Ormandy <taviso@google.com>,
	Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Date: Wed, 17 Oct 2018 02:09:28 -0400
From: Rich Felker <dalias@libc.org>
Reply-To: oss-security@lists.openwall.com
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com

On Wed, Oct 10, 2018 at 03:26:05PM -0400, Perry E. Metzger wrote:
> On Tue, 9 Oct 2018 15:32:02 -0700 Tavis Ormandy <taviso@google.com>
> wrote:
> > On Tue, Oct 9, 2018 at 3:27 PM Perry E. Metzger
> > <perry@piermont.com> wrote:
> > 
> > > I keep wondering if there isn't a way to fully remove the
> > > dangerous bits from a postscript interpreter so it can _only_ be
> > > used to view the document and literally has no file system access
> > > compiled in at all, so there's no way to touch the fs etc.
> > > regardless of what flags the interpreter is invoked with.
> > >
> > > (I, too, find removing the ability to look at historical
> > > postscript documents a bit more draconian than I like.)
> > >
> > >  
> > I've discussed it with upstream, it's a hard no because they feel
> > it would make ghostscript non-conforming (i.e. non-conforming with
> > the Adobe PostScript Language Reference Manual)
> > 
> > We probably have similar thoughts on this, but that is the final
> > word from upstream.
> 
> They wouldn't even support a compilation mode where if you #define
> the right thing those syscalls are cut out?
> 
> I don't care much about upstream's desires on this if they oppose
> that. I'd be happy to have patches that simply cut out the dangerous
> syscalls entirely. It's open source, that should be feasible.

This. It's utterly ridiculous that the interpreter even has bindings
for accessing the filesystem and such. But I wonder if some of its
library routines (e.g. font loading) are implemented in Postscript,
using these bindings, rather than being implemented in C outside of
the language interpreter. If so it might be harder to extricate. But I
still think it's worthwhile to try. Once there are patches I would
expect all reasonable distros to start shipping with them, and if
upstream tries to make it hard, I would expect one of the big distros
to just fork and abandon upstream.

Rich
