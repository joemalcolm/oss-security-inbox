X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2642" "Wednesday" "5" "July" "2017" "15:33:41" "+0200" "Solar Designer" "solar@openwall.com" "<20170705133341.GA31268@openwall.com>" "55" "Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" "^Date:" nil nil "7" "2017070513:33:41" "[oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" (number mark "        solar@openwa Jul  5   55/2642  " thread-indent "\"Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)\"\n") "<CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>" ("<CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>" "<20170705123427.mky43jbckj4quua2@lorien.valinor.li>" "<CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32002 invoked by uid 550); 5 Jul 2017 13:34:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31836 invoked from network); 5 Jul 2017 13:33:55 -0000
Message-ID: <20170705133341.GA31268@openwall.com>
References: <CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com> <20170705123427.mky43jbckj4quua2@lorien.valinor.li> <CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 5 Jul 2017 15:33:41 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)
To: oss-security@lists.openwall.com

On Wed, Jul 05, 2017 at 03:50:58PM +0300, Lior Kaplan wrote:
> AFAIK, when the issue is already public the list is just fine.
> 
> From the cve-assign auto reply:
> 
> "In the special case of communications involving a publicly known
> vulnerability on the oss-security mailing list, please do not use
> the https://cveform.mitre.org web site at this time, and instead
> send new or followup messages directly to that mailing list."

I think the above is about additional "communications involving" a
vulnerability that already has a CVE ID, not about the CVE request.

FWIW, on the distros list wiki page, we currently ask to avoid using the
private lists if one's "sole purpose of their use is to obtain a CVE ID",
and in a footnote we give this alternative procedure:

"In those "CVE only" cases, please start by posting about the (to be
made) public issue to oss-security (without a CVE ID), request a CVE ID
from MITRE directly, and finally "reply" to your own posting when you
also have the CVE ID to add.  With the described approach you would only
approach MITRE after the issue is already public, but if you choose to
do things differently and contact MITRE about an issue that is not yet
public, then please do not disclose to them more than the absolute
minimum needed for them to assign a CVE ID."

"from MITRE directly" is a link to https://cveform.mitre.org and "the
absolute minimum" is a link to
http://www.openwall.com/lists/oss-security/2015/04/14/3

I hope this procedure is consistent with everyone's expectations.
Salvatore reply quoted below is consistent with it.  Thank you for
helping run this list, Salvatore!

I think that ideally we add to such boilerplate replies (the need for
which will hopefully become infrequent) that we appreciate being
notified of the vulnerabilities first (before the CVE IDs are requested
from MITRE) and want it to stay this way going forward (just not in the
form of CVE requests, but rather in the form of vulnerability
notifications also stating that CVE IDs are being requested separately
and will be posted in here later).

I don't care about CVEs much, but we need to know where to redirect
those requests to, and we also need to make it likely that we'll receive
the actual vulnerability detail on oss-security (the sooner, the better).

> On Wed, Jul 5, 2017 at 3:34 PM, Salvatore Bonaccorso <carnil@debian.org> wrote:
> > CVE assignement requests are not handled anymore directly via the
> > oss-security list, but need to be filled/requested at
> > https://cveform.mitre.org/
> >
> > Once CVE are assigned, can you repost them here for benefit of other
> > reader?

Alexander
