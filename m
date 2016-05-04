X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["834" "Wednesday" "4" "May" "2016" "00:05:16" "+0000" "Brandon Dees" "brandon@rietta.com" "<CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>" "28" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016050400:05:16" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        brandon@riet May  4   28/834   " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<20160503235110.GD1250@sentinelchicken.org>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<20160503232637.GA2319@hunt>" "<20160503235110.GD1250@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9505 invoked by uid 550); 4 May 2016 04:51:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32092 invoked from network); 4 May 2016 00:05:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rietta.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ZC15kBRbSm0xqIxx9XfplMWEqWs/ellkBnzrtXXrOYc=;
        b=PgcM9+h3qupaLVFEwDSFZzK+PELaJ03H+eiIXHJMNj8uM72Eboa+PbreH4Q1AiOJy8
         Oz0aVtO1hiiLw/aoUeGWyYNVt2+ehKzGfRfRAKWcvzxjVZSaC3OD9bwXIxZYVvU++IkH
         8JnK0TijQ2tqcKElm3KmDdlu0kyZkVdL/15fA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ZC15kBRbSm0xqIxx9XfplMWEqWs/ellkBnzrtXXrOYc=;
        b=BmaVmdVEP30cmcrKb2tE6bDKBqvDEgnJOY902zo7dlaqhte+KKL7AueQSNZVjfhgpK
         djT0S4ung0kzN0L+o5OarQsnlZ0/1z/6OZfViqIYx2s8WTvfKp5n6yHif7IeKv4uNWOw
         mB7hHa3e8LWPJbkRszX5c86bpZ0EdCEAdKtI0HmaP9Ed4gUUHOgUU0/C9ye6kF5NT8yn
         fjy6ncpbtPw1pz5Z7CQA1la4PhEQYlQGIE1YutQrWaYRHUL/cFJiLIipBCMYPwggjnXR
         YyU1O70eqCTRo8q08h7oXjMKOUINkIeExcohF1Bad4WBauyMiYwtMLlqrdlp4eNHiQA+
         kMvA==
X-Gm-Message-State: AOPr4FX2mFzBCXtiIoP5CKlR5AEqo/fZLZqz6+oCBzTNx6c/axLLG8Dktl2BhYt1yYNMPlyqkJYXTsoOFL/Kcw==
X-Received: by 10.107.162.84 with SMTP id l81mr7254083ioe.47.1462320325464;
 Tue, 03 May 2016 17:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com>
 <20160503232637.GA2319@hunt> <20160503235110.GD1250@sentinelchicken.org>
In-Reply-To: <20160503235110.GD1250@sentinelchicken.org>
Message-ID: <CAC_overhfzw39AL6+0r5hq8JhHb8AOD6-+-V-+ejfDE8OPZb7A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11402f868c32df0531f8fbd3
Date: Wed, 04 May 2016 00:05:16 +0000
From: Brandon Dees <brandon@rietta.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com, Seth Arnold <seth.arnold@canonical.com>

--001a11402f868c32df0531f8fbd3
Content-Type: text/plain; charset=UTF-8

is it appropriate to ask if the same issues are present in GraphicsMagick
as well?

On Tue, May 3, 2016 at 6:52 PM Tim <tim-security@sentinelchicken.org> wrote:

>
> > Or, replace the strings with arrays and use execve() instead of system().
>
> ^^^
>
> That.
>
> system() should be taken out into the street and shot.  There's just
> no good reason for a respectable programmer to use it.
>
> Not saying that's the *only* thing they would need to do, but we need
> to encourage development platforms, in general, to stop offering up
> awful interfaces like this.  Heck, Node.js offers a child_process.exec()
> call that isn't exec at all.  It is (approximately) system().  Surely
> that won't lead to any problems...
>
> tim
>

--001a11402f868c32df0531f8fbd3--
