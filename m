X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1379" "Sunday" "6" "March" "2016" "19:16:17" "+0300" "Solar Designer" "solar@openwall.com" "<20160306161617.GA30781@openwall.com>" "29" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030616:16:17" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        solar@openwa Mar  6   29/1379  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<CAFHyJTqHw=Cjg6C-u4eUyUVe9bcntn+LombQ+fnosgXBy79OZA@mail.gmail.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>" "<20160306062700.GA25289@gremlin.ru>" "<110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com>" "<20160306150917.GA29105@openwall.com>" "<CAFHyJTqHw=Cjg6C-u4eUyUVe9bcntn+LombQ+fnosgXBy79OZA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3794 invoked by uid 550); 6 Mar 2016 16:16:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3774 invoked from network); 6 Mar 2016 16:16:23 -0000
Message-ID: <20160306161617.GA30781@openwall.com>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com> <56D9DD1F.1030302@cert.org> <20160305172039.GA20796@openwall.com> <20160306062700.GA25289@gremlin.ru> <110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com> <20160306150917.GA29105@openwall.com> <CAFHyJTqHw=Cjg6C-u4eUyUVe9bcntn+LombQ+fnosgXBy79OZA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFHyJTqHw=Cjg6C-u4eUyUVe9bcntn+LombQ+fnosgXBy79OZA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 6 Mar 2016 19:16:17 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies
To: oss-security@lists.openwall.com

On Sun, Mar 06, 2016 at 03:47:19PM +0000, op7ic x00 wrote:
> agree, the vanity hunting is going to be there but I suppose as with any
> bug ID that is going to happen.
> But beyond that I don't think it matters as much. In the end of the day if
> somebody can use OVI or OVE to identify their bug then at least we got some
> level of reference to look it up on google.

Right.

> I was toying with 4digit IDs that would be random enough, thats a
> possiblity too, the only problem is that there is a overhead of doing DB
> sorting and lookups to make sure their don't clash. Thats why ovi uses
> sequential numbers - its just easier to manage.

Oh, you (would) use an actual database backend?  OVE currently uses a C
program with a tiny binary data file (to keep track of per-IP and
per-netblock consumption of IDs, as well as the current date and ID),
and the file is wiped clean (by this same program) on first access after
midnight.  I wrote this yesterday in response to the thread in here.

For random IDs, if we wanted those, there are shuffling algorithms that
don't require storage yet guarantee unique numbers (until the target
range is exhausted) - they're good e.g. for IP ID and DNS sequence
numbers - although checking against an array of 10k numbers is almost
instant anyway (as far as this application is concerned).

Anyway, this is getting off-topic.

Alexander
