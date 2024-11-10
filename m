Received: (qmail 32049 invoked by uid 550); 10 Nov 2024 19:39:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13540 invoked from network); 10 Nov 2024 18:42:25 -0000
Authentication-Results: ext-mx-out011.mykolab.com (amavis);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	in-reply-to:content-disposition:content-type:content-type
	:mime-version:references:message-id:subject:subject:from:from
	:date:date:received:received:received; s=dkim20240523; t=
	1731264135; x=1733078536; bh=bZHgMjy1KdcrPyeqf8l4b5boLwy5lDGFcnF
	4oqJdj1I=; b=BnjUi5Tmn6SnuHy/wOsNEmGRc+FqTA8cI/B/7IeJMZu4tByRqk5
	/3qqpKVSH4qJeZmPN7KKXokOYRux6xWEyquloXVo7nv/njd0i9cH7IJk7wf2L00W
	exL4Bnz59W/gXBxDIC2F7KV6rCCPhL81iAyXtDbICSe83iIRLAzuvxwyxiHzwFW0
	bT6O1gJWKW9/9ccz1mXuN/HkSGWxuWDCHGUiBjoL/7WPnf1gunhtqciUqRXMHfoW
	7XSVRD1zxqJMqFKzKrupRdi6pSOL4R3wDGj+W+yQqcJkpaPea1JzSxhRIoEA9eXN
	cbE6qXhlF3gEV6xnVs+AcCDrhBNb/e/ccOg==
X-Virus-Scanned: amavis at mykolab.com
Date: Sun, 10 Nov 2024 19:42:13 +0100
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <ZzD-hesVF30H4dLW@nihonium>
References: <20241106041215.GA4432@openwall.com>
 <CAGUWgD_T4vUhBfkmjm+8ELcuiOD9dx1vSC4HnKG88Py7ip+zPw@mail.gmail.com>
 <CABEVAa0+EE0M3Q2wwpOSX0-VCw95xSjZV-1S4u7hSYY9K=YK7w@mail.gmail.com>
 <21a818cc-d665-43a7-8ff0-c23769f6da04@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <21a818cc-d665-43a7-8ff0-c23769f6da04@gentoo.org>
Subject: Re: [oss-security] shell wildcard expansion (un)safety

* Eli Schwartz <eschwartz@gentoo.org> [2024-11-10 00:59]:
[...]
> Overall, wildcards are just a classic "here is a programming language
> footgun, we cannot fix it because the language is backwards compatible
> to the 90s and earlier" which amounts to:
>
> people love bash because it's "simple" and "easy" and "anyone can write
> a bash script without knowing what they are doing".
[...]

Obviously, shell scripts and wildcards are one of the easiest ways to trip up
here.  But the underlying issue is that CLI interfaces mix options and
arguments: the lack of a clean separation between data and code/commands
(another example is e.g. printing unescaped control characters to stdout,
something discussed on this list before, and far too common IME, as I recently
found out playing with control characters in X.509 certificate DNs).

This isn't just a shell problem, it's just that shell scripts call external
programs much more frequently.  I certainly don't call external tools like grep
or find from Python the way I do in shell scripts, but it's not exactly uncommon
to have to call some external program (e.g. git) to do something.

And when I do I always make sure to use "--" before any arguments that come from
external sources (user, filesystem) to ensure they're not interpreted as
options, because that problem isn't limited to shell scripts (and for shell
scripts shellcheck can at least provide warnings in common cases).

Nor is it limited to wildcards: e.g. you would have the exact same problem if
you're reading the arguments as lines from a file instead, or getting them from
an HTTP request.  The real problem isn't that a wildcard can expand to things
that start with dashes, the problem is that it matters because the program
receiving the arguments will interpret those as options.  That's the footgun.

Everything that deals with data from external sources and passes it to something
that may interpret some of that data as code/commands has to
validate/sanitise/escape that data.  Ideally one would use an interface that
doesn't mix data and code/commands, which "--" more or less provides (but it's
easy to forget, and of course not all programs support it).

- Fay
