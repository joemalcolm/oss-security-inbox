X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/20/22
Message-ID: <c1ccf91b-ad4c-9ffa-f31f-48c529dde8cf@gmail.com>
Date: Thu, 20 Apr 2023 15:44:08 -0700
From: Matthew Fernandez <matthew.fernandez@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Perl's HTTP::Tiny has insecure TLS cert default, affecting CPAN.pm and other modules
Content-Type: text/plain; charset=utf-8


On 4/20/23 14:26, Steffen Nurpmeso wrote:
> Jeffrey Walton wrote in
>   <CAH8yC8nYOGAsnPkm+f3-b7r4PvZ=QxeKT9DXK=MoFVoFDGav9w@...l.gmail.com>:
>   |On Thu, Apr 20, 2023 at 9:05 AM Steffen Nurpmeso <steffen@...oden.eu> \
>   |wrote:
>   |I don't think HTTPS discriminates against servers with self-signed
>   |certificates. A user is free to limit trust to a single, self-signed
>   |certificate. The docs show the user how to do it.
> 
> That seems very, very complicated for non-nerds.
> I fail to see user-enabled documentation for how to achieve this,
> but i am only using command line / console programs, it can be the
> desktop environments make this easy.

I hesitate to reply to this thread because I struggle to understand what 
topic it has diverged into, but I just wanted to note that embedded 
browsers configured to accept a single self-signed certificate are not 
uncommon in corporate environments. Thus a (non-technical) end user may 
be using a browser like this that has been configured for them by device 
management. Whether this is a good design/idea, I leave to others’ 
judgement.
