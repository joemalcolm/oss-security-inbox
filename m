X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1033" "Wednesday" "11" "August" "2021" "08:16:34" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" nil "40" "Re: [oss-security] STARTTLS vulnerabilities" "^Date:" nil nil "8" nil nil (number mark "        hanno@hboeck Aug 11   40/1033  " thread-indent "\"Re: [oss-security] STARTTLS vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] STARTTLS vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11315 invoked by uid 550); 11 Aug 2021 06:16:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11297 invoked from network); 11 Aug 2021 06:16:47 -0000
Message-ID: <20210811081634.15143171@computer>
In-Reply-To: <20210810134156.GF1599104@hal>
References: <20210810122113.3fe65cc9@computer>
	<20210810134156.GF1599104@hal>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 11 Aug 2021 08:16:34 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS vulnerabilities
To: oss-security@lists.openwall.com

Hi,

On Tue, 10 Aug 2021 15:41:56 +0200
Guido Berhoerster <guido+openwall.com@berhoerster.name> wrote:

> have you or are you planning to look into XMPP client/server
> implementations as well?  The use of STARTTLS for both c2s and s2s
> connections is still prevalent both in terms of implementation
> support and actual practice and could potentially suffer form the
> same issues (command injection or downgrade attacks).

We have not looked much into other protocols, and given how much time
we've already spent on the topic I think it is unlikely that we will do
this.

Of course it's a very obvious idea for further research to look if one
finds similar vulnerabilities to the ones we found in other protocols.
So I'd really like to encourage other people to look for this.

FWIW there are a lot of protocols with a STARTTLS mechanism, here's the
list of supported protocols by OpenSSL:
	smtp
	pop3
	imap
	ftp
	xmpp
	xmpp-server
	telnet
	irc
	mysql
	postgres
	lmtp
	nntp
	sieve
	ldap


--=20
Hanno B=C3=B6ck
https://hboeck.de/
