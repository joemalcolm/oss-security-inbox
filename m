X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/17/4
Message-ID: <CAPyFy2AoQ_OueQR5tfmYO6fV87E6OKZSBdufeuw2F-_UN+XY=Q@mail.gmail.com>
Date: Fri, 17 Mar 2023 10:51:05 -0400
From: Ed Maste <emaste@...ebsd.org>
To: oss-security@...ts.openwall.com
Subject: Re: TTY pushback vulnerabilities / TIOCSTI
Content-Type: text/plain; charset=utf-8

On Wed, 15 Mar 2023 at 04:45, Fabian Keil <freebsd-listen@...iankeil.de> wrote:
>
> In ElectroBSD I removed TIOCSTI support in 2017 [0] and haven't
> noticed any problems.
>
> According to the commit message "TIOCSTI is still used in tcsh,
> but as tcsh isn't compiled on ElectroBSD we don't care".

All of tcsh's uses of TIOCSTI are in `#ifdef TIOCSTI` blocks so tcsh
should still build and function with it removed (e.g., with the ioctl
renamed) I imagine.
