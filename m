X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4016" "Thursday" "10" "March" "2016" "09:33:37" "-0800" "Timothy D. Morgan" "tim-security@sentinelchicken.org" "<20160310173337.GN1250@sentinelchicken.org>" "84" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" nil nil nil "3" "2016031017:33:37" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "U       tim-security Mar 10   84/4016  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>" ("<CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>" "<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>" "<20160309203420.GJ1250@sentinelchicken.org>" "<CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26173 invoked by uid 550); 10 Mar 2016 17:34:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26155 invoked from network); 10 Mar 2016 17:34:02 -0000
Date: Thu, 10 Mar 2016 09:33:37 -0800
From: "Timothy D. Morgan" <tim-security@sentinelchicken.org>
To: oss-security@lists.openwall.com
Message-ID: <20160310173337.GN1250@sentinelchicken.org>
References: <CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>
 <E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>
 <20160309203420.GJ1250@sentinelchicken.org>
 <CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies


Hi Kurt,

I don't mean to ignore what you guys have been working on.  It is
arguably the most mature of the alternatives so far, and we need
people experimenting with real tools right now.  All I was trying to
point out was that we should keep this discussion going even if MITRE
gets their act together in the short term.

More comments below.

> > Suppose MITRE fixes their issues tomorrow and the CVE goes back to the
> > way it was.  Is that really want we need going forward?  A system
> > that's based on sending emails between humans and posting only
> > one-line descriptions with a series of links (half of which are broken
> > after a short time)?  A system which tries to distribute the load by
> > using "big" software vendors, many of whom have a vested interest in
> > limiting what vulnerabilities get published in their software?
> >
> > It seems like we can do better than this.  Infosec hasn't been
> > "working" for some time.  Perhaps we need better tools to help us get
> > ahead of the game.
> >
> 
> Even if Mitre had unlimited funding there will be a need for the community
> to be involved, especially if we're going to make sure that CVE/DWF cover
> important flaws (of which there are thousands right now, and we haven't
> even dealt with the IoT or non english software markets like China....).
> 
> Putting on my info security economics hat:
> 
> And I suspect the solution to this is the same as Open Source, we scale
> out, build a community and process that works and change as needed. DWF is
> one such effort. We aim to reduce the cost of vulnerability identification,
> and vulnerability coordination so that there's more less negative incentive
> (cost in time and effort) to do this right.
> 
> As I've repeatedly stated the DWF wants to work with CVE/Mitre if possible,
> forking vulnerability identification will create additional costs
> (retooling all the systems and process that rely on CVE) so I want to
> minimize that as much as possible, the goal is to make things better and
> easier, not to add another standard for the sake of itself.


Looking at DWF, it seems to have a few advantages over CVE,
particularly for researchers, but it's hardly what I would hope for as
a solution for the public.  Please view this as *constructive*
criticism:

* It is unclear to me on how the system is currently "distributed".
  Yeah, it's in git, but that basically means it is just hosted on
  GitHub.  What if GitHub's policies change tomorrow on distribution
  of vulnerability information?  I imagine you've thought about this,
  so I'm probably just pointing out the obvious.

* There's no facility to describe anything about the vulnerabilites in
  the DWF-database.  As you've probably seen from my past emails, I'm
  arguing for a system that tracks more than just metadata and links.
  (DWF doesn't appear to have links or even simple descriptions.)

The "end user" (sys admins, pentesters, other auditors) need a
database of vulnerability information that is actually useful and
isn't going to go away.   Tomorrow your vuln scanner finds a box
missing a patch in obscure software X from 5 years ago.  All patch
info and researcher info has been taken offline.  How do you
represent that risk to your management?  If the software is no longer
supported by the vendor, but it is still in production in your org,
how do you argue for funds to replace the software?  THIS HAPPENS ALL
OF THE TIME.    

We literally need a way to copy/paste vendor and researcher
advisories, when the bug is first published, into a central database.
(Of course there's copyright/IP concerns there, but if it is valuable
to the community, that can be worked out.)  You can argue that this 
archival should be handled by third-party databases, but pretty much
all of them are commercial and many have gone offline years after
inception.

I recognize you're just getting this started, but I feel when building
a new system, it's always best to tackle the hard problems first.

Best,
tim
@ecbftw
