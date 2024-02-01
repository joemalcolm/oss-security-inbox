Received: (qmail 30323 invoked by uid 550); 2 Feb 2024 08:26:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7937 invoked from network); 1 Feb 2024 23:04:47 -0000
Date: Thu, 01 Feb 2024 22:56:34 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240201215634.z0zBS1HU@steffen%sdaoden.eu>
In-Reply-To: <20240201212715.67677c9a.hanno@hboeck.de>
References: <20240201123100.42ba1334.hanno@hboeck.de>
 <r2yfkmeszb5nz37jepgatysvm3ajua3kwte72sfzdicffh5vze@oizk252b5l77>
 <20240201212715.67677c9a.hanno@hboeck.de>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-596-g7894190075
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Python standard library defaults to
 insecure TLS for mail protocols

Hanno B=C3=B6ck wrote in
 <20240201212715.67677c9a.hanno@hboeck.de>:
 |On Thu, 1 Feb 2024 09:45:36 -0800
 |nightmare.yeah27@aceecat.org wrote:
 |
 |> Relaying *MTAs* do not usually verify the certificate of the server
 |> they connect to.
 |
 |Even that isn't true any more in 2024. The largest mail providers (and
 |plenty of small ones) all support MTA-STS. So in most cases,

This protocol is much too complicated, and totally
over-engineered.  How many different approaches to get that job
actually done do you want?  How much more configuration effort
burden shall be put onto administrators?  Even more -- how many
small business administrators there still exist.

Having DNS announce something is good now that there is DNSSEC
getting widespread use, and over transported channels of all sorts
(i only like two of those, but i cannot help it anyway).

But sorry i fail to understand how super-big-player employees
which are happy to sit in a committee for years and likely cross
the oceans for meetings (sorry!) create yet another configuration
and complexity monster, to all the other mess that normal people
have to adhere to to keep on going.

For example DKIM created DNS-located public keys for verification
almost a decade earlier.  With modern algorithms this even fits in
DTLS packets.
IKEv2 there is for so long.
There is RPKI.
There is RPKI.
There is RPKI.
And DKIM uses plain public keys in a DNS record, have i yet
mentioned this.  It is ugly it is a TXT one; how non-self-
descriptive.

Why does anyone have to implement such a monster like MTA-STS.
*Who* shall implement all these scenarious.  This only works if
you sit on top of something vertical and let the shit drop down to
the lower stages until someone cannot escape.  Heh.
And i do not mind if all the little, helpful, beautiful corners
die out, as long as i can lay the burden onto googlegroups.com.
I only work in the browser via github anyway.

We have a public suffix list.  How many pieces of software which
implement TLS do support this?
Is there any system which ships this out of the box.
That mechanism thus also a failure; is it??

Well it is easy for roosters, if they have their hen(s).
Otherwise you need to be an engineer.
Funnily happens to happen again:

  Don't count on me
  I engineer
  I take the lead
  You take the pain
  You see i engineer this gain

 |certificate validity and hostnames are checked.
 |
 |> When they do, it creates problems because MTA
 |> certificates are very often self-signed. IIRC Yahoo relays in
 |> particular used to have this problem (or still do?)
 |
 |Doubtful:
 |host -t txt _mta-sts.yahoo.com
 |_mta-sts.yahoo.com descriptive text "v=3DSTSv1; id=3D20161109010200Z;"
 |
 |If they had invalid certs, they wouldn't receive any mails from MTA-STS
 |supporting senders. I think someone would've noticed.
 |
 |> It is true that MTAs are not usually written in Python :-) So maybe
 |> the proposal is OK. But there's a general point to note here, namely
 |> not all protocols are the same wrt TLS.
 |
 |Some are slower, others are faster, but all of them should strive for
 |deprecation of man-in-the-middle-vulnerabilities by default.

Email is now solely a one-hop protocol.
This is funny given how it started.
I personally do not give a shit until my email ends where i want
it to end.  It will be DKIM signed soon, and i can use OpenPGP or
S/MIME as appropriate.
All i dislike is that DKIM does not enwrap things in envelopes,
like our forefathers and mothers did.  Ie put your seal on it,
enwrap it anew entirely.  That would be better.  But it seems
especially the big graphical ones do not nicely deal with it. (I
have heard.)

Btw i am all in favour of adding another port for dedicated SMTPS,
and drop the entire HTTPS/DNS bypass machinery, unless you find
the certificate is not in your CA "pool", then you have to get it
somehow.

Btw this was no personal insult against you.  But MTA-STS ... no.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
