Received: (qmail 6048 invoked by uid 550); 21 Jun 2023 14:03:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5794 invoked from network); 21 Jun 2023 14:03:16 -0000
Date: Wed, 21 Jun 2023 16:02:28 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20230621140228.GA26707@openwall.com>
References: <b43dbbf1358a42df945de86dee00f452109a7a2e.camel@debian.org> <YT2PR01MB98273D8129B5BB67241FB30BE856A@YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
In-Reply-To: <YT2PR01MB98273D8129B5BB67241FB30BE856A@YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Solar Designer talk about 15 years of oss-security at SSTIC conference

--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

After SSTIC in Rennes, France, I also gave a revision of the talk at
BSidesLjubljana in Ljubljana, Slovenia.  Incidentally, this was SSTIC's
20th anniversary and the event was closed by a related talk on 20+ years
of CERT-FR and ANSSI, whereas this year's BSidesLjubljana was held in
the computer history museum, a fitting venue for the beginning of my
talk, which starts with a retrospective into the 1980s.

Here are the slides:

https://www.openwall.com/presentations/SSTIC-BSidesLjubljana2023-oss-security/

I've attached the Markdown source for these to this message.

Video of the SSTIC talk is available via the link to SSTIC conference
website, and I expect the same will be true for BSidesLjubljana soon.

I'd like to thank the organizers of both of these events for making them
so great.  It was a pleasant experience attending and speaking at these.

On Sat, Jun 10, 2023 at 10:04:44AM +0000, Katherine Mcmillan wrote:
> has there ever been any consideration of having an "oss-security-advocacy" list?

No, but your question got me thinking about it now.  I think that before
possibly setting up a new list, we should have that sort of discussions
in here - then see if we really want to move them to a separate list.

> I like seeing/sharing relevant updates like this.

I see no problem with them being right on the oss-security list.  While
we generally don't allow conference CFPs here, we do allow and encourage
relevant materials from conferences to be shared here.  A minor problem
is sharing actual content vs. links only - we want the actual content
for archival, but these days slide decks tend to be a bit too large
for relaying them to all list members most of whom don't need a copy.

On Tue, Jun 13, 2023 at 07:48:40PM +0300, Georgi Guninski wrote:
> I am missing the old full disclosure mailing list,
> there is little discussion on oss-security.

I'm all for more discussion, but I'd like it to be relevant and helpful.

Alexander

--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="SSTIC-BSidesLjubljana2023-oss-security.md"

%title 15+ years of oss-security
%author @solardiz  @Openwall  SSTIC / BSidesLjubljana  June 2023

-> A talk by <-

-> Solar Designer <solar@openwall.com> <-
-> @solardiz <-

-> @Openwall / https://www.openwall.com <-

-> @Binarly_io / https://binarly.io <-

-> June 2023 <-

---

-> Disclosure debate <-

* "As far back as the 19th century, we had Locksmiths trying to figure out how
  to reasonably disclose weaknesses in locks" (Haroon Meer, 2015)

* Non-disclosure

* Responsible disclosure
  - Unnecessarily judgmental term, as if any other option were irresponsible

* Full disclosure

* Security holes are just bugs
  - "security holes in Unix should be treated like any other bug and reported"
    (opinion mentioned in the very first "Security Mail List" posting, 1984)
  - "[...] "disclosing" is the fixing of the bug" (Linus Torvalds, 2008)

---

-> Timeline <-

```
 1980----------------1990----------------2000----------------2010------------>

 Usenet net.unix-wizards   Bugtraq         Vulnwatch     oss-security
 {alt,comp}.security.*     1993 - 2020     2001 - 2008   2008 - present
 1980s - 2000s                               full-disclosure
                                             2002 - present

         Security Mail List        vendor-sec                  (linux-)distros
         1984 - 1989               1997 - 2011                 2011 - present
                   Zardoz
                   1989 - 1991

                 CERT/CC                                 oCERT
                 1988 - present                          2008 - 2017
```

---

-> Introducing oss-security <-

* Started in 2008 due to prodding by Josh Bressers
  - Purposefully independent from any _major_ distro vendor

