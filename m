X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["817" "Wednesday" "11" "August" "2021" "09:51:04" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" nil "22" "Re: [oss-security] STARTTLS vulnerabilities" "^Date:" nil nil "8" nil nil (number mark "        hanno@hboeck Aug 11   22/817   " thread-indent "\"Re: [oss-security] STARTTLS vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] STARTTLS vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19582 invoked by uid 550); 11 Aug 2021 07:51:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19564 invoked from network); 11 Aug 2021 07:51:17 -0000
Message-ID: <20210811095104.4401b1cb@computer>
In-Reply-To: 
 <CAJt9-x5xY3ikisc=RZ1=tqNO+8Tm8YLfjVw=3=UQ2_nAP_7Oiw@mail.gmail.com>
References: <20210810122113.3fe65cc9@computer>
	<20210810134156.GF1599104@hal>
	<CAJt9-x5xY3ikisc=RZ1=tqNO+8Tm8YLfjVw=3=UQ2_nAP_7Oiw@mail.gmail.com>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 11 Aug 2021 09:51:04 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS vulnerabilities
To: oss-security@lists.openwall.com

On Wed, 11 Aug 2021 08:09:57 +0100
Matthew Wild <mwild1@gmail.com> wrote:

> XMPP has some additional protections against this in its design. It is
> required, after TLS negotiation, for both parties to discard the
> pre-TLS XML stream and negotiate a new one after TLS has been
> established[1].

This is actually not much different from how STARTTLS works in SMTP or
IMAP. You are basically advised to throw away all state from pre-TLS.
But yet here we are with > 40 vulnerabilities.

The buffering issue is really subtle if you look at how such code is
written. It's basically "if you implement this with C API file
descriptors you will very likely create this bug *unless* you're aware
of it and actively avoid it". And I don't see how XMPP would be any
different here.


--=20
Hanno B=C3=B6ck
https://hboeck.de/
