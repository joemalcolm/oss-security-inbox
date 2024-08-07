Received: (qmail 24358 invoked by uid 550); 7 Aug 2024 19:28:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23615 invoked from network); 7 Aug 2024 19:08:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dorfdsl.de;
	s=default; t=1723057722;
	bh=wZunMb/z8ZtNBcnYH85V8CPa3Ha7e0bw+xVhm4QrOBw=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=wcVkDvzl954VzwXJ39hNM0S8qJrnxByjI1HbaPMB2YkebNBeX0cZAKBM80c0tdjvV
	 1RxBZlx4FOh/wxwIQnJjTHNya3Akc/X4H6doiTJEtgHfroHCKxiKGF8DDVJZXEi614
	 jiQ1d9E9zxrVMUunyvQdPljnTkuKribNlPTogU+hrGUkLfCMmxfEK8fMsnuBSyOJyT
	 IZPgY7NQxoUBNj6tj98ND8JkCxUnqslXhi9AQI8lIlfm+URWtklcEYnx5MWyX4gCkJ
	 kDOEV4RoUMrEBlHfAxMc5y1MES4HlK/VsyLmSri+NRc5J4ievCf3a8AeIwSLTHEs3k
	 fF93RZ0XzMpQQ==
Date: Wed, 7 Aug 2024 21:08:40 +0200
From: Marco Moock <mm@dorfdsl.de>
To: oss-security@lists.openwall.com
Message-ID: <20240807210840.1eece9c3@zbook>
In-Reply-To: <ZrJv8PDeCxQQJVxH@itl-email>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
	<20240806171232.6bd08942@zbook>
	<ZrJv8PDeCxQQJVxH@itl-email>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Am Tue, 6 Aug 2024 14:48:14 -0400
schrieb Demi Marie Obenour <demi@invisiblethingslab.com>:

> On Tue, Aug 06, 2024 at 05:12:32PM +0200, Marco Moock wrote:
> > Am Tue, 6 Aug 2024 05:02:14 -0400
> > schrieb Neil Horman <nhorman@openssl.org>:
> >   
> > > 1) Are distributions/users comfortable with this approach in the
> > > time frame proposed?  
> > 
> > As a user, this is acceptable for me, but I know there are still
> > machines outside that only offer such old versions.
> > Some of them can't be upgraded easily because the vendor doesn't
> > provide any new versions.  
> 
> Can those machines be put behind a proxy?

Yes, but the proxy must support old and new versions and this will be
hard when support will be dropped. :-)
