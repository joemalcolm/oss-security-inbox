Received: (qmail 16009 invoked by uid 550); 21 Jan 2026 10:51:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15982 invoked from network); 21 Jan 2026 10:51:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1768992688; bh=qYPK8yTkNUoJ8kCSb0RcAZ0JiUVcXwj0pxAxcSrjrmg=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=cHMEzP9r7cBbbGZ1ThHz4H0N264OV8Fjoi6kMgVehfBqSZuJ2RWP0amV1IVbhU7xx
	 drIww2w9llEHe3G/KtJaGfYtl0ZeHjBgAyIWJ5eFJLFQ34cAESCAlrIQqKU7uDrbfk
	 UpLtUSd67h6vZqG0hMFs/yOhr/3vhNRvLW12Jwac+IU6GpLNozL1ysFXyxlgDMpdXt
	 OFbttVmT3IuNpz8iIFC/YxAlziF4NwneSll53EIDGq2/T8kIXr4GJt/S4md+twQj2J
	 BgQPsSbWcuBGwd+kL6WvL7GIctIGOkimzgo3a5Hzo79b09zUIyHJOWxSpReZdb9HZj
	 hNxmph8G1tB9A==
Original-Subject: Re: [oss-security] WordPress Plugin "Under Construction &
 Maintenance Mode": Exposed debug functionality
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Wed, 21 Jan 2026 11:51:26 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20260121115126.7ff75d1d@hboeck.de>
In-Reply-To: <aW_XAUlC0doseY7y@inutil.org>
References: 
 <CACepC7XhXqWh45fOYL-4kdZW-h1jQfMb2b10W38RD9euV1j+OA@mail.gmail.com>
	<aW_XAUlC0doseY7y@inutil.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] WordPress Plugin "Under Construction &
 Maintenance Mode": Exposed debug functionality

On Tue, 20 Jan 2026 19:26:57 +0000
Moritz M=C3=BChlenhoff <jmm@inutil.org> wrote:

> But on a more general level, please let's avoid posting WordPress
> plugin vulnerabilities on oss-sec.
>=20
> Looking at the Debian Security Tracker there are have been 9773 CVE
> IDs on WordPress plugins in 2025, they are not packaged in any Linux
> distribution and posting a few individual ones really misses the
> "There has to be desirable information for others in the Open Source
> community" aspect of the list charter.


Erh... I disagree.

* My understanding of the oss-security list is that it is about the
  wider Open Source ecosystem, not limited to "stuff packaged in Linux
  distributions".

* Wordpress plugin security is certainly part of Open Source security,
  and, IMHO, a relevant topic and completely on-topic on this list.

* We currently do not have a problem with a flood of Wordpress plugin
  security issues posted to this list. If that would be a problem, we
  could deal with it by having a separate list for it, but until then,
  I think it's completely fine to have such posts every now and then.

* My experience with Wordpress plugin issues is that, unfortunately,
  often the public information available is quite limited. I appreciate
  when security researchers share information about such
  vulnerabilities, and, from a brief read, the original mail of this
  thread looks like a good description of a valid security
  vulnerability.

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
