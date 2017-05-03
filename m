X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/03/12
Message-ID: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
Date: Wed, 3 May 2017 20:55:23 +0200
From: Guido Vranken <guidovranken@...il.com>
To: oss-security@...ts.openwall.com
Subject: rpcbomb: remote rpcbind denial-of-service
Content-Type: text/plain; charset=utf-8

This vulnerability allows an attacker to allocate any amount of bytes
(up to 4 gigabytes per attack) on a remote rpcbind host, and the
memory is never freed unless the process crashes or the administrator
halts or restarts the rpcbind service.

Attacking a system is trivial; a single attack consists of sending a
specially crafted payload of around 60 bytes through a UDP socket.

This can slow down the system’s operations significantly or prevent
other services (such as a web server) from spawning processes
entirely.

An extensive write-up can be found here:
https://guidovranken.wordpress.com/2017/05/03/rpcbomb-remote-rpcbind-denial-of-service-patches/

Exploit + patches: https://github.com/guidovranken/rpcbomb/
