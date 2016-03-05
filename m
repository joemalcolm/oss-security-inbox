X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1796" "Friday" "4" "March" "2016" "16:07:40" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20160305000740.GB1250@sentinelchicken.org>" "42" "Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Cc:" nil nil "3" "2016030500:07:40" "[oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        tim-security Mar  4   42/1796  " thread-indent "\"Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM>" "<CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21814 invoked by uid 550); 5 Mar 2016 00:08:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21796 invoked from network); 5 Mar 2016 00:08:00 -0000
Message-ID: <20160305000740.GB1250@sentinelchicken.org>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
 <56D9DD1F.1030302@cert.org>
 <6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM>
 <CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Art Manion <amanion@cert.org>, Kurt Seifried <kseifried@redhat.com>, cve-editorial-board-list <cve-editorial-board-list@lists.mitre.org>
Date: Fri, 4 Mar 2016 16:07:40 -0800
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] RE: Concerns about CVE coverage shrinking -
 direct impact to researchers/companies
To: oss-security@lists.openwall.com


> The level of frustration in the research community has been growing,
> with steady calls for a new CVE-like solution that is designed to
> address these needs in a more effective way. I greatly appreciate the
> work that has been done, but at this point CVE is becoming less
> useful, less relevant - if this isn't addressed, my expectation is
> that a CVE-like solution will be adopted by the community, and
> researchers will begin moving away from requesting CVEs.


The CVE system is clearly breaking down.

I think we need a system that is less moderated and more content
driven.  I imagine a simple site, which looks like a stripped-down bug
tracker.  Let's suppose it acts like this:

* Any researcher can post "claims" about vulnerabilities.  This
  assigns an identifier immediately.

* Claims about vulnerabilities may be reviewed, eventually, by an
  authority whose job it is to be sure the claim is associated
  properly with a real product/version and that the product owners are
  notified through an automated process (e.g. "security@...").

* Product owners can respond to claims, which will appear along side
  the claim.  Links to patches or refutations can be included.

* No moderation required.  Let the public decide if they believe the
  researcher or vendor.  If a moderator does bother to look over the
  content, they could deduplicate/link issues together and address any
  confusion, but beyond that, it isn't their job to decide what is a
  vulnerability and what isn't.

* All information posted in this system exists publicly forever.
  Links to external content (that isn't well represented in the
  posting) are frowned upon, since the Internet Archive clearly can't
  keep up with everything.  We need an archive that doesn't go away.


Ok, beat it up.

tim
