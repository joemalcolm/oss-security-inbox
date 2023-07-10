X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/10/3
Message-ID: <CAOJKFBBeRpoYjwUsJNH=c5aAQ+H=rmGPiTUQ+qB7rZ0J1Qt+rQ@mail.gmail.com>
Date: Mon, 10 Jul 2023 10:08:22 -0500
From: Brandon Perry <bperry.volatile@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2022-42009: Apache Ambari: A malicious authenticated user can remotely execute arbitrary code in the context of the application.
Content-Type: text/plain; charset=utf-8

Do you have an example proof of concept or a bug link for this?

On Mon, Jul 10, 2023 at 10:06 AM Brahma Reddy Battula <brahma@...che.org>
wrote:

> Affected versions:
>
> - Apache Ambari 2.7.0 through 2.7.6
>
> Description:
>
> SpringEL injection in the server agent in Apache Ambari version 2.7.0 to
> 2.7.6 allows a malicious authenticated user to execute arbitrary code
> remotely. Users are recommended to upgrade to 2.7.7.
>
> Credit:
>
> Jecki Go (jecgo@...a.com) (finder)
>
> References:
>
> https://ambari.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2022-42009
>
>

