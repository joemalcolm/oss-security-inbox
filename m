X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/26/15
Message-ID: <CACYkhxhu2LpTqk6oFX8dK3Z-=c2jmtnfMpHbuFbjXFhkW0Z7jw@mail.gmail.com>
Date: Wed, 27 Nov 2013 10:09:49 +1100
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: static IV used in Percona XtraBackup
Content-Type: text/plain; charset=utf-8

On 27 November 2013 05:17, Florian Weimer <fweimer@...hat.com> wrote:
> Is suppose this is part of the fix.
>
> +void
> +xb_crypt_init_iv()
> +{
> +       uint seed = time(NULL);
> +       srandom(seed);
> +}

That's at-best a 32-bit nonce, but would only repeat of srandom() had
collisions.  Presumably more than 1 backup a second is rare?

Just reading data from /dev/urandom would be more robust.

On a side note, a constant IV isn't fatal so long as a unique key is
used every time.  Is the key random, password derived or constant?

Regards,
  Michael
