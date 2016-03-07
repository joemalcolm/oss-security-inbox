X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/07/13
Message-ID: <CAHmME9rcosK0SkpG5pdbq4jfqCYJ4t3_y-Y8j1vEwNwzibkRWg@mail.gmail.com>
Date: Mon, 7 Mar 2016 18:53:33 +0100
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Cgit XSS "vulnerability" has no CVE?
Content-Type: text/plain; charset=utf-8

On Sat, Mar 5, 2016 at 6:41 PM, Peter Bex <peter@...e-magic.net> wrote:
> This allows for an XSS attack by anyone with write access: If you can
> push to a git repository for which the "txt2html" converter is activate,
> you can create a README or README.txt and insert arbitrary HTML.

The XSS situation in those release notes does not cover what you've
described here. You're conflating two separate things.
