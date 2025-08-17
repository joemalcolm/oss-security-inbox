Received: (qmail 7501 invoked by uid 550); 17 Aug 2025 01:48:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28008 invoked from network); 17 Aug 2025 01:46:03 -0000
Date: Sun, 17 Aug 2025 03:45:57 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250817014557.GA19173@openwall.com>
References: <20250813203857.GA11693@unix-ag.uni-kl.de> <87a53zyugg.fsf@gmail.com> <20250817010958.GA607521@qaa.vinc17.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250817010958.GA607521@qaa.vinc17.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] xterm terminal crash due to malicious character sequences in file name

On Sun, Aug 17, 2025 at 03:09:58AM +0200, Vincent Lefevre wrote:
> Note: I didn't receive Erik's message. The logs of my mail server
> says that 193.110.157.244 was blacklisted by zen.spamhaus.org and
> dnsbl.ahbl.org. Rather annoying...

I'm unsure we want a list admin topic in this same thread, but anyway:

Sorry about this issue.  It was temporary, which is why you presumably
already correctly received a further message from the thread.

In case anyone else may have missed messages, please check the archive:

https://www.openwall.com/lists/oss-security/

We're normally relaying this list's messages from a different IP
address, which as far as I can see wasn't and isn't listed by Spamhaus.
A few days ago, that normal address happened to be temporarily
rate-limited by Outlook servers too hard, so I temporarily switched to
using the above IP address instead, without realizing it may have
already been on a DNSBL before for whatever historical reason.  Or
alternatively maybe the rDNS vs. HELO discrepancy triggered the listing
just now, because of such temporary use?  Who knows.  I requested
delisting now, and anyway this isn't the address we currently use for
this list.

As to AHBL, its website says "There will be no further updates to the
AHBL. While the private DNSbl/RHSbl is still in operation, the main
project is complete and everyone involved has retired."  So usage of
this DNSBL by your mail server is most likely a misconfiguration.

For further occasions, please bring such topics to me or to the list
admin address privately, unless there's a reason to post to the list.

Thanks,

Alexander
