X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/21/2
Message-ID: <CAGKxTURUKjUkjXOKvT+MdYZTXyVQq6fQEj2tsxyXhXE+XxvVmw@mail.gmail.com>
Date: Fri, 21 Apr 2023 09:18:33 +0930
From: Christian Heinrich <christian.heinrich@...h.id.au>
To: oss-security@...ts.openwall.com
Cc: sjn@....org
Subject: Re: Perl's HTTP::Tiny has insecure TLS cert default, affecting CPAN.pm and other modules
Content-Type: text/plain; charset=utf-8

Stig,

On Wed, 19 Apr 2023 at 01:24, Stig Palmquist <stig@...g.io> wrote:
> ... and more. We have generated a list of over 300 potentially affected
> CPAN distributions.

The responsibility for this fix is therefore with the maintainers of
the CPAN modules who accepted the residual risk as documented at
https://metacpan.org/pod/HTTP::Tiny#SSL-SUPPORT rather than HTTP:Tiny
itself.


-- 
Regards,
Christian Heinrich

http://cmlh.id.au/contact
