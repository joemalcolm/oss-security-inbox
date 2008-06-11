X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/06/11/2
Message-ID: <Pine.GSO.4.51.0806102037420.23282@faron.mitre.org>
Date: Tue, 10 Jun 2008 20:37:57 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: exploitability of off-by-one in motion webserver
Content-Type: text/plain; charset=utf-8


On Tue, 10 Jun 2008, Nico Golde wrote:

> Hi,
> in http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=484572 I
> reported an off-by-one programming error in motion:
>
> 1950 static int read_client(int client_socket, void *userdata, char *auth)

Use CVE-2008-2654

- Steve
