Received: (qmail 17864 invoked by uid 550); 28 Dec 2022 18:04:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13340 invoked from network); 28 Dec 2022 18:03:36 -0000
Date: Wed, 28 Dec 2022 19:02:56 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20221228180256.2q-Rh%steffen@sdaoden.eu>
In-Reply-To: <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-383-g2889cb06b9
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] [patch] proc.5: tell how to parse
 /proc/*/stat correctly

Shawn Webb wrote in
 <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>:
 |On Tue, Dec 27, 2022 at 04:44:49PM -0800, Lyndon Nerenberg (VE7TFX/VE6BBM) \
 |wrote:
 |> Dominique Martinet writes:
 |>> But, really, I just don't see how this can practically be said to \
 |>> be parsable...
 |> 
 |> In its current form it never will be.  The solution is to place
 |> this variable-length field last.  Then you can "cut -d ' ' -f 51-"
 |> to get the command+args part (assuming I counted all those fields
 |> correctly ...)
 |> 
 |> Of course, this breaks backwards compatability.
 |
 |It would also break forwards compatibility in the case new fields
 |needed to be added.
 |
 |The only solution would be a libxo-style feature wherein a
 |machine-parseable format is exposed by virtue of a file extension.
 |
 |Examples:
 |
 |1. /proc/pid/stats.json
 |2. /proc/pid/stats.xml
 |3. /proc/pid/stats.yaml_shouldnt_be_a_thing

Or, rather, in my thought, because this gets too crowded, let
procfs only show /proc/pid/stats but let it be opened with
whatever extension, and "let it dynamically check for an according
creator".  Ie like Apple has those packages which you could look
into. 

Or simply offer stats.0 where \0 is the field separator(, and \0\0
is the last entry).  One could even dream of KEY=VALUE\0 pairs,
like state=R\0  Then not even the order matters no more, and there
would be a bit of self-description without a documentation.
(Ach!!  If the IETF would go that route more often.  Sigh.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
