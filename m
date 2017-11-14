X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2480" "Monday" "13" "November" "2017" "19:42:27" "-0500" "David A. Wheeler" "dwheeler@dwheeler.com" "<E1eEPJ5-0006vL-TF@rmmprod07.runbox>" "55" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017111400:42:27" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       dwheeler@dwh Nov 13   55/2480  " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<20171113151524.GA16983@kroah.com>" ("<20171113151524.GA16983@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19885 invoked by uid 550); 14 Nov 2017 00:49:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13892 invoked from network); 14 Nov 2017 00:42:40 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
From: "David A. Wheeler" <dwheeler@dwheeler.com>
To: "oss-security" <oss-security@lists.openwall.com>
CC: "Vladis Dronov" <vdronov@redhat.com>,
 "oss-security" <oss-security@lists.openwall.com>
Date: Mon, 13 Nov 2017 19:42:27 -0500 (EST)
X-Mailer: RMM6
In-Reply-To: <20171113151524.GA16983@kroah.com>
Message-Id: <E1eEPJ5-0006vL-TF@rmmprod07.runbox>
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref
 due to a race condition in [legousbtower] driver

On Mon, 13 Nov 2017 16:15:24 +0100, Greg KH <greg@kroah.com> wrote:
> It's the arbitrarily nature here that I am curious about, it feels like
> it should be "all or nothing", for CVEs to mean much here.  Right now it
> seems like it is just, "all that we care to track"?  :)

"All" would be awesome, though unlikely.  But even if that's the eventual g=
oal,
"good starts" are still good starts.

I think a very reasonable (and more practical) alternative is
"enough CVEs to convince you to upgrade your kernel (or whatever) instead".
In particular, if there are several CVEs assigned where the only
reasonable mitigation is "you must upgrade your kernel", then
you don't really *need* to assign more CVEs for purposes of telling
people what they should do to mitigate their risks.  If those CVEs apply
to them, then they know they should upgrade & what the urgency is.

It'd be *nice* to "have all vulnerabilities assigned CVEs", because that'd
enable better statistical analysis of CVEs.  In particular, developers woul=
d then have
a better sense about the types of vulnerabilities that are really out there=
, in a specific
product or in products in general.  It'd be especially useful for seeing
what mitigations work, and what doesn't.  But I don't see that as a likely =
event
in the near term.  In any case, it is certainly not necessary
for the main reason most people look at CVEs, where they simply need
to answer the question, "What is the urgency to upgrade this component?".

There are definitely problems in using CVEs to answer that question,
because everyone *knows* the CVEs are incomplete & the assignment response =
time is
less than ideal.  And I *absolutely* agree that the current delays in upgra=
ding
kernels are a serious problem - Greg, I wish you EVERY piece of luck you
can manage as you work on that!!

However, today,
"always upgrade the kernel when it costs $billions and we know the new vers=
ion
has vulnerabilities too and it's not clear how important it is to upgrade a=
nyway"
is not a compelling argument to most people.  If you want people to upgrade
*today* with any urgency, you need to give them a good reason, because
currently the upgrade process is often painful.

CVEs, while imperfect, give people a *reason* to go through the painful pro=
cess
of upgrading.  If we can make software upgrades much easier in the future,
then the reasons don't need to be as compelling, but that's not the case to=
day.

Thanks!

--- David A. Wheeler=
