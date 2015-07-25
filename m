X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2789" "Saturday" "25" "July" "2015" "23:01:28" "+0200" "Leif Nixon" "nixon@lysator.liu.se" "<87wpxo9ck7.fsf@lysator.liu.se>" "64" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072521:01:28" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        nixon@lysato Jul 25   64/2789  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<875603C9-F2F1-4D25-A081-503D870A5FEB@shub-internet.org>" ("<20150723170954.GA17931@localhost.localdomain>" "<87h9oud89s.fsf@lysator.liu.se>" "<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>" "<871tfxdgzw.fsf@lysator.liu.se>" "<55B22C72.4020706@tillo.ch>" "<874mktb7xv.fsf@lysator.liu.se>" "<875603C9-F2F1-4D25-A081-503D870A5FEB@shub-internet.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23629 invoked by uid 550); 25 Jul 2015 21:01:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23611 invoked from network); 25 Jul 2015 21:01:43 -0000
References: <20150723170954.GA17931@localhost.localdomain>
	<87h9oud89s.fsf@lysator.liu.se>
	<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>
	<871tfxdgzw.fsf@lysator.liu.se> <55B22C72.4020706@tillo.ch>
	<874mktb7xv.fsf@lysator.liu.se>
	<875603C9-F2F1-4D25-A081-503D870A5FEB@shub-internet.org>
In-Reply-To: <875603C9-F2F1-4D25-A081-503D870A5FEB@shub-internet.org> (Brad
	Knowles's message of "Fri, 24 Jul 2015 16:31:44 -0500")
Message-ID: <87wpxo9ck7.fsf@lysator.liu.se>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 25 Jul 2015 23:01:28 +0200
From: Leif Nixon <nixon@lysator.liu.se>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser
To: oss-security@lists.openwall.com

Brad Knowles <brad@shub-internet.org> writes:

> There will always be people who get their panties in a major twist
> because they feel that too much information was released too soon, and
> there will always be people who get their panties in a major twist
> because not enough information was released soon enough.

Frankly, over the years I have seen pretty few people on the side of the
angels complain that "But *why* didn't you include a weaponized exploit
with your advisory? I feel so cheated!".

> In this day and age, we have the CRD process. Official representatives
> from both Qualys and Red Hat have spoken about their perspective on
> the matter, and they seem to largely be in agreement.

Have we seen anybody from Qualys offer comment? I may have missed that.

> However, this list is not the proper place to have that flamewar.

Really? Why? This list is about concepts and practices in open source
software security, among other things. Discussing how to do ethically
defensible disclosure seems to fit that bill.

> If you really feel that strongly about it, I suggest that you find the
> proper place to have a discussion about what CRD really means and how
> that should be executed. If you can actually help that process to
> become better, I=E2=80=99m sure that most of the involved parties will we=
lcome
> your participation.

Actually, I have something lined up:
https://4sics.se/speaker-announcement-leif-nixon-se/


Anyway, the reason that this *really* makes me angry is that I have
spent a long time on the defensive side, trying to keep the kids from
messing too much with kind-of-important scientific systems.

In these situations, where an exploit for a new local root vulnerability
turned up without prior warning, we typically started seeing root-level
incidents within 24 hours. Have you ever tried to get big organizations,
made up of a zillion independent entities, to apply security patches
within a timescale of hours?

The last time I dealt with one of those incidents, some kid thought it
was fun to use this shiny new exploit to wreck a compute cluster used
for designing new cancer drugs. Yeah, really.

What many people don't seem to realize is how much the availability of
ready-to-run exploits increases the risk to innocent bystanders.

Show your cleverness all you like; I'll applaud you. Qualys does a lot
of good stuff, they deserve to get a little marketing out of their work.
But hold off on the fscking exploits until the user base has had a
sporting chance to patch, yes?

--=20
Leif Nixon
---------------------------------------------------------------------------=
---
"supercomputer specialists are charming, polite [and] witty" -- Wired Magaz=
ine
---------------------------------------------------------------------------=
---
