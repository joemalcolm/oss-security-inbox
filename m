Received: (qmail 32412 invoked by uid 550); 11 Apr 2023 12:41:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5898 invoked from network); 11 Apr 2023 11:22:48 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=geeklan.co.uk; h=
	message-id:date:mime-version:to:from:subject:content-type
	:content-transfer-encoding; s=geeklan; bh=PaRWXpxDTJo4Zm8uxlssoe
	iiJ6o=; b=BnoL+EjbG0JWbQp0tNe4mkySREXm/Ih5REOcjRzH7fcxBzd0ex/o0y
	WZx6PFnoBXuyxM5//pxu1i3UmnDr8ZW2xPs9U3uqZYs3thciGoWFyj+X3IXbJF4n
	F8K2k2uI1HIE/t7j1rr/tavRRq/PzpxXUBwQMgHMQS+2oafm4JltzbJn6END2XUb
	khUaxIzKiVkPMIwoz7m1ZCnnKA7F5Ux2p0I+4rjVFzkM4opAZ/O6csGF73Po91bf
	dv86V6CB1oqfn8GAfVU+ikBXHPT8FZEJd6+lcFkmbjQavUZ+tzOOVhGQQs4ece+G
	HyRSRR/HQOcmh+85XC8bhWVJJqCI87QA==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=geeklan.co.uk; h=message-id
	:date:mime-version:to:from:subject:content-type
	:content-transfer-encoding; q=dns; s=geeklan; b=qgUzw7dH9HQREqS4
	mVSCjKBQjO5smPj6+XR7+2uTPooqod18Gu/ewuFs6LgsbqAeuEgBPPN1aGgDUdBT
	fq/28HoLd+qyF08sRgzwOdol2GRWsK12Wi4s74N7600QZgzlGcLY8ktCUbI0qQyJ
	FlV1gVcmmiExstsWiOx1Cams4Bu1GGsmhmTG3cS1j48F/jZtPKjlRAA0rfxo33Pw
	6naIssFTKkHyCk709X3zCWfe//F0/K2L6aOPwAApJphqMY/XM5PU2Z/Kqb5JaZx2
	U0zu0ORswTTFQky79uMl43coTisc0OaVJ209ci/thpEL5oe59l1LxlyJux88HNv/
	rSrnXA==
Message-ID: <ec07456b-6a04-60a3-35e5-c266b6348530@geeklan.co.uk>
Date: Tue, 11 Apr 2023 12:22:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.1
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Sevan Janiyan <venture37@geeklan.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2017-11164 - stack exhaustion in PCRE

Hi,
CVE-2017-11164 landed some years back[1] for PCRE 8.x and is marked
up with a high base score on the article[2], yet no fix was ever listed 
and is still commonly packaged, so I asked Philip Hazel (the PCRE 
maintainer) regarding the issue, and this is what Philip said

"Stack exhaustion is a FEP (frequently encountered problem) in PCRE1
(the 8.xx series). There are various limiting options that the user can
apply to limit stack usage.

...

The code in PCRE2 has been re-written so as to use heap storage instead
of the stack when executing patterns, thus getting rid of a problem that
lots of people encountered with PCRE1."

"PCRE1 has become totally obsolete and is no longer maintained. The
final release was 8.45 (June 2021)"

So just a heads up if you're still linking against PCRE 8.x but software
in question supports PCRE2, perhaps it's time to switch and default to
PCRE2.


Sevan
[1] https://www.openwall.com/lists/oss-security/2017/07/11/3
[2] https://nvd.nist.gov/vuln/detail/CVE-2017-11164
