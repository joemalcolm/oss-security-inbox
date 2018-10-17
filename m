X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1359" "Wednesday" "17" "October" "2018" "02:14:46" "-0400" "Rich Felker" "dalias@libc.org" "<20181017061446.GM5150@brightrain.aerifal.cx>" "32" "Re: [oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" "^Cc:" nil nil "10" "2018101706:14:46" "[oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" (number mark "        dalias@libc. Oct 17   32/1359  " thread-indent "\"Re: [oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284\"\n") "<CAJ_zFkJog41qbQ6DgP=jcEts-pDo+z1AKhcnYC7kJCri=+5qSQ@mail.gmail.com>" ("<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>" "<20181016155722.32978ab2@jabberwock.cb.piermont.com>" "<CAJ_zFkJog41qbQ6DgP=jcEts-pDo+z1AKhcnYC7kJCri=+5qSQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24158 invoked by uid 550); 17 Oct 2018 06:25:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9515 invoked from network); 17 Oct 2018 06:14:58 -0000
Message-ID: <20181017061446.GM5150@brightrain.aerifal.cx>
References: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>
 <20181016155722.32978ab2@jabberwock.cb.piermont.com>
 <CAJ_zFkJog41qbQ6DgP=jcEts-pDo+z1AKhcnYC7kJCri=+5qSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ_zFkJog41qbQ6DgP=jcEts-pDo+z1AKhcnYC7kJCri=+5qSQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Perry Metzger <perry@piermont.com>
Date: Wed, 17 Oct 2018 02:14:46 -0400
From: Rich Felker <dalias@libc.org>
Reply-To: oss-security@lists.openwall.com
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] ghostscript: 1Policy operator gives access to
 .forceput CVE-2018-18284
To: oss-security@lists.openwall.com

On Tue, Oct 16, 2018 at 01:33:32PM -0700, Tavis Ormandy wrote:
> On Tue, Oct 16, 2018 at 12:57 PM Perry E. Metzger <perry@piermont.com>
> wrote:
> 
> > On Tue, 16 Oct 2018 11:06:14 -0700 Tavis Ormandy <taviso@google.com>
> > wrote:
> > > Side note: I'm done looking at ghostscript for now, but still
> > > *strongly* recommend that we deprecate untrusted postscript and
> > > disable ghostscript coders by default in policy.xml.
> >
> > Again, given that PostScript is an archival format for a lot of
> > documents, wouldn't a version of ghostscript with all the ability to
> > do anything dangerous removed from the interpreter at compile time be
> > rational?
> >
> >
> We have to work with what we've got.
> 
> Even with the easy to exploit stuff compiled out (which upstream do not
> support), I haven't been bothering to get CVE's for all the memory
> corruption or UaF I've been reporting, because nobody can keep up with
> these operator leaks anyway.

An obvious fix for UaF's would be just removing the frees. Use of gs
as an interactive program where leaks would matter is a historical
curiosity; the only meaningful modern use is as a converter.

If someone insists there are still uses where freeing matters,
something like talloc may be a reasonable solution, removing all the
internal frees and only performing frees of the whole context.

Rich
