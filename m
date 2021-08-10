X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2532" "Tuesday" "10" "August" "2021" "12:21:13" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" nil "57" "[oss-security] STARTTLS vulnerabilities" "^Date:" nil nil "8" nil nil (number mark "        hanno@hboeck Aug 10   57/2532  " thread-indent "\"[oss-security] STARTTLS vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] STARTTLS vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3730 invoked by uid 550); 10 Aug 2021 10:21:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3696 invoked from network); 10 Aug 2021 10:21:26 -0000
Message-ID: <20210810122113.3fe65cc9@computer>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 10 Aug 2021 12:21:13 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] STARTTLS vulnerabilities
To: oss-security@lists.openwall.com

Hi,

I wanted to share some research that we did on the security of
STARTTLS. While we didn't specifically look at open source software,
many of the vulnerabilities found are in open source mail servers and
clients:

https://nostarttls.secvuln.info/

Our starting point was an old vulnerability in Postfix [1]. In
2011 Postfix developer Wietse Venema found that it's possible to inject
plaintext content into the TCP packet of a STARTTLS command and a
server would interpret it as if it was part of the TLS session.

This command injection vulnerability was subsequently found in many
other mail servers, but as we learned it was still not fixed
everywhere. It is most severe in IMAP and SMTP/Submission servers,
where it can be used for credential stealing.

We subsequently also found that a very similar (but somewhat less
severe) vulnerability exists in mail clients that also would interpret
plaintext injected into the answer to a STARTTLS command as if they
were part of the TLS connection. We call this a response injection.

Furthermore we learned that the IMAP PREAUTH feature is problematic in
combination with STARTTLS. PREAUTH can be sent by a server in response
to a client connection to signal the client that it is already
authenticated without login credentials. However the standards say that
in an authenticated state a client cannot send a STARTTLS command. Thus
PREAUTH allows a MitM attacker to prevent STARTTLS from happening. This
was originaly found in the Trojita mail client, but we found many other
mail clients are vulnerable.

Noteworthy open source projects that were impacted by at least one of
the vulnerabilities we found include Mozilla Thunderbird, Claws-Mail,
Mutt, LibEtPan (mail protocol library used by many other clients),
Exim, Dovecot, s/qmail, Courier. Our webpage lists all the
STARTTLS vulnerabilities we found and as far as we know them the state
of fixes and CVEs.


Our focus was the communication between mail clients and servers. We
came to the conclusion that in this situation the dedicated / implicit
TLS ports (465, 993, 995) for mail protocols should be preferred as
they avoid all STARTTLS vulnerabilities and have no real downside
(it's even faster because you avoid roundtrips). Ideally STARTTLS
should be deprecated in the long term.

Communication from server to server (esp. in combionation with
MTA-STS) and STARTTLS in other protocols would be good avenues for
further research.

[1] http://www.postfix.org/CVE-2011-0411.html

--=20
Hanno B=C3=B6ck
https://hboeck.de/
