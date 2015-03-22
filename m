X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1962" "Sunday" "22" "March" "2015" "12:44:37" "+0100" "Florian Weimer" "fw@deneb.enyo.de" "<87pp81b6je.fsf@mid.deneb.enyo.de>" "41" "Re: [oss-security] membership request to the closed linux-distros security mailing list" nil nil nil "3" "2015032211:44:37" "[oss-security] membership request to the closed linux-distros security mailing list" (number mark "        fw@deneb.eny Mar 22   41/1962  " thread-indent "\"Re: [oss-security] membership request to the closed linux-distros security mailing list\"\n") "<20150320155026.GF3718@symphytum.spacehopper.org>" ("<550C19ED.9030901@enea.com>" "<20150320145413.GA10416@openwall.com>" "<CA+aC4kt54Z-17hjZ6JOLONFBeqRyFFUAn4+O7TL8fUrqrSeQ8g@mail.gmail.com>" "<20150320155026.GF3718@symphytum.spacehopper.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3485 invoked by uid 550); 22 Mar 2015 11:44:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3464 invoked from network); 22 Mar 2015 11:44:48 -0000
References: <550C19ED.9030901@enea.com> <20150320145413.GA10416@openwall.com>
	<CA+aC4kt54Z-17hjZ6JOLONFBeqRyFFUAn4+O7TL8fUrqrSeQ8g@mail.gmail.com>
	<20150320155026.GF3718@symphytum.spacehopper.org>
In-Reply-To: <20150320155026.GF3718@symphytum.spacehopper.org> (Stuart
	Henderson's message of "Fri, 20 Mar 2015 15:50:26 +0000")
Message-ID: <87pp81b6je.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 22 Mar 2015 12:44:37 +0100
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] membership request to the closed linux-distros security mailing list
To: oss-security@lists.openwall.com

* Stuart Henderson:

> On 2015/03/20 08:16, Anthony Liguori wrote:
>>=20
>> I think the alternative is to formalize what already appears to be the
>> existing practice: disclose distros@ on the existence of a
>> vulnerability but require direct contact for the details of the
>> vulnerability if the submitter/upstream thinks the impact is high.
>
> Are private lists even needed if this policy is taken?

Yes, it is.  Often, things are bad enough that just looking at the
software for five minutes is sufficient to rediscover the
vulnerability.  Or maybe a couple of different vulnerabilities with
similar impact.

There's also interaction with CVE assignment.  The current, working
assignment process requires short embargoes at least.  And a certain
subset of reporters cares about the CVE assignment above anything else
because it's a widely-accepted metric for having found something,
which in turn indicates that the reporters have done their job.  I
think we can and should reduce the number of embargoes, but we'd have
to address the CVE assignment process for public issues at the same
time.

Reducing the number of embargoes would also help those
quasi-proprietary vendors and show them that building upstream
relationships and tracking their software portfolio are the key tasks,
and not getting a few days advance notice for vulnerabilities.  Most
GNU/Linux distributions can fix about anything that's fixable at all
within two or three weeks (and that includes the analysis required to
actually understand the bug).  Most quasi-proprietary vendors work on
totally different time scales, and even if they do not have to do the
analysis themselves, a few weeks is nothing to them.

But here's another perspective.  Lior Kaplan writes, =E2=80=9CEven if the
issue isn't severe, upstream should get a fair chance to fix issue
before making them public.=E2=80=9D

<https://liorkaplan.wordpress.com/2015/03/19/cve-assignment-without-upstrea=
m-knowledge/>
