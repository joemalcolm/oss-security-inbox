X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2031" "Saturday" "5" "March" "2016" "23:53:22" "+0300" "Solar Designer" "solar@openwall.com" "<20160305205322.GA23295@openwall.com>" "45" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030520:53:22" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        solar@openwa Mar  5   45/2031  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>" "<CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18424 invoked by uid 550); 5 Mar 2016 20:53:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18406 invoked from network); 5 Mar 2016 20:53:31 -0000
Message-ID: <20160305205322.GA23295@openwall.com>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com> <56D9DD1F.1030302@cert.org> <20160305172039.GA20796@openwall.com> <CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 5 Mar 2016 23:53:22 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies
To: oss-security@lists.openwall.com

On Sat, Mar 05, 2016 at 03:25:49PM -0500, Adam Caudill wrote:
> I very much like the idea of being able to get an ID instantly - it
> greatly simplifies an otherwise time consuming process. That said, I
> can see some issues with OVE:
> 
> * No Lookup - For a customer, going from OVE to what it represents
> could be complicated. It depends entirely on the researcher or vendor
> publishing a reference for that ID.

... or on any third-party doing it.  I expect that various existing
vulnerability databases will start listing OVE IDs along with other IDs
they're currently listing.  Whatever IDs are available for an issue.

Of course, the information will need to be available to those
third-party databases from somewhere - but this can be the researcher's
or the vendor's disclosure, as you say.  Until such disclosure, a
customer would not even be aware of the ID, let alone want to look it up.

> * Invalid Entries - As noted, there's no way to see if a given ID is
> considered valid, and while there is value to just having an ID, this
> model makes later curation more difficult. With no information behind
> the ID, there's no opportunity to later expand into a more complete
> solution.

I think there is such opportunity, it's just possibly more difficult.

> Here is what I would like to see:

This sounds similar to what Tim wanted.  Feel free to implement that.
I think if such a thing appears, there may still be interest in a
bare-bones solution, which OVE currently is.  I have no current plans to
expand OVE into a more complete solution.

> * Simple ID Request - Data required should be minimal, though I think
> a few basic items are needed. Perhaps vendor, product, version(s),
> title, and contact information.

A drawback is that such requests become somewhat security-sensitive, if
for yet unpublished issues.  This is already a major concern with CVE,
where information may be subject to unjustified risk for the purpose of
merely getting an ID assigned.

OVE currently side-steps the issue.

Alexander
