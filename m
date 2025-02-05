Received: (qmail 5451 invoked by uid 550); 6 Feb 2025 16:30:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24130 invoked from network); 6 Feb 2025 08:08:05 -0000
Authentication-Results: ext-mx-out013.mykolab.com (amavis);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	in-reply-to:content-disposition:content-type:content-type
	:mime-version:references:message-id:subject:subject:from:from
	:date:date:received:received:received; s=dkim20240523; t=
	1738829275; x=1740643676; bh=StnAITiTGkwrlJbKqoN7tRSZJV3B1xg3QUf
	a7xUWshw=; b=WgtUpuaWp5SfJc5jQx535DD61N4bvIPKUyl3dZYgBGPOBMEUvCt
	ty+fWxetXVduYJp8ZoDrWm+WqP2R2KcnBmD070GU3FTxXo5xtlLhcdyUcRHJ2ICt
	bRzOkcEySZtrpVGxE6A2yJfjRwzzUbJk6VOS0wIi9j+MZo+3l8kwwqUfMbvG9vYd
	Ru+Wj+KkQ7sqiwXQSZkumdqj4OeU80GrqIiMgPFVPq8lp0O0cniZa3ufXXFhzLMP
	jtypiYuhBr4JFzbHASlv9jvHgkHodmMK4eF+i0/UvqGj/Xdl6KAx0PgDBZe3BO4p
	XBA9iTu+CN3s6T1C0UdR/qZ9lwO8wqQYacQ==
X-Virus-Scanned: amavis at mykolab.com
Date: Wed, 5 Feb 2025 21:14:03 +0100
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Cc: Daniel Stenberg <daniel@haxx.se>
Message-ID: <Z6PGi6NEnJWK4xeF@nihonium>
References: <9s413pp0-or33-59o0-pq82-40s270002npp@unkk.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9s413pp0-or33-59o0-pq82-40s270002npp@unkk.fr>
Subject: Re: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-0725: gzip
 integer overflow

* Daniel Stenberg <daniel@haxx.se> [2025-02-05 09:21]:
[...]
> This problem can only trigger when using a run-time zlib version 1.2.0.3 or
> older. zlib 1.2.0.4 was relased on August 10, 2003. This means zlib versions
> that do not trigger this problem have been available and used for more than
> twenty-one years already. A zlib version 1.2.0.3 or earlier still in use is
> vulnerable to a wide range of security problems and a user using this is
> already in a spectacularly bad position.
> 
> libcurl featured code that at run-time takes a different code path for zlib
> versions before 1.0.2.4 because of lack of functionality in those old
> versions, and this rarely used piece of code contained the vulnerable code
> path.

I assume this last version should have been 1.2.0.4 as before and not 1.0.2.4?

[...]
> SOLUTION
> ------------
> 
> Starting in version 8.12.0, libcurl no longer supports zlib < 1.2.0.4. Using
> such a version will now instead cause a run-time error.
> 
> - Fixed-in: https://github.com/curl/curl/commit/76f83f0db23846e254d940ec7
[...]

Looking at the patch it seems the version check is using a string comparison
instead of a proper numeric one on the version tuple (major, minor, revision,
subrevison):

  if(strcmp(v, "1.2.0.4") >= 0) {

Which, whilst I doubt we'll see such a zlib version any time soon if ever
(though zlib-ng compat might get there a lot faster), would give an incorrect
result for e.g. version "1.10.0.0".

- Fay
