Received: (qmail 12164 invoked by uid 550); 10 Aug 2022 18:26:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24523 invoked from network); 10 Aug 2022 14:44:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=graemef.net
	; s=20151104; h=Message-Id:In-Reply-To:To:References:Date:Subject:
	Mime-Version:Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LaTTATclIx+q5p3dNqJt6GiN3FnU7BH/lZeyJ/yMj/0=; b=D57fV8n0DDxupRGWJDpFZklzTg
	/qQjDVzskr78b9mflBQfXrlgiD5pi3B2Go2zkk5pXQ/vvN5k0XC8Y6yvXQ8w3W2H4B+T3gLgLhjyY
	ohxXTRVEeof/EWrv2g6AaDvAms8nl8OCMrNIIJpLB3MQO+q3MSjzrr6w0POAZUPrAe1Q=;
From: Graeme Fowler <graeme+osssec@graemef.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Date: Wed, 10 Aug 2022 15:44:25 +0100
References: <2dc37111-fd35-e10e-0162-1bdad2e80f5e@vulndisco.cc>
 <Yu7WIlgb9y4tGUDQ@gentoo.org>
 <CAB=ivF95gmkRr74nu5+_XmNkQKdGd==4hB+9N8EmaELQz+vHxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CAB=ivF95gmkRr74nu5+_XmNkQKdGd==4hB+9N8EmaELQz+vHxQ@mail.gmail.com>
Message-Id: <0D1F6213-D667-4E9C-B541-52E52429B756@graemef.net>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
Subject: [oss-security] Re: [Exim-Security] [oss-security] Exim < 4.95 heap overflow

On 7 Aug 2022, at 16:39, Roxana Bradescu via Security <security@exim.org> w=
rote:
> Adding the Exim security folks to this thread to shed some light on the o=
riginal report and CVE discussion.=20

Responding separately to each list...

The Exim developers don't use github to track bugs, there is a bugzilla ins=
tance used for that which is detailed on the Github Readme.pod page.

This issue (and others) weren't "silently fixed"; they were openly tracked =
in Bugzilla, and an example is here:

https://bugs.exim.org/show_bug.cgi?id=3D2747 (fixing the observed issue in =
this thread).

The pages detailing CVEs were regularly updated by a developer who is no lo=
nger involved. These have not been updated since 2019 as you observe, yet t=
here have been 23 CVEs addressed by the developers. These are fairly easy t=
o find using your favourite CVE tracker.

The development process - excepting times when a CVE has been allocated - i=
s pretty open and easy to find, as all the commits are in the Git repo and =
bugzilla updates are mirrored into the exim-dev mailing list, often includi=
ng the commit also.

Regards

Graeme
(wearing my exim mailing list admin hat)

