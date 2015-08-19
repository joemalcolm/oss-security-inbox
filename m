X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2528" "Thursday" "20" "August" "2015" "00:26:28" "+0300" "Solar Designer" "solar@openwall.com" "<20150819212628.GA20648@openwall.com>" "54" "Re: [oss-security] CVE request - Processor side channels using out of order execution" nil nil nil "8" "2015081921:26:28" "[oss-security] CVE request - Processor side channels using out of order execution" (number mark "        solar@openwa Aug 20   54/2528  " thread-indent "\"Re: [oss-security] CVE request - Processor side channels using out of order execution\"\n") "<3F44AEC5-FF76-430D-BD8E-CC0E2E6BBDC0@trailofbits.com>" ("<9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com>" "<20150812141846.GA8647@openwall.com>" "<E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>" "<E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com>" "<CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com>" "<3F44AEC5-FF76-430D-BD8E-CC0E2E6BBDC0@trailofbits.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13934 invoked by uid 550); 19 Aug 2015 21:26:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13909 invoked from network); 19 Aug 2015 21:26:35 -0000
Message-ID: <20150819212628.GA20648@openwall.com>
References: <9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com> <20150812141846.GA8647@openwall.com> <E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com> <E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com> <CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com> <3F44AEC5-FF76-430D-BD8E-CC0E2E6BBDC0@trailofbits.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3F44AEC5-FF76-430D-BD8E-CC0E2E6BBDC0@trailofbits.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 20 Aug 2015 00:26:28 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Processor side channels using out of order execution
To: oss-security@lists.openwall.com

Sophia, Kurt, all -

This is an old-fashioned mailing list, not business correspondence.
Top-posting and over-quoting are discouraged.  Also discouraged are what
I call thanks-only postings.  It's polite to thank the person, but
unless you have something valuable to add, those postings are not worth
distributing to all the list subscribers.

To make my own posting more valuable (rather than moderation-only):

> > On Wed, Aug 19, 2015 at 2:29 PM, sophia <sophia@trailofbits.com> wrote:
> >> Just wondering how to get more information about the process for
> >> requesting a CVE for this vulnerability.

Kurt provided that, but more importantly: you should be patient.  MITRE
are often slow at assigning CVE IDs.  It's only been a week.  They often
need several weeks, unfortunately.  (In contrast, Kurt is usually quick
to assign CVE IDs on the distros list, but this only works for not yet
public issues and is only acceptable if those issues are disclosed to
the distros list primarily for the purpose of informing the distros
rather than for acquiring a CVE ID.  Having a CVE ID is too unimportant
to be worth the risk.)

> >> On Aug 12, 2015, at 12:24 PM, sophia <sophia@trailofbits.com> wrote:
> >>> The vulnerability definitely applies to hypervisors as used by popular
> >>> commercial cloud platforms. These hypervisors try to guarantee that one
> >>> user's processes in a VM are meant to be isolated from another VM's.
> >>> Isolation is referenced as a feature multiple times in Xen's spec:
> >>> http://www-archive.xenproject.org/files/Marketing/WhyXen.pdf.

WhyXen.pdf does mention isolation, but it doesn't mention covert
channels, leaving it ambiguous (to those of us aware of the possibility
of covert channels) what level of isolation is actually intended.  Maybe
they need to revise the document to explicitly exclude covert channels.

Historically, access control didn't automatically imply lack of covert
channels.  For example, per the Orange Book covert channels weren't even
considered for the lower classes such as C1 and C2, where typical and
"Trusted" multi-user systems fell.  They are only considered starting
with B2 and B3, which rarely applied:

https://en.wikipedia.org/wiki/Trusted_Computer_System_Evaluation_Criteria#Divisions_and_classes

Once again, to avoid misunderstanding, I only use this as a historical
reference.

> >>> Also, I will release all of my code on my website when I get back to my
> >>> server later today.

Have you?  Please post the URL in here.

Thank you!

Alexander
