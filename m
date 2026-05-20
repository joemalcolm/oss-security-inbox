Received: (qmail 11680 invoked by uid 550); 20 May 2026 19:07:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18063 invoked from network); 20 May 2026 18:52:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdwaa.nl; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm1; t=1779303124; x=1779389524; bh=tH7iNlz1ma
	MlbsOnGycMEUS40yvnvhruVaZa3yMZM30=; b=5XuB/VKmduEkNvtugs+PNSYUIj
	rZlAMOWXPJrtxYXgz0JqFwfzueKN4VK0/9N0ng/nxnNwNBid5tqJcvkN8w+fL0G9
	firg6odChzyAG7n1M6zmy6q3C0v4EpV0BL/Y8r6wg+6uc3ndtEkw8zR4y3tQPmBc
	YcAlCXVhjvsesZMY+k11XQwa+1wDfb6n2isKF6W0JSrT9j9qsFjvpotyu82SzaeS
	XQW/+H+APXFNXuOCV4TgojKRTexPA/T79UPBFxEmHztc2GD8O9s0gcvPJBSXbuhE
	o4k0aGLj6ZnK7gw7CN6I2wzyv9wO/T23e8t4xvnENqniIJVFFuvwe7E0zhsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1779303124; x=1779389524; bh=tH7iNlz1maMlbsOnGycMEUS40yvnvhruVaZ
	a3yMZM30=; b=jJxyzj3RwHuKucoDGUcuqi8hYFG6hYREw2kgIw9lS+O1hk51Yg0
	8PC4nuxue//fwOQMTxIIKoFidzqwRWCkvdB6s/26MpYCpkMNTduYlYd9tfF/tK6s
	YHysJjkKDB0lQy4Kr3mrv8g9cptj2H0septDepMV9FOqmDFkb6wx32okYJJrZUTd
	uRXIR+IgseCR9T7MWFWP1vVps+4cNP3xJNb+QaLDPXCS6ZYXRwsaO988xucvpOv3
	f5C4MB8gEPP20YeWispm5ir5Nh1z1J++XrCCFVKvWLpOlQkAS+neuhCTazyEbma4
	+5R6Ny6oQ13PH7x5yid1qknyrWTsYaEtgFg==
X-ME-Sender: <xms:1AIOanp-Dxz3EQazmzJfP8Ih4llcmyEZsnegQJxwo_A1BiMZikCK8g>
    <xme:1AIOaomKUunuhBS8Jh4kPPSN9I7O4R51ynrWjkuAYRKSOeserxbLWmtkXzbHk2jiz
    MefEuIWVbZYPYAO7dwcjKLYz47ruLNLXxSoLuR81WAlZVfwDrBLcio>
X-ME-Received: <xmr:1AIOap19CoHLR0DHXKcqiwv-0Es72rny673iBwoN6R20f1tnv92sD-rtVvzd_wNZ9eNkFyW7f2DsuQ5JBVh3WcgifDTBZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddugeehgedtucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfvhffutgfgsehtjeertddtvd
    ejnecuhfhrohhmpeflvghllhgvuchvrghnucguvghrucghrggruceojhgvlhhlvgesvhgu
    figrrgdrnhhlqeenucggtffrrghtthgvrhhnpeduhffgieefffeuveeglefhieekudfgte
    ejffegueelgeffhfetudfgveegkefhhfenucffohhmrghinheprhgvughhrghtrdgtohhm
    pdhgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpehjvghllhgvsehvugifrggrrdhnlhdpnhgspghrtghpthhtohepuddp
    mhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlih
    hsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:1AIOagALhLlb7niwBvx5jdZEc841KStuim2dhy6jkaWlorh4RLsTlg>
    <xmx:1AIOamykP2TJ8dWF69goXs8dP9kiVNDabZOQYMapMtqmr8HZbxtegg>
    <xmx:1AIOaun2DNreK-IxF9bBwQbvQojAD1v6Dl9THB8WuFuZWvZ7KrCKPw>
    <xmx:1AIOarGAJTmy37ahmv2m47ShDr81j9ikDbqmrYtxyR3Z1LjGAvfFPw>
    <xmx:1AIOalzoBgBUFtAzxudTeHL-y40LArMB4ARizN5quUrScIjwuR94SrQ1>
