X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/07/6
Message-ID: <CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>
Date: Mon, 7 Aug 2017 08:47:35 -0400
From: Glenn Randers-Pehrson <glennrp@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Cve issue discussion
Content-Type: text/plain; charset=utf-8

It's not causing a crash, just a delay.  You'll safely get either an OOM
message or an EOF message.and no memory leak.

Glenn

On Mon, Aug 7, 2017 at 8:37 AM, Marcus Meissner <meissner@...e.de> wrote:
> Hi,
>
> if it could crash the image reader I would consider it "remote denial of service"
> classed and CVE worthy.
