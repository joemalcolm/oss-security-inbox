Received: (qmail 3718 invoked by uid 550); 30 Sep 2025 06:06:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13609 invoked from network); 30 Sep 2025 06:02:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759212129; x=1759816929; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGrsIQ6KGPMAxdqJZJ9YnNE1EPn+sfZyWX4n7fPac5w=;
        b=W+g3HBtWB3GJkiVd3gRkXMwh+4H1Wlm152494iAH7oBZhcCDVxR1J7aopS1BpKPA4f
         pbtO/478L06gyMTzYBcOfsrLoVayVzxBp5wCQz4Py3sNdlaWkjlwRFnUnQwaK7wfTCKN
         2g+Gu4yIEceZr5OYCwxbSz5MkEFCeR83puiKKdPkctoVFN8Og4Y/E4JyuES0y38fqz2B
         +YHGTXldMXer/fPJ0X5dHfqq3XVf9JWIBPh8KJ2nQJuk9dsybPn0duncAefpQDB/17cZ
         h+pjYJHdtdtj4jqWYEHCi2uNlRJf/HfwDfK9PLtMKKDPV1Vy/h6tWWH9yZ01eBPpckg7
         MX9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759212129; x=1759816929;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZGrsIQ6KGPMAxdqJZJ9YnNE1EPn+sfZyWX4n7fPac5w=;
        b=XscOIYHwvozFe7VbznOpPGsqmJ4kFBIz5w2poxESCyrisl6xeLMB065JCUIvhzUEck
         77+q+ee+Rk4MVL/IsKi+pz2jXktHf17nwppJyayES/jWCDTQHaJ3lK1qSxW4qrHpl7gL
         8FPBB5f7bbOH4gbbCFgouF0UEEyIbm7Fbd69BSGDuNo1qk+2eJ/6XmL9l6J8VyMMT35O
         3RC0t3AW4HfOet7AMZDkM0+Y5yLoqZN25lBNTh/1PvMJ9UCa9qm1xlmbhIz3e/ki+fKp
         ZPHLmdCFe6mG2Xl/e4w6CfuXnXcZgX6dUzi7tSZ0ldlPic4a3q9Zm//uIqIQ7o5I+YZQ
         XepA==
X-Gm-Message-State: AOJu0YxWCxaT4KlJe8YQih+VgensLAPhjs59PWG1DK58sEyjT5ubWttx
	P7uOC1yJq+RvavhnlF8NwVIDzr0cDRRbvg8ak6qrwhGOxhK00Db7bx1kVXQzDQ==
X-Gm-Gg: ASbGncsJjeXinU2AvKFYyEqkRWnkttv6K0ydZaYpRFq45+TH0MiRanR1IHD8XrhBEZn
	iDA683uqO/9kJXfCHAiVZB5G/rt3UQAlFJbTdVmTemVF9iVaYbjF1mHMjuYtMOtC6EVWT+urweY
	mvzqv7ySFbIyLk1Bhjm+RegbVWkyZTNekETuH7qXqQF6bGA5MkCQO1J8l2+shqfhPlNY0hAkSCw
	7r76FL345+xEkBNttPmbPFNpEvXLrYgccISXFzhd55svb2M+pp64ZM/GfNMi0tz9Ul8GJlD/OaO
	YPZVZn4yy7ok4ORG8/8b16XrcdfZe6IFcG6PW36zaih8DuclPfoEU1OJYSa2nFXMXoYVgE10ybS
	+kQbNLbyWgEM9/18nq7p9YdhJyA+4JyiA1g9HKE0LpUxn5zpo+xOwvg==
X-Google-Smtp-Source: AGHT+IFz1V8soRJbP3ZO40gBrZ7yx28ZmCosQmhDstA9WQ6eqXEFWuzqI/mNgVSzFUej1Sv5uqfhgQ==
X-Received: by 2002:a53:b88f:0:b0:632:e937:d6b1 with SMTP id 956f58d0204a3-63b5986721dmr3022658d50.3.1759212128749;
        Mon, 29 Sep 2025 23:02:08 -0700 (PDT)
Message-ID: <1dab9d0b-cd90-406a-81a5-5b20fffe81a5@gmail.com>
Date: Tue, 30 Sep 2025 01:02:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
 <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <20250930052352.GA23546@openwall.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20250930052352.GA23546@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] How to do secure coding and create secure software

On 9/30/25 00:23, Solar Designer wrote:
> [...]
> So is the vulnerability in the shell, like Shellshock was determined to
> be?  [...] the shell maintainers may well dispute this CVE on
> such grounds as well as because the shell worked exactly as documented. [...]

Small nit here:  Shellshock was clearly a vulnerability in Bash and I am 
unsure if the way Bash exports shell functions was documented at all.

If presented with an environment variable value having the correct form 
for a shell function, but containing more text than the body of the 
function, Bash would immediately execute the trailing text as commands 
while importing the shell function from the environment.  That was 
Shellshock.

This went unnoticed for years because Bash, of course, would never 
include trailing text when *exporting* a shell function, so the 
vulnerable code path went unexercised.  I have used Shellshock as a 
counterexample to claims that input validation is unneeded because the 
data will always be written correctly in the proper format by the same 
program.


-- Jacob