Feedback-ID: i2d0446dd:Fastmail
Message-ID: <54bd25e5-72fd-49b0-8e69-b4d0a20810a5@vdwaa.nl>
Date: Wed, 20 May 2026 20:52:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Content-Language: en-US
From: Jelle van der Waa <jelle@vdwaa.nl>
Autocrypt: addr=jelle@vdwaa.nl;
 keydata= xsBNBE6QLAIBCAC3O6LmF+GKvOh7IV00TG+EKAQHAwjESnHGJOW58lKK7eAYn62ZM1uy0+6h
 yCMu5PD7+ND6U1gcgTTHYwNK8AaJt7yY4FRssgdcJk59uJBwROZtllotClJ893CuB6Wgr68b
 07gIRbENYrB8rEoGfpUG//8/ep7sY8PS03jnFb4ll6mPlUE2oQVdYOlXgF4f9qkkIi4SQeE2
 MTuERaOrDuUNDlroJ7Yfx3J/rL5Qjn578/TKCAxg0pns6VIA/P9spRGmLhT4zP+OxZXeSZme
 IxcwFdJJXHr4oGaZvqe1yHlMmKR98rrIfPWhkw2Ls/XIZIxf6prT0XyczbzBnC2y1JyNABEB
 AAHNIkplbGxlIHZhbiBkZXIgV2FhIDxqZWxsZUB2ZHdhYS5ubD7CwHsEEwECACUCGwMGCwkI
 BwMCBhUIAgkKCwQWAgMBAh4BAheABQJUX8WhAhkBAAoJEMBghjN8UHc+mFwH/jjN+Qob4O36
 YiieajRwVLGuYdUDt9Z655oQYU8V4qbWf2tjUtqTYXrxLnaY6xQoYouRz9yFbh9dIKZb67ir
 7AeVgCOtWVesGxAlGH6EY5JBZcsN0v0ScsivqQAv/Mv+4HK+XM57YlyRagD8tkprYskioWHg
 OwQfXAO6nlm4BJHWO9bHJUMgiGs7I190IKQG7iLBnJuGjsOFuy5KTLpnv+w7twmz0H+pkUPe
 jVHfJlJWdN4v1PigpgpjOR6ZepSIggMk7dHsa6GNLUOzi61yYVFe60+EGXhwyJIqSt56a4oR
 jMUcXaOugGr+JwC8Eq7Pg2+aFk+8fbe0oUzZJucHGnDOwE0ETpAsAgEIAK4Usb7B00WRxCZG
 HtM973F7V4OhOKv4kZKduxtu71bVUZsTuzn4h+m8guJ51uY/I2icUrN9gJG5aEzRqPuQi2L7
 KmZUjs3pscZWgUgiT8UZFDR6RuQ4k3CcWobsRCjYZdSblSZ8ccrLJE7xSbwKMXjAh2PEiaQT
 lS6wQbn6mHv4y3H9QVHs7+jXbmfHCxnVcwLqRmpuegSmezDaL5TlSc102voiXinhrWEZUvAB
 KDh6VuJ/60Y6zelCXVsEjRaApz90iXY1nifLhkHM8B2wG7Pum3V3X0Y0QTVD+z3EL1iq5mFu
 epKp//IOeeJN5iwHcRSJGy2s1oOzjRDyPv6v1AUAEQEAAcLAXwQYAQIACQUCTpAsAgIbDAAK
 CRDAYIYzfFB3PvDuB/0dI13hSYHW27c2Rq8BaGbIhXYYETtPD5B25/P1JJ5OQZkPmVq+vSHw
 uzUaDZHy3ZcwE+xFXzlkwXGdWos07JUGo74zV3HfeZxVEPv0HB9ACqQVU/JKjLZNj2SfhgzL
 4F+O4Zgdsf0YaZG09F5PbMvbhoCZLfAaKWz/4fLEfhrDJLhrphUyPDXosn0UxPkDv0iiixn4
 V+bEZ5/wd8dRWi58R/iND+gRGsBREm5SpzdhnsarwoX6YdsQ449379enDNUN7jV4C3Gkon2s
 VwI2ZZbS10cY8rFSAV/CJA2E9daRoz40DI0tgXgLBAVhy7y5HWZJsDZexU0HFKJfkDi7RUPj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-4802 [cockpit] Arbitrary code execution in the logs page via
 a specially crafted link

A flaw was found in Cockpit. This vulnerability allows a remote attacker 
to achieve arbitrary command execution on the host by exploiting 
unsanitized user-controlled parameters within crafted links in the 
system logs user interface (UI). An attacker can inject shell 
metacharacters and command substitutions into these parameters, leading 
to the execution of arbitrary shell commands on the affected system. 
This could result in a complete system compromise. [1]

The exploit requires the user to be logged in to Cockpit for the exploit 
to be successful. This has been fixed in Cockpit 362, specifically the 
linked commit. [2]

An POC is available in the test commit, an example of the exploit is 
https://cockpiturl:9090/system/logs#/?boot=0;touch${IFS}/tmp/pwned;&priority=err. 
[3]

[1] https://bugzilla.redhat.com/show_bug.cgi?id=2451155
[2] 
https://github.com/cockpit-project/cockpit/commit/e3a47d70f99a0dbbb427b3146ae9571cecc44296
[3] 
https://github.com/cockpit-project/cockpit/commit/7b401c90fd775dd89ffce194c947ff2e74f5e5ee
