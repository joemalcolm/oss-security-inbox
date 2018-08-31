X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["831" "Friday" "31" "August" "2018" "12:18:03" "+0000" "vines@riseup.net" "vines@riseup.net" "<20180831121802.4mq7cag23e4fkzoz@raspberrypi>" "14" "Re: [oss-security] Travis CI MITM RCE" nil nil nil "8" "2018083112:18:03" "[oss-security] Travis CI MITM RCE" (number mark "U       vines@riseup Aug 31   14/831   " thread-indent "\"Re: [oss-security] Travis CI MITM RCE\"\n") "<3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "<20180826005658.GA5795@osmium.pennocktech.home.arpa>" "<87sh2y5tnf.fsf@fifthhorseman.net>" "<3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17834 invoked by uid 550); 31 Aug 2018 10:35:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7292 invoked from network); 31 Aug 2018 10:21:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1535710869; bh=a8WSp/ce7IaPw6wJ7k5h3DS1W2J3AYeV9LZi+KvbqpI=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=cM7YbetFo0YK294NXbEz129qRXembEdJwVVDh2A9RYiWXCg37yUOATLQAlLFiZtJ8
	 6/IGuroKmuqIKWDhn94gIgc8o/BP9iOzu2lgTDAJ8ley6SXCQvw0ag39GVwRhlL71q
	 3UtYcY/Q8itv7E588Vo7zNVzFts2TXo0D4nTn8Fg=
X-Riseup-User-ID: E59607CD0F3CABE7DF8B7176A52A0F7945A2138A3F2285AA5F8936AFD1A6D039
Date: Fri, 31 Aug 2018 12:18:03 +0000
From: vines@riseup.net
To: oss-security@lists.openwall.com
Message-ID: <20180831121802.4mq7cag23e4fkzoz@raspberrypi>
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
 <20180826005658.GA5795@osmium.pennocktech.home.arpa>
 <87sh2y5tnf.fsf@fifthhorseman.net>
 <3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>
Subject: Re: [oss-security] Travis CI MITM RCE

> 
> I agree about the "key ID" part, but not about the "fingerprint" part.
> Pinning a cryptographic hash over a public key isn't a security
> antipattern by any strech of the imagination. Sure, you could argue that
> the SHA-1 used by GPG isn't state-of-the-art anymore, but we're not
> talking about collision attacks, but second preimage attacks. Far worse
> for the attacker.
> 

True, yes, harder to brute-force a identical private key, than a key with an identical fingerprint.

However, if someone hadn't considered the possibility of a SHA1 collision attack, and a signature verification fails, despite the fingerprint they see matching, what % of GPG users would skip signature verification?
Perhaps due to confusion/self-doubt/inexperience/other.
Admittedly, this could be stepping into the realm of social engineering.
