X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/07/6
Message-ID: <CACYkhxiOxE0VhxE6iWqsO-GjWVn6EYeg4us1oEn6O8KU6ZdbdA@mail.gmail.com>
Date: Mon, 7 Jul 2014 23:59:26 +1000
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Subject: Re: default cipher suites in curl
Content-Type: text/plain; charset=utf-8

On 7 July 2014 22:05, Marcus Meissner <meissner@...e.de> wrote:
>> This will only happen when the server either doesn't support stronger
>> ciphers or when the server requests it's cipher order be honoured and
>> chooses export ciphers first.   An attacker can't trigger this with SSLv3
>> or TLS.
>
> I was more thinking of a man in the middle attack during the connection
> setup.

That only works with SSLv2.   SSLv3 and TLSv1 won't allow this.
