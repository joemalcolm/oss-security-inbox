Received: (qmail 30315 invoked by uid 550); 1 Oct 2025 07:29:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17727 invoked from network); 1 Oct 2025 02:20:35 -0000
Date: Tue, 30 Sep 2025 21:15:27 -0400
From: "Mike O'Connor" <mjo@dojo.mi.org>
To: oss-security@lists.openwall.com
Message-ID: <aNyAr-XUGTlZHWtg@dojo.mi.org>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
 <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
 <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <0ea3da20-739e-4608-8869-9d5882a8f003@gmail.com>
 <544d9d89-2a0a-4901-84ab-40c07c9c7bcd@gmail.com>
 <a715936d-759a-4c2f-8498-6da12f0fba3a@gmail.com>
 <dac51d5e-e9a9-4e8d-b044-7da3316c9252@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dac51d5e-e9a9-4e8d-b044-7da3316c9252@gmail.com>
X-Greylist: inspected by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Tue, 30 Sep 2025 22:20:25 -0400 (EDT) for IP:'127.0.0.1' DOMAIN:'localhost' HELO:'angus.mystery.com' FROM:'mjo@dojo.mi.org' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Tue, 30 Sep 2025 22:20:25 -0400 (EDT)
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

:> Second, I had expected ECC to "kill Rowhammer dead" only to find that it 
:> can be possible to cause enough bit flips to get all the way from one 
:> valid ECC word to another valid ECC word before ECC scrub reaches the 
:> location.  I suspect that the DDR5 built-in ECC is supposed to resolve 
:> Rowhammer, but we will have to wait and see if it actually achieves that 
:> goal.

You won't have to wait very long, it seems:
https://comsec.ethz.ch/research/dram/phoenix/

...

As someone who fielded inquiries about CVE-2023-51767 in the context
of some commercial OSes/platforms when it first came out, I'd suggest
this ought to be tagged as REJECTED.  It's sad that this bogus CVE is
still causing confusion.  This almost makes me long for the good ol'
days when CVEs stated out life as "candidates", and learned people
would weigh in on whether it should be promoted to a full CVE.

If I read this thread right, the author of the paper didn't request
this CVE, and it was assigned via MITRE (probably the result of some
external requester).  I'd suggest bringing it up with MITRE, get to
the source of who actually made the CVE request, and properly dispose
of this.  I'd suggest engaging MITRE directly, not just righteous
venting on oss-security, hoping it finds the right CVE folks.


Take FWIW...
-Mike

-- 
 Michael J. O'Connor                                          mjo@dojo.mi.org
 =--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--=
"Security freaks are pretty wierd."                    -Brian Harvey, RFC 686
