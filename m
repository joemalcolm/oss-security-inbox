X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3004" "Monday" "7" "March" "2016" "15:28:03" "+0000" "Radzykewycz, T (Radzy)" "radzy@windriver.com" "<33006C99F5A5194A9B7A7715DFA3E383EB84DCEF@ALA-MBA.corp.ad.wrs.com>" "64" "[oss-security] RE: [security-vendor] Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030715:28:03" "[oss-security] RE: [security-vendor] Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        radzy@windri Mar  7   64/3004  " thread-indent "\"[oss-security] RE: [security-vendor] Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<56DCDDCD.8070600@treenet.co.nz>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>" "<20160306062700.GA25289@gremlin.ru>" "<110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com>" "<20160306150917.GA29105@openwall.com>" "<CAFHyJTqHw=Cjg6C-u4eUyUVe9bcntn+LombQ+fnosgXBy79OZA@mail.gmail.com>" "<20160306161617.GA30781@openwall.com>" "<8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net>" "<56DC959A.6060200@gmail.com>" "<56DCDDCD.8070600@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32637 invoked by uid 550); 7 Mar 2016 15:28:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32608 invoked from network); 7 Mar 2016 15:28:31 -0000
Thread-Topic: [security-vendor] Re: [oss-security] Concerns about CVE
 coverage shrinking - direct impact to researchers/companies
Thread-Index: AQHRdwOmbuXn7Px030WZBvVj/Xd8Ip9MenYAgABoJgCAACnGgIAACqGAgAAIF4CAABDfAIAAOMkAgABWEYCAAF3S2g==
Message-ID: <33006C99F5A5194A9B7A7715DFA3E383EB84DCEF@ALA-MBA.corp.ad.wrs.com>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
 <56D9DD1F.1030302@cert.org> <20160305172039.GA20796@openwall.com>
 <20160306062700.GA25289@gremlin.ru>
 <110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com>
 <20160306150917.GA29105@openwall.com>
 <CAFHyJTqHw=Cjg6C-u4eUyUVe9bcntn+LombQ+fnosgXBy79OZA@mail.gmail.com>
 <20160306161617.GA30781@openwall.com>
 <8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net>
 <56DC959A.6060200@gmail.com>,<56DCDDCD.8070600@treenet.co.nz>
In-Reply-To: <56DCDDCD.8070600@treenet.co.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [147.11.216.89]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date: Mon, 7 Mar 2016 15:28:03 +0000
From: "Radzykewycz, T (Radzy)" <radzy@windriver.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] RE: [security-vendor] Re: [oss-security] Concerns about CVE
 coverage shrinking - direct impact to researchers/companies
To: Amos Jeffries <squid3@treenet.co.nz>,
        "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>


________________________________________
> From: Amos Jeffries [squid3@treenet.co.nz]
> Sent: Sunday, March 06, 2016 5:47 PM
> To: oss-security@lists.openwall.com
> Subject: [security-vendor] Re: [oss-security] Concerns about CVE coverage=
 shrinking - direct impact to researchers/companies
>=20
> On 7/03/2016 9:39 a.m., Gsunde Orangen wrote:
> > I totally agree.
> > The concern addressed by Kurt initially is fully valid (for both
> > researchers and for companies that are not on Mitre's product/sources
> > list), so a new (better: additional) solution is required.
> > However, creating a new standard independently of CVE would be too
> > disruptive and be a disservice to the software industry.
> > I'd propose to work out a new solution together with Mitre, whilst
> > keeping the CVE IDs as today.
> > Since 2014, virtually unlimited number of CVE IDs can be assigned per
> > year [1], so a solution could be that
> >  - Mitre continues to assign 4 and 5 digit IDs as today
> >  - 6 digit IDs are reserved for the new process (hosted outside Mitre)
> > If more than one million vulnerabilities need to be addressed in one
> > year, we could follow the rule (odd digits -> Mitre, even digits ->
> > "other process")
> > From Mitre's POC, this "other process" would become a "CNA", just with
> > its own policy and process definition, not prescribed by Mitre.
> > It would soon become clear to everyone (and all tools and products that
> > rely on CVE) where to look at for the authoritative vulnerability
> > information.
>=20
>=20
> While reading this whole thread I have been thinking along very similar
> but slightly different lines.
>=20
> Right now as a vendor 'security desk' I/we have the situation where we
> have to allocate an internal reference ID anyway while awaiting Mitre
> assignment. These IDs are not spread so widely as CVE in the early
> stages, so we end up with other vendors and downstream distributions not
> quite in the same discussion loop allocating their own temporary numbers
> for the same issue. And some do anyway just because thats the way they
> operate.
> (Those aware of the history might recall this was the exact same
> situation which caused CVE to be created and centralized through Mitre
> in the first place.)
>=20
> Having an easily self-assigned OVI number does sound nice. At least for
> use as a temporary ID that can be publicly shared before the proper
> analysis can be completed by Mitre for a CVE, which can then sub-link.
>=20
> AYJ

Seems like it would be a very simple change, if Mitre were willing
to do it, to have vulnerability reporters include an OVE or OVI
tracking number with every report.  That way, there would be
a number to track from the initial report, and still have the
benefits of a significant review for CVE identifiers.

If Mitre were willing to make it mandatory, I think that might
be best.  But even if not, that wouldn't prohibit researchers
from doing this, though it would be more ad-hoc.

Enjoy!

				-- radzy
