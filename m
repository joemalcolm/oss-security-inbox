X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2333" "Thursday" "1" "June" "2017" "18:26:29" "+0000" "Liguori, Anthony" "aliguori@amazon.com" "<1496341589723.65404@amazon.com>" "66" "Re: [oss-security] unresponsive distros" "^Date:" nil nil "6" "2017060118:26:29" "[oss-security] unresponsive distros" (number mark "        aliguori@ama Jun  1   66/2333  " thread-indent "\"Re: [oss-security] unresponsive distros\"\n") "<1496341419911.6271@amazon.com>" ("<20170601180053.GA4752@openwall.com>" "<1496340239333.24020@amazon.com>" "<20170601181906.GA5071@openwall.com>" "<1496341419911.6271@amazon.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26546 invoked by uid 550); 1 Jun 2017 18:32:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21855 invoked from network); 1 Jun 2017 18:26:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1496341603; x=1527877603;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=z+BLh0vRnhbrBKvetkY0v/qrOD+tvSuvB8V1NcNEczc=;
  b=sweZTZ4kH8k/ShzmDtsxdDVd3tYVfxCx3GWZGDon/umIS23JZ0eL9vb5
   lys2xh6jU1b8BsuXJlbTnk3VhlRhEAdnzD0R7NvTlhe2Uy3HFoY/OmF5a
   sZIzfwF9cyipRyx/u+7p5pkCmwX3zdZKSzLv2ndV6qyMT3P9BhneDqJwQ
   I=;
X-IronPort-AV: E=Sophos;i="5.39,280,1493683200"; 
   d="scan'208";a="672766846"
Thread-Topic: [oss-security] unresponsive distros
Thread-Index: AQHS2wEa3VHSqTrNjU+8YAvS7z+TWqIQTH+rgAAEmgCAAACLK4AAASDu
Message-ID: <1496341589723.65404@amazon.com>
References: <20170601180053.GA4752@openwall.com>
 <1496340239333.24020@amazon.com>,<20170601181906.GA5071@openwall.com>,<1496341419911.6271@amazon.com>
In-Reply-To: <1496341419911.6271@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.38]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date: Thu, 1 Jun 2017 18:26:29 +0000
From: "Liguori, Anthony" <aliguori@amazon.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] unresponsive distros
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

To be a bit more transparent.  The ideal thing for us would be to use a non=
-personally owned key for decryption so we could automate ingestion.  Encry=
ption is fine but I will not tie my personal key into Amazon infrastructure.

Normally what we do with disclosure lists is have automation that pages peo=
ple on every message.  As an example, I get paged for every email sent to t=
he Xen disclosure list.

Regards,

Anthony Liguori

________________________________________
From: Liguori, Anthony
Sent: Thursday, June 1, 2017 11:23 AM
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] unresponsive distros

Hi Solar,

The encrypted thread is a single thread with a high volume of messages.  Th=
e later part of the thread loses the context of you explicitly asking for a=
 response.

Coupled with the holiday weekend, that meant when I read through the thread=
 I read too quickly and missed your explicit request.

Had you changed the subject of the thread for the request, it would have be=
en noticed immediately but I don't mean to point too many fingers here.

Regards,

Anthony Liguori
________________________________________
From: Solar Designer <solar@openwall.com>
Sent: Thursday, June 1, 2017 11:19 AM
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] unresponsive distros

Anthony,

On Thu, Jun 01, 2017 at 06:03:59PM +0000, Liguori, Anthony wrote:
> Hrm, I've been following the thread but apparently missed your request So=
lar.

Wow, that was quick.  I don't see how you could have been following the
thread, including in the period since May 27, and miss the request,
since most other distros replied to that very same thread.  With the
replies quoting parts of my request, it was many messages.  I mentioned
the 3 non-responsive distros by name in two messages - yesterday and
today (a few hours before bringing this to oss-security).

What was it about the oss-security posting that made you notice it,
unlike the many messages on the distros list?

Is it the encryption that causes you not to read some messages, or to
postpone doing so (for days)?

With such selective reading, you'd also miss some new issues that are
being brought up as part of this same thread.  The Subject stays since
it's unencrypted, but discussion deviates and expands to new topics.

Thanks,

Alexander

