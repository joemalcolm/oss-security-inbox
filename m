X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1752" "Thursday" "9" "June" "2016" "11:34:37" "+0200" "Roman Drahtmueller" "draht@schaltsekun.de" "<alpine.LNX.2.02.1606091006580.10353@i8.fpunygfrxha.qr>" "46" "Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Date:" nil nil "6" "2016060909:34:37" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        draht@schalt Jun  9   46/1752  " thread-indent "\"Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") "<CAFeDd5a0aBM-wafxZu7m7NFPcOZyMBV-2ufbiDi_7MLWyqm-Eg@mail.gmail.com>" ("<20160608085431.GA4278@openwall.com>" "<CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>" "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>" "<CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>" "<20160608153856.GH3711@suse.de>" "<4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>" "<7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de>" "<CAFeDd5a0aBM-wafxZu7m7NFPcOZyMBV-2ufbiDi_7MLWyqm-Eg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18060 invoked by uid 550); 9 Jun 2016 09:34:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18042 invoked from network); 9 Jun 2016 09:34:48 -0000
In-Reply-To: <CAFeDd5a0aBM-wafxZu7m7NFPcOZyMBV-2ufbiDi_7MLWyqm-Eg@mail.gmail.com>
Message-ID: <alpine.LNX.2.02.1606091006580.10353@i8.fpunygfrxha.qr>
References: <20160608085431.GA4278@openwall.com> <CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com> <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com> <CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>
 <20160608153856.GH3711@suse.de> <4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de> <7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de> <CAFeDd5a0aBM-wafxZu7m7NFPcOZyMBV-2ufbiDi_7MLWyqm-Eg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Date: Thu, 9 Jun 2016 11:34:37 +0200 (CEST)
From: Roman Drahtmueller <draht@schaltsekun.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant
 time codepath for certain operations
To: oss-security@lists.openwall.com, Billy Brumley <bbrumley@gmail.com>

> >
> > The same principles apply when the computational burden is reversed for client auth, aren't they?
> 
> Are you talking about the SSH target?
> 
> If so, the realistic scenario is a user with legitimate credentials
> logging into a server to steal the DSA host key locally with cache
> timings.
> 
> I don't think client-side enters into the equation for this vuln. You
> need an active attacker initiating handshakes. That's my 2c -- we
> didn't consider client-side victim much in this work.

The paper very resourceful, and thank you for sharing your thoughts 
even beyond it!

> If it's the TLS target, you need local access or manage to co-locate
> in cloud scenarios. Not as realistic as the SSH case IMO.


Control over CPU utilization (and thereby cache eviction) can be achieved 
by a remote attacker: Web applications are influenced remotely by 
definition, and they are far from slim or localized these days. 
Keepalives allow to keep the system in a sling with predictable resource 
utilization including cache fills, as there is not only just data stuffed 
through some buffers.

The question remains if the deterioration of the SNR (*) leaves enough 
resolution to be useful. This would no longer constitute a cache-based 
attack with the terrifyingly clear signal, but the sharp edges in the 
latency that you have demonstrated may contribute to filtering the effect 
from the noise. 
While the cause - non-constant-time implementation - remains.

Are the orders of magnitude in range?

R.

> BBB

(*):
-: network jitter, uncontrolled task concurrency
+: NIC offloading functions, cache coherency artefacts with multi 
threaded apps, carefully chosen timing between cache eviction activity 
and latency measurement of responses.

