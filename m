X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1738" "Thursday" "10" "March" "2016" "09:07:11" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20160310170710.GM1250@sentinelchicken.org>" "35" "Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies" nil nil nil "3" "2016031017:07:11" "[oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "U       tim-security Mar 10   35/1738  " thread-indent "\"Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<56E17B10.1090800@igalia.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM>" "<CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com>" "<20160305000740.GB1250@sentinelchicken.org>" "<56DC7B1E.4050507@oracle.com>" "<56E0BE38.6030400@igalia.com>" "<56E112D4.1070302@oracle.com>" "<56E17B10.1090800@igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5272 invoked by uid 550); 10 Mar 2016 17:07:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5231 invoked from network); 10 Mar 2016 17:07:36 -0000
Date: Thu, 10 Mar 2016 09:07:11 -0800
From: Tim <tim-security@sentinelchicken.org>
To: oss-security@lists.openwall.com
Message-ID: <20160310170710.GM1250@sentinelchicken.org>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
 <56D9DD1F.1030302@cert.org>
 <6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM>
 <CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com>
 <20160305000740.GB1250@sentinelchicken.org>
 <56DC7B1E.4050507@oracle.com>
 <56E0BE38.6030400@igalia.com>
 <56E112D4.1070302@oracle.com>
 <56E17B10.1090800@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56E17B10.1090800@igalia.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] RE: Concerns about CVE coverage shrinking -
 direct impact to researchers/companies

> > I'm one of the admins of the public bugzilla at bugs.freedesktop.org, and
> > I've had to deal with spam there, and I've seen reports of spams in other
> > public bugzillas for open source projects.
> > 
> > github requires account creation as well, and I'm sure we've all seen out
> > of control comment threads there that had to be locked down to stop abuse.
> > 
> 
> Then the next level is to require not only e-mail validation but also to
> solve a captcha for creating a new account.
> 
> Or even harder, to require any account with less than 10 comments to
> solve a captcha for any new comment. That way the annoyance for legit
> users is temporal (up to the 10th comment), meanwhile for spammers is
> not, because their account is probably going to be blocked before they
> reach the 10th comment and have to start again with a new account.
> 
> I'm not saying that some level of moderation is required. Of course it
> is. But I think that if proper antispam measures are implemented, then
> the level of moderation required is relatively low, and can be done by
> the bugzilla admins without much effort.


Right, this is my thinking as well.  If you create very high barriers
to automated spamming, and protect against DDoS, then the level of
manual spam should be low enough that minimal moderation would be
required.  Of course you could also start white listing people who
have posted more than N approved comments, etc.  And apply some
bayesian filters on new postings from unknown people.  It's all
doable, and likely less work than what the CVE moderators have to do
now.  The hard work is building the system initially and finding a way
to get enough volunteers involved for distributed hosting and
moderation.

tim
