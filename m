X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2636" "Tuesday" "10" "May" "2016" "21:28:38" "+0200" "Michael Scherer" "misc@zarb.org" "<20160510192837.GB30154@sisay.ephaone.org>" "78" "Re: [oss-security] BitKeeper /tmp vulns" nil nil nil "5" "2016051019:28:38" "[oss-security] BitKeeper /tmp vulns" (number mark "U       misc@zarb.or May 10   78/2636  " thread-indent "\"Re: [oss-security] BitKeeper /tmp vulns\"\n") "<CANO=Ty3x2M-OqiUoQssjW4WjuamLyjpVeFckCH2GuZVVeh5xLg@mail.gmail.com>" ("<CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>" "<20160510162457.GA30154@sisay.ephaone.org>" "<CANO=Ty3x2M-OqiUoQssjW4WjuamLyjpVeFckCH2GuZVVeh5xLg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22334 invoked by uid 550); 10 May 2016 19:29:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22293 invoked from network); 10 May 2016 19:29:20 -0000
Date: Tue, 10 May 2016 21:28:38 +0200
From: Michael Scherer <misc@zarb.org>
To: oss-security@lists.openwall.com
Cc: security@bitkeeper.com
Message-ID: <20160510192837.GB30154@sisay.ephaone.org>
References: <CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>
 <20160510162457.GA30154@sisay.ephaone.org>
 <CANO=Ty3x2M-OqiUoQssjW4WjuamLyjpVeFckCH2GuZVVeh5xLg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <CANO=Ty3x2M-OqiUoQssjW4WjuamLyjpVeFckCH2GuZVVeh5xLg@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: Re: [oss-security] BitKeeper /tmp vulns

On Tue, May 10, 2016 at 10:43:27AM -0600, Kurt Seifried wrote:
> Hopefully security@bitkeeper.com (it doesn't bounce so I assume it's valid)
> will review/address these.

So, looking at the current files included in the installer:
https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/import.sh#L952
https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/import.sh#L834
https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/import.sh#L709

from a quick check, this seems to be run with "bk import".

There is this file
https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/bk.sh#L283
https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/bk.sh#L337
nder the name bk.script

And apply-patch:
https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/applypatch.sh#L33

And that' just on the shell code.

There is also fun stuff like
https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/gnu/diffutils/sdiff.c

whose last edit is in 2000, but in 2001, someone found CVE-2001-0117


> On Tue, May 10, 2016 at 10:24 AM, Michael Scherer <misc@zarb.org> wrote:
> 
> > On Tue, May 10, 2016 at 09:31:27AM -0600, Kurt Seifried wrote:
> > > Not found by me, mentioned on HackerNews:
> > >
> > > https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/bk.sh#L485
> >
> > Just to clarify, the vuln was not mentioned on HN, just the new about it
> > being
> > under a free license. Then I did a git clone, and grep /tmp and pointed on
> > internal
> > IRC that, as usual, there is a ton of /tmp issue (and then Kurt did see
> > and asked where I did see it,
> > and answered on HN (to the question "bk is now opensource").
> >
> > > BitKeeper is under Apache license so here it is.
> > >
> > > Also a quick look at the source shows a ton of other potential /tmp/
> > vulns,
> > > CC'ing bitkeeper security
> >
> > for example:
> >
> > https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/utils/bk_version#L1563
> >
> > There is also a few here:
> >
> > https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/utils/extractor.c
> >
> > but that's the installation script, so unlikely to be exploitable.
> >
> > Or in apply-patch, etc.
> >
> > But there is also a few projects that are bundled (like zlib), and a few
> > scripts that
> > are used only at installation and/or build time, so classifying everything
> > is more
> > work than what I have time to devote for the project.
> >
> > --
> > Michael Scherer
> >
> 
> 
> 
> -- 
> 
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
