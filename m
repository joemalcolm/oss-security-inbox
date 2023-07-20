Received: (qmail 23831 invoked by uid 550); 20 Jul 2023 14:31:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26423 invoked from network); 20 Jul 2023 13:42:20 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=geeklan.co.uk; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=geeklan;
	 bh=sKg3Wsov5X+mNW97sWw90kblTvs=; b=Oc6yuWcnql52mzdfNrpYNYC8wLqo
	SOISWMpTTjKii5rh/IkBtoSms2rg/wIBN47oCy0b3dsj9umxT2oqmPpZOCGxJJEW
	/h4/5b7gelQ6obr39OJ9asIPXNQ7KGuYQd0rR3z/vxM9Aa0XvEdw9wWbPO5dVJ9J
	N3PzkMh8Pv0lqt/5S+0GhxI6lKOoZKuBte10b5Lh9evzhR2f9CW6uRq3xBZEqcKE
	ab/tCdXn3AUw8G9R0xPm1OfUWFs/UIC24+uJyXiAnEfUT0WNCEisiLEDdXhBDjdP
	ObhQctjWIKwjMlCrxBi/9ZjPaOlxnaJH8qIErbk4Pws+r3uxCSQG64U7vw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=geeklan.co.uk; h=message-id
	:date:mime-version:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=geeklan; b=RhC
	qNAynRWcWEY1T+vetRbhaI5ZiF2OOtOqvOfBcJbYGN57IBmyCXG4kE3Dl2GuIy5J
	s8eiIj5e4IpW9QUGCz/OKqxR2iS/5bm7NWeBPeYEDadxtYGHBR9spj3uVnchFZwU
	/zLefkv3CncQMzJuOHfZblRjb7wsWzKS7NuZWo00gbquoa2158r/b2gFRRtXJ6ZO
	bjJHD9+6jDYpYVnu/NSXp/W5clh2fX8SuzGwH+K3bEkgrrRnZJ5UeVrdN+BU5adk
	G0rVjYSxPNat2jqcWRXVv2XF0zCgGmzpCYztoZZUHjK6WpIrETXBhpdczqJ89+u6
	4OSkyRs4HWOTYY/Alrg==
Message-ID: <1c005469-a540-5cd1-642e-5aebc35dd17b@geeklan.co.uk>
Date: Thu, 20 Jul 2023 14:41:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
References: <e9c022742fc07cee@cvs.openbsd.org> <ZLk1hSUEt00caovk@itl-email>
From: Sevan Janiyan <venture37@geeklan.co.uk>
In-Reply-To: <ZLk1hSUEt00caovk@itl-email>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Announce: OpenSSH 9.3p2 released

On 20/07/2023 14:24, Demi Marie Obenour wrote:
> Should there be a system-wide configuration file containing a list of 
> known-good PKCS#11 libraries? ssh-agent having to guess if something is 
> a PKCS#11 library is less than awesome.

There's a compile time setting for paths from which you are able to load 
libraries from.


Sevan
