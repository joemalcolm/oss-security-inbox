X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/21/11
Message-ID: <CACYkhxh=mO-+zNm4CGErzfNPuTxw1ohsRFJTQH4VxrXhTVvBXQ@mail.gmail.com>
Date: Fri, 21 Nov 2014 22:24:21 +1100
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org, 767227@...s.debian.org
Subject: Re: Re: CVE request: lsyncd command injection
Content-Type: text/plain; charset=utf-8

On 20 November 2014 17:55,  <cve-assign@...re.org> wrote:
> Use CVE-2014-8990. The scope of this CVE ID includes both:
>   2. denial of service scenarios in which a user with write access
>      to a local directory uses special characters to make
>      synchronization fail (might have security relevance in some
>      scenarios)

Note that you can still make synchronization fail, because it calls
rsync to perform the synchronization.

See https://github.com/therealmik/rsync-collision for some precomputed blocks

Regards,
  Michael
