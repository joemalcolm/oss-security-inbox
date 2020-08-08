X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["975" "Saturday" "8" "August" "2020" "12:09:09" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20200808120909.474405c1@computer>" "23" "Re: [oss-security] Voiding CVE-2020-16248" "^Date:" nil nil "8" "2020080810:09:09" "[oss-security] Voiding CVE-2020-16248" (number mark "        hanno@hboeck Aug  8   23/975   " thread-indent "\"Re: [oss-security] Voiding CVE-2020-16248\"\n") "<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>" ("<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Voiding CVE-2020-16248" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5822 invoked by uid 550); 8 Aug 2020 10:09:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5802 invoked from network); 8 Aug 2020 10:09:21 -0000
Message-ID: <20200808120909.474405c1@computer>
In-Reply-To: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
References: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 8 Aug 2020 12:09:09 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Voiding CVE-2020-16248
To: oss-security@lists.openwall.com

FWIW while I don't particularly care about the CVE assignment issue, I
think there is a valuable discussion to have here.

I feel the issue here is that with SSRF there often seems to be some
kind of difficulty to pinpoint whether something is actually a flaw or
an intended feature and who's to blame.

Ultimately these issues come down to this:
* There's an expectation that network requests originating from
  localhost (or from a tightly controlled internal network IP) can be
  considered trustworthy and are performed by someone/something with
  some form of local authority.
* However that's not necessarily true as you may have many applications
  that do outgoing network requests that in a variety of ways can be
  controlled by an attacker.

I feel this is somehow also similar to fights between network security
thinking and endpoint security thinking that we can see elsewhere.
(e.g. the whole TLS interception debate.)

--=20
Hanno B=C3=B6ck
https://hboeck.de/
