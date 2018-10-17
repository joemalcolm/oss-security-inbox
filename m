X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2501" "Wednesday" "17" "October" "2018" "10:48:37" "-0400" "Rich Felker" "dalias@libc.org" "<20181017144837.GN5150@brightrain.aerifal.cx>" "50" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018101714:48:37" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        dalias@libc. Oct 17   50/2501  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<20181017092154.4e7bae56@jabberwock.cb.piermont.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>" "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>" "<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>" "<20181009182643.5d601a06@jabberwock.cb.piermont.com>" "<CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>" "<20181010152605.68fb4e49@jabberwock.cb.piermont.com>" "<20181017060928.GL5150@brightrain.aerifal.cx>" "<20181017092154.4e7bae56@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14036 invoked by uid 550); 17 Oct 2018 15:01:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1059 invoked from network); 17 Oct 2018 14:48:52 -0000
Message-ID: <20181017144837.GN5150@brightrain.aerifal.cx>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <20181009153006.GF21509@takahe.colorado.edu>
 <CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
 <alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>
 <20181009182643.5d601a06@jabberwock.cb.piermont.com>
 <CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>
 <20181010152605.68fb4e49@jabberwock.cb.piermont.com>
 <20181017060928.GL5150@brightrain.aerifal.cx>
 <20181017092154.4e7bae56@jabberwock.cb.piermont.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181017092154.4e7bae56@jabberwock.cb.piermont.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com, Tavis Ormandy <taviso@google.com>,
	Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Date: Wed, 17 Oct 2018 10:48:37 -0400
From: Rich Felker <dalias@libc.org>
Reply-To: oss-security@lists.openwall.com
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: "Perry E. Metzger" <perry@piermont.com>

On Wed, Oct 17, 2018 at 09:21:54AM -0400, Perry E. Metzger wrote:
> On Wed, 17 Oct 2018 02:09:28 -0400 Rich Felker <dalias@libc.org>
> wrote:
> > > > > I keep wondering if there isn't a way to fully remove the
> > > > > dangerous bits from a postscript interpreter so it can _only_
> > > > > be used to view the document and literally has no file system
> > > > > access compiled in at all, so there's no way to touch the fs
> > > > > etc. regardless of what flags the interpreter is invoked with.
> > > > >
> > > > > (I, too, find removing the ability to look at historical
> > > > > postscript documents a bit more draconian than I like.)
> > > > >
> > > > >    
> > > > I've discussed it with upstream, it's a hard no because they
> > > > feel it would make ghostscript non-conforming (i.e.
> > > > non-conforming with the Adobe PostScript Language Reference
> > > > Manual)
> > > > 
> > > > We probably have similar thoughts on this, but that is the final
> > > > word from upstream.  
> > > 
> > > They wouldn't even support a compilation mode where if you #define
> > > the right thing those syscalls are cut out?
> > > 
> > > I don't care much about upstream's desires on this if they oppose
> > > that. I'd be happy to have patches that simply cut out the
> > > dangerous syscalls entirely. It's open source, that should be
> > > feasible.  
> > 
> > This. It's utterly ridiculous that the interpreter even has bindings
> > for accessing the filesystem and such. But I wonder if some of its
> > library routines (e.g. font loading) are implemented in Postscript,
> > using these bindings, rather than being implemented in C outside of
> > the language interpreter. If so it might be harder to extricate.
> > But I still think it's worthwhile to try. Once there are patches I
> > would expect all reasonable distros to start shipping with them,
> > and if upstream tries to make it hard, I would expect one of the
> > big distros to just fork and abandon upstream.
> 
> Does anyone other than Tavis know their way around the inside of the
> codebase? Perhaps we can collaborate on patches.

I don't, but one further idea that might appeal to upstream if they
want the fs bindings for the sake of executing ancient programs
written in postscript that operate on files: rather than binding to
actual fs operations on the host, implement a virtual filesystem
within the interpreter, and require explicit command line options to
import/export files from/to the real filesystem at entry/exit.

Rich