* Public mailing list (and wiki) focused on Open Source software security
  - Bugtraq and full-disclosure were not focused
  - vendor-sec was not public
^

* Added private mailing list(s) (linux-)distros in 2011
  - vendor-sec ceased to exist and (arguably) needed a replacement

* linux-distros reaches Linux distros and list admin only
  - Currently 17 Linux distros and Openwall in list admin capacity
* distros reaches all members
  - linux-distros and currently also FreeBSD, NetBSD/pkgsrc, Oracle Solaris

---

-> Public list: oss-security <-

* Messages must be on Open Source software security, helpful for the community
* Security advisories aimed at end-users _only_ (by distros) are _not_ welcome
* Content quality guidelines (informative Subjects, self-contained messages)
* Linux not implied, other Open Source operating systems are first-class too
^

* Anyone can subscribe
* Anyone can post
  - No subscription required (but it's preferable to subscribe)
  - Most messages are pre-moderated (thanks to Henri Salo, the co-moderator)
    - Moderation delays are low compared to Bugtraq's
    - Rejection rate is very low (not counting automated spam)
^
* Currently about 6600 subscribers, about 100 accepted messages per month
  - 28800+ messages in 15+ years so far (average 150+ per month, peak 485)
  - For some years, CVEs could be requested via the list, inflating traffic

---

-> Private list: (linux-)distros <-

* Messages must be on Open Source software vulnerabilities that are _non-public_
  - Likely _actionable_ within 14 days for some member distros
* Linux-specific issues should be sent to the linux-distros sub-list
  - Not to spam nor unnecessarily disclose them to the non-Linux members
^

* Only Open Source operating system vendors meeting criteria can subscribe
  - Requests must be made and are discussed in public on oss-security
* Anyone can post
  - By posting, the issue reporter accepts certain _responsibilities_
    - Must propose a public disclosure date/time (within 14 days)
    - Must post to oss-security on the day the issue is (to become) public
    - If exploit(s) were shared, must post them to oss-security too
      - May optionally delay that by up to another 7 days
^
* Currently 66 subscribers, average 50+ messages per month on linux-distros

---

-> Semi-public issues <-

There are two kinds:

* Explicit public pre-notification of upcoming full disclosure - usually OK
  - Very limited information (e.g., severity and planned disclosure date)
  - OpenSSL, Node.js, and Exim do this
    - Fit (linux-)distros policy as-is

* Publicly discussed and/or committed silent fix - often problematic
  - Level of detail varies, sometimes security relevance can be inferred
  - Linux kernel and curl do this, differently
    - Added exceptions to accommodate their development/testing processes
  - For other projects, exceptions may be granted on a case-by-case basis

---

-> Current (linux-)distros members <-

* distros
  - All who are also on the linux-distros list below
  - FreeBSD, NetBSD/pkgsrc, Oracle Solaris

* linux-distros
  - ALT Linux, Amazon Linux, Arch Linux, Chrome OS, CloudLinux,
    Container-Optimized OS (COS), Debian, Flatcar Container Linux, Gentoo,
    Microsoft Linux Systems Group, Oracle, Red Hat, Slackware, SUSE, Ubuntu,
    VMware Photon OS, Wind River
  - Openwall as list admin

* Never send a message to both lists at once (choose the appropriate one)
  - Note that distros also includes linux-distros, so reaches all of the above

---

-> (linux-)distros membership criteria and rules in a nutshell <-

* Be a maintained distro with substantial use of Open Source components
* Have a userbase not limited to your own organization
* Show that your membership during the recent year would have helped the users
* Not be only downstream or rebuild of another distro (exceptions possible)
* Be a participant and preferably a contributor in relevant public communities
  - Especially on oss-security
* Accept the list policy (handling of the information on a need-to-know basis)
* Be able and willing to contribute back in specific ways announced in advance
  - We have a _lengthy_ list of contributing-back tasks currently including
    6 technical (such as code reviews and testing) and 16 administrative ones
  - Many are already taken and handled, some not fully handled, some vacant
* Be able and willing to handle PGP-encrypted e-mail
  - All messages via the list are encrypted to the individual recipients' keys
* Have someone already on the list or active on oss-security vouch for you

---

-> (linux-)distros statistics <-

* One of the larger contributing-back tasks that isn't currently handled is
  keeping track of issue handling and disclosure timelines and sharing with
  the public of the raw data and computed statistics
* This is important not only for transparency, but also to see how we're doing
  and what we can improve, and even more importantly to detect any failures to
  meet the maximum embargo time promptly
^
* Gentoo was handling this task well since mid-2017 until September 2019
* Amazon Linux tried to retroactively automate it for 2022, but that missed
  and mixed up many data points - indeed, the input data isn't formalized
^
* Per statistics produced by Gentoo:
  - In 18 months since mid-2017 until end of 2018, we handled 161 issues with
    average and median embargo duration of about 6 days
  - In 9 months since January to September 2019, we handled 49 issues with
    per-month average and median embargo duration from 3 to 9 days

---

-> Volunteer or funded effort? <-

* In the 15+ years so far, Openwall received no funding to run the lists, so
  this was a 100% volunteer effort
* It's unlikely that any of the member distros received external funding in
  connection with their membership and contributing-back tasks either
  - However, many are large companies that presumably allow or ideally
    encourage their employees to spend paid work time on these tasks
^

* An option could have been to request membership dues and use the funds to
  handle all of the tasks consistently
  - However, we deliberately did not - that would have been controversial,
    inconsistent with prior practice (e.g., vendor-sec and CERT/CC), and
    discriminatory against smaller/community distros (we'd need an exception)
  - The current non-monetary contributing-back model has community spirit
* Potential funding by the Linux Foundation is currently under consideration

---

-> Potential evangelism - help wanted <-

* Monitor for Open Source security issues/topics published elsewhere,
  identify which of these would fit, and bring them to oss-security
* Directly encourage upstreams, researchers, umbrella organizations,
  packagers, distros, etc. to report to the lists
* Suggest and provide examples of quality improvements for such reports
* To make oss-security more self-contained, post follow-ups adding detail that
  was previously only available via external links
* Consider developing tools to help with the above (crawl URLs in messages and
  produce draft follow-ups for manual editing+posting)

* More reliable oss-security Twitter/Mastodon feed(s)
  + The existing Twitter feed occasionally misses messages
* New curated "best of oss-security" Twitter/Mastodon feed(s)

---

-> Opinionated observations <-

* Fixing bugs is important, but attack surface reduction, defense-in-depth,
  and even anti-exploitation mitigations may be more important

* (linux-)distros membership criteria, encryption, secure operation are
  important, but the 14 days maximum on embargo duration is more important

* Semi-public silent fixes are problematic, but Linux kernel's growing attack
  surface is more problematic

* Most of the Linux kernel issues brought to linux-distros are an arbitrary
  subset of the many more issues being discovered by fuzzing - why bother?
  - However, occasional well-researched higher-severity exceptions exist

* Reports against userland code are of higher quality on average

---

-> Mailing lists vs. modern e-mail security <-

* Mailing lists resend messages from their servers, which can violate SPF
  - Unless sender address is changed to the list's
    - Normally done for envelope-from (SMTP "MAIL FROM:"), not always enough
    - Inconvenient to also do for header From (breaks replying to person)

* Mailing lists change headers (add list prefix) and/or bodies (encrypt)
  - Breaks DKIM

* With the sender domain's DMARC set to p=reject, some recipients don't get
  the messages (most notably, those on Google mail servers)
* For posting to lists, please use your (sub-)domain without such setting

* No perfect solution, so will have to be adding problematic workarounds

---

-> Contact information <-

-> oss-security list archive
-> https://www.openwall.com/lists/oss-security/

-> Detailed instructions, how to subscribe, how to post
-> https://oss-security.openwall.org/wiki/mailing-lists

-> e-mail
-> Solar Designer <solar@openwall.com>

-> Twitter
-> @solardiz @Openwall

-> website
-> https://www.openwall.com

--Q68bSM7Ycu6FN28Q--
