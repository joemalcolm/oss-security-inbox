Received: (qmail 13627 invoked by uid 550); 30 Mar 2024 12:09:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13609 invoked from network); 30 Mar 2024 12:09:18 -0000
From: Florian Weimer <fw@deneb.enyo.de>
To: "Liguori, Anthony" <aliguori@amazon.com>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
	<uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
	<uu7da3$87n$1@ciao.gmane.io>
	<20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
	<uu7g5q$8hl$1@ciao.gmane.io>
	<01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
Date: Sat, 30 Mar 2024 13:09:08 +0100
In-Reply-To: <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com> (Anthony Liguori's
	message of "Fri, 29 Mar 2024 22:59:11 +0000")
Message-ID: <87y19zx6or.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

* Anthony Liguori:

> I think we should have a policy that if issues are suspected to be
> actively exploited, that the issue goes public immediately.  If even
> there is no patch or mitigation, there's not a lot of benefit to
> keeping it private.

I think we are heading in this direction anyway, given that more and
more people are under reporting obligations for active exploitation.
Untangling who has to be notified when isn't really a good use of our
time.  I expect we'll have to tell reporters that if they tell us that
a vulnerabilty is under active exploitation, we'll have to go public
more or less immediately.
