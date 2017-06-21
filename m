X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/21/5
Message-ID: <CAO5O-EJqSUT8PcMzEjDF8k8CwxsyHqVSEYbku3HaAhvvKjgCbQ@mail.gmail.com>
Date: Wed, 21 Jun 2017 12:40:57 +0200
From: Guido Vranken <guidovranken@...il.com>
To: oss-security@...ts.openwall.com
Subject: 4 remote vulnerabilities in OpenVPN
Content-Type: text/plain; charset=utf-8

An extensive effort to find security vulnerabilities in OpenVPN has
resulted in 4 vulnerabilities of such severity that they have been
kept under embargo until today.
Interestingly, this comes shortly after the results of two source code
audits were released, which both failed to detect these problems.
The worst vulnerability of the 4 allows a client the drain the
server's memory, which, due to a particular technical circumstance,
may be exploited to achieve remote code execution.

An extensive write-up can be found here:
https://guidovranken.wordpress.com/2017/06/21/the-openvpn-post-audit-bug-bonanza/
. A technical explanation for every vulnerability is provided, and I
ponder the efficacy of source code audits.

Guido
