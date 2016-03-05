X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2549" "Saturday" "5" "March" "2016" "14:43:06" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20160305224306.GE1250@sentinelchicken.org>" "51" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030522:43:06" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "U       tim-security Mar  5   51/2549  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<20160305205322.GA23295@openwall.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>" "<CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>" "<20160305205322.GA23295@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17550 invoked by uid 550); 5 Mar 2016 22:43:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17525 invoked from network); 5 Mar 2016 22:43:27 -0000
Message-ID: <20160305224306.GE1250@sentinelchicken.org>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
 <56D9DD1F.1030302@cert.org>
 <20160305172039.GA20796@openwall.com>
 <CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>
 <20160305205322.GA23295@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160305205322.GA23295@openwall.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Sat, 5 Mar 2016 14:43:06 -0800
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: oss-security@lists.openwall.com


> Of course, the information will need to be available to those
> third-party databases from somewhere - but this can be the researcher's
> or the vendor's disclosure, as you say.  Until such disclosure, a
> customer would not even be aware of the ID, let alone want to look it up.

The trouble with third-party databases is that they aren't a reliable
archive of information.  I can't tell you how many times I've found a
vulnerability scanner detecting an issue, and I go back to get more
details to understand the risk, only to find all the technical details
have been taken offline.  It is a major gap in the security
community's (and IT industry's) tool set that we don't have a
reliable, single archive of vulnerability information.  It is a huge
waste of time looking up every bug.  And when I say "reliable" I
merely mean the information won't go away tomorrow (like the old FD
did so suddenly).  I don't mean the information must always be true or
validated, just available.

Providing something like this is clearly a significant undertaking and
isn't something most security companies can make any real money at.
*Maybe* a well-thought-out non-profit could accomplish this and still
make ends meet by providing bulk feeds for a small subscription fee.
Obviously a government has the resources to do this, if not always the
competence.  Currently my government is just "letting the Internet
burn", as they say, so I'm not optimistic that DHS or whatever is
going to step up.


> A drawback is that such requests become somewhat security-sensitive, if
> for yet unpublished issues.  This is already a major concern with CVE,
> where information may be subject to unjustified risk for the purpose of
> merely getting an ID assigned.


That's a good point.  As a researcher, I want an ID very early in the
process (before going public) so I can refer to it when interacting
with a vendor and draft my advisory in advance.  One *could* accept
submissions "to be released on date ...", but then any database like
that will become a target.

So instead, this hypothetical web app could require only basic
information about the products affected up front, and then allow
arbitrary additions of content later.  (Note I said additions, not
changes).  I think it should also allow anonymous submission, perhaps
only with validation of email addresses (which could be burners).  It's
all too easy for researchers to become victim of idiotic libel
lawsuits.  (Which then leads one to wonder what legal defenses the
hosting org needs...)

Cheers,
tim
