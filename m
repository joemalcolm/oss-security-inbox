Received: (qmail 31802 invoked by uid 550); 3 Feb 2024 00:41:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14117 invoked from network); 3 Feb 2024 00:30:52 -0000
Date: Sat, 03 Feb 2024 01:33:13 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240203003313.YKHhYoQm@steffen%sdaoden.eu>
In-Reply-To: <Zb0LvgCl3MA5PK0K@wopr>
References: <20240201123100.42ba1334.hanno@hboeck.de>
 <r2yfkmeszb5nz37jepgatysvm3ajua3kwte72sfzdicffh5vze@oizk252b5l77>
 <20240201212715.67677c9a.hanno@hboeck.de>
 <20240201215634.z0zBS1HU@steffen%sdaoden.eu> <Zb0LvgCl3MA5PK0K@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-596-g7894190075
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Python standard library defaults to
 insecure TLS for mail protocols

Kurt H Maier wrote in
 <Zb0LvgCl3MA5PK0K@wopr>:
 |On Thu, Feb 01, 2024 at 10:56:34PM +0100, Steffen Nurpmeso wrote:
 |> 
 |> This protocol is much too complicated, and totally
 |> over-engineered.  How many different approaches to get that job
 |> actually done do you want?  How much more configuration effort
 |> burden shall be put onto administrators?  Even more -- how many
 |> small business administrators there still exist.
 |> 
 |> Having DNS announce something is good now that there is DNSSEC
 |> getting widespread use, and over transported channels of all sorts
 |> (i only like two of those, but i cannot help it anyway).
 |
 |I raised these objections on some IETF list or another, and was
 |rebuffed.  According to the MTA-STS project, DNS is too hard or people
 |are too stupid, so MTA-STS ignores DNSSEC and relies on HTTPS and
 |well-known urls.  I would like it to be on the record, at least, that

Yes.

 |someone tried to talk them out of this.  I did point out that requring
 |an entire additional stack of protocols just to look up a port number
 |was not as clever as just specifying the port number, but that idea was
 |also rejected.

There is also RFC 8689.  (And 7672, DANE.  And 6698, DANE / TLSA.)
Well i mean regarding certificates there is always a bootstrap
problem.  But the DNS hierarchy has solutions.  And i reiterate
there is RPKI (and for a very long time, often iterated, secure,
and in widespread use as far as i know), and DKIM simply uses
published public certificates.  It is sheer unbelievable how
nifty, how intellectually penetrated that is.  I do not get it.
I cannot wrap my head around *that*.  There is also DANE TLSA.
Help!!  What else??

Regarding the port, well.  There is RFC 6186 (Use of SRV Records
for Locating Email Submission/Access Services) for one, for one to
delegate that.  Just say _smtps, maybe.  Give a one line RFC that
states that SMTP sessions accessed via that port MUST be TLS
secured etc etc, and already start in the according protocol
state.

And then, instead of all those RFCs there are to get
that thing done, plenty there are!, let me try a plain old
countryside muscle-car simple-man lumberjack thing.  You know.
Just try to establish a TLS session, maybe.  Well my big mouth is
too loud, you cannot peek at TCP, can you.  But in a TLS session
there comes the ClientHello, whereas a normal SMTP session starts
with a silent client and a server greeting.  I guess many people
have thought this.  But i mean, how is it actually doing.  For
example, a tremendous number of things happen inside an SMTP
server of the modern age upon client connections.  For example the
simple me has this

  # Clients connection checks
  smtpd_client_restrictions =
  #  permit_inet_interfaces, OR
     permit_mynetworks,
     permit_tls_clientcerts,
  #[RELAY]  permit_sasl_authenticated,
     check_client_access lmdb:$meta_directory/client_restrict,
     reject_unknown_client_hostname,
     sleep X,
     reject_rbl_client X,
     reject_rbl_client X,
     reject_unauth_pipelining,
     permit

A tremendous mess of DNS etc work is done here, which takes time.
See especially the "sleep X" shown here.  A real sleep that is.
In the meantime the TLS ClientHello would surely have been
arrived, and one could FIONREAD that aka select/poll would give
input availability.  Etc etc etc.  Would it be acceptable to say
"plain SMTP on port 25 now regulary sleeps upon connection
establishment to wait for a potential ClientHello", i do not know.
Likely if one would say, yes we *do* SMTPS, and please *do offer
RFC 6186 for it, but there *is* also port XY IANA allocated,
and, mind you, by 203* SMTP on port 25 is SMTPS by default and
SMTP will then only exist via RFC 6186 announced other ports.
Maybe 2040?  I do not know.

But the thread was on certificates, i think.
Anyhow a nice weekend everybody, engineer or not.
P.S.:
  $ findmnt /proc
  TARGET
        SOURCE
             FSTYPE OPTIONS
  /proc none proc   rw,nosuid,nodev,noexec,relatime,gid=10,hidepid=invisible
Maybe a findmnt bug.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
