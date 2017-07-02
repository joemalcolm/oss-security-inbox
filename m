X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4831" "Sunday" "2" "July" "2017" "19:27:22" "+0200" "Solar Designer" "solar@openwall.com" "<20170702172722.GA14846@openwall.com>" "72" "Re: [oss-security] accepting new members to (linux-)distros lists" "^Date:" nil nil "7" "2017070217:27:22" "[oss-security] accepting new members to (linux-)distros lists" (number mark "        solar@openwa Jul  2   72/4831  " thread-indent "\"Re: [oss-security] accepting new members to (linux-)distros lists\"\n") "<JDxm3O7NWomNLVgdcsS4bAEEjCWg6EXBzYrfpZkg9d7XEMLDZMtjnnGSLch-kPujtlaLX7Zlg96uQznDA33KitamLs68gnrjAw77uWCWIM8=@itk.swiss>" ("<20170628200239.GA25525@openwall.com>" "<20170630132209.GA4625@openwall.com>" "<20170630195516.GB1011@hunt>" "<20170630201642.GA9159@openwall.com>" "<e6ea9fe9-1b52-11c3-fcce-bc13d3b7fd6a@windriver.com>" "<20170701140735.GA10593@openwall.com>" "<JDxm3O7NWomNLVgdcsS4bAEEjCWg6EXBzYrfpZkg9d7XEMLDZMtjnnGSLch-kPujtlaLX7Zlg96uQznDA33KitamLs68gnrjAw77uWCWIM8=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15869 invoked by uid 550); 2 Jul 2017 17:28:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14111 invoked from network); 2 Jul 2017 17:27:26 -0000
Message-ID: <20170702172722.GA14846@openwall.com>
References: <20170628200239.GA25525@openwall.com> <20170630132209.GA4625@openwall.com> <20170630195516.GB1011@hunt> <20170630201642.GA9159@openwall.com> <e6ea9fe9-1b52-11c3-fcce-bc13d3b7fd6a@windriver.com> <20170701140735.GA10593@openwall.com> <JDxm3O7NWomNLVgdcsS4bAEEjCWg6EXBzYrfpZkg9d7XEMLDZMtjnnGSLch-kPujtlaLX7Zlg96uQznDA33KitamLs68gnrjAw77uWCWIM8=@itk.swiss>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <JDxm3O7NWomNLVgdcsS4bAEEjCWg6EXBzYrfpZkg9d7XEMLDZMtjnnGSLch-kPujtlaLX7Zlg96uQznDA33KitamLs68gnrjAw77uWCWIM8=@itk.swiss>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 2 Jul 2017 19:27:22 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
To: oss-security@lists.openwall.com

On Sat, Jul 01, 2017 at 03:23:07PM -0400, Stiepan wrote:
> I have a general remark on the recent developments on this list, in particular in relation with the "distros" list and especially, focusing on Linux kernel security:
> a core issue at hand seems to be the funding of work that follows due diligence, standards and so forth, which is a top priority, and should be given appropriate importance at the top decision-making level. I think that in that line, applying for institutional funding through calls for H2020 public-private partnerships such as https://ec.europa.eu/research/participants/portal/desktop/en/opportunities/h2020/topics/ds-08-2017.html and similar non-European initiatives - if there are any - would be more than appropriate, as Linux is a core privacy-enhancing technology, in addition to the fact that "Open source and externally auditable solutions are encouraged in order to maximise uptake and increase the trustworthiness of proposed solutions.". By the way, the same would apply for BSDs, where I have a more direct interest, although they do not share Linux's European heritage! ;)

Thank you for thinking outside the box and suggesting this, but no,
"in relation with the "distros" list" (in your words), let's not apply
for any funding.  Here are some reasons why not, in arbitrary order:

1. The costs of hosting one old server for the distros list are small.

2. The effort of administering that system is also small. (*)

3. The effort of handling the administrative tasks is also small - I
shared my estimate of it in the previous message I sent to this thread.

4. I think this effort is best spread across the distros, and that's not
because one entity could not bear the full "cost" (I think many could),
but because we should prefer to have all distros visibly involved and
responsible (if a distro isn't, maybe they shouldn't stay subscribed).

5. The effort that may be put into the technical expertise roles/tasks
is ideally not small, but I think it's best that capable distros
themselves take care of it.  This means they're paying their employees
to do this sort of work for the distros community. (**)

6. Which entity would accept the funding?  How would it distribute the
funds to entities/people doing the actual work?  How transparent would
it be?  At least this adds overhead, but it also brings us to:

7. Let's not unnecessarily add to the controversy and thus to potential
conspiracy theories inherently surrounding embargoes and funding.

(*) I admit there are things we probably could do better with greater
effort.  For example, we could rewrite from scratch and release as Open
Source the encrypted mailing list software, which is currently an awful
hack.  I wouldn't oppose doing that piece of software development under
a separate funded project, if capable people were available for that.
However, I am worried that most teams tasked to work on something like
this would produce a complex monster, which wouldn't otherwise be
directly comparable (as in: is it better or worse? is it more or less
secure?) to the current hack.

(**) A month ago, we also started to accept capable and trusted
volunteers.  I am currently undecided on whether this should change if
some distros accept responsibility for all of the same roles.  It would
seem unfair to use these volunteers' time when the distros are paying
their employees to do similar work, whereas the volunteers join in their
individual capacity independent from their employment.

As to "focusing on Linux kernel security" (also in your words), we
already see how something like this is happening with KSPP.  Various
companies pay their employees to do portions of the work, Linux
Foundation funds a few other people's work, and there are many
volunteers.  All of this is met with criticism, controversy, and
conspiracy theories.  Yet the project proceeds, even if arguably slowly
and inefficiently.  Overall, would it benefit from or be hurt by more
funding, or by an extra funding source?  I don't know.  Funding creates
an incentive to work on and push academic security detached from
real-world threats.  That said, with no formal entity behind KSPP, lucky
people may choose whether and how they want their potential
contributions funded.  I guess someone or a team could apply for a grant
under H2020, then participate in KSPP.  This might or might not be a
good thing.

I think funded work generally has lower efficiency than volunteer work,
and I also think that's fine.  Ditto for coordinated effort rather than
independent work.  Low efficiency is part of the criticism, but I think
this is not entirely justified - that's just how things work in funded
and larger projects (in people count, not LOC).  I say this in relation
to KSPP.  I think we don't need to go for this for the distros list.

Alexander
