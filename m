Received: (qmail 27813 invoked by uid 550); 27 May 2022 11:30:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25892 invoked from network); 27 May 2022 11:28:44 -0000
Date: Fri, 27 May 2022 07:26:50 -0400
From: "Mike O'Connor" <mjo@dojo.mi.org>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>, peterz@infradead.org,
        nslusarek@gmx.net
Message-ID: <YpC1emS62JHunSQm@dojo.mi.org>
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52>
 <20220521154759.GA15268@openwall.com>
 <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13>
 <CAHQ_-nSt-YAyuSpjtFAe1Pvi9txYT7Z7kCT8j3nT4BjrqHOqCw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHQ_-nSt-YAyuSpjtFAe1Pvi9txYT7Z7kCT8j3nT4BjrqHOqCw@mail.gmail.com>
X-Greylist: inspected by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Fri, 27 May 2022 07:27:21 -0400 (EDT) for IP:'127.0.0.1' DOMAIN:'localhost' HELO:'angus.mystery.com' FROM:'mjo@dojo.mi.org' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Fri, 27 May 2022 07:27:21 -0400 (EDT)
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf
 subsystem leads to local privilege escalation

:I think it's important to remember that closed mailing lists filled
:with private/embargoed exploits become valuable targets. They have
:been compromised ever since Zardoz in the 1980s, vendor-sec was
:discontinued for the same reason. By keeping zerodays in linux-distros
:you paint a target on every recipient of the list. You should assume

Every recipient and their upstream providers.

:that any working exploit code you share to a mailing list will
:eventually fall into the hands of bad actors. Therefore, I don't think
:selective full-disclosure works.

Long ago, I suggested that such mailing lists should PLAN to be public
eventually, and disclose the info themselves before someone beats them
to it.  For example, when June comes up, April linux-distros archives
are made public, and that's advertised and known.  Given its two week
max embargo period, this shouldn't pose an issue for anyone.  There is
value in (eventually) seeing the sausage being made.  I know Solar has
made old linux-distros mailing list metadata public, has advised folks
that "any/all list postings may be made public once the corresponding
security issue is publicly disclosed".  I suggest "may" become "will
eventually".  


Take FWIW...
-Mike

-- 
 Michael J. O'Connor                                          mjo@dojo.mi.org
 =--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--=
"Passion is the enemy of precision."                              -Daryl Zero
