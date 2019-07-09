X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/07/09/4
Message-ID: <20190709113036.0f12d057@jabberwock.cb.piermont.com>
Date: Tue, 9 Jul 2019 11:30:36 -0400
From: "Perry E. Metzger" <perry@...rmont.com>
To: Malte Kraus <malte.kraus@...e.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: Privileged File Access from Desktop Applications
Content-Type: text/plain; charset=utf-8

On Tue, 9 Jul 2019 13:58:37 +0000 Malte Kraus <malte.kraus@...e.com>
wrote:
> With Wayland, it's no longer supported to run graphical
> applications as root.

Can you explain (or point to) a description of why this is a problem?
(It seems like preventing people from editing administrative files as
root and requiring that they use a dbus based file i/o system is
likely to be a source of bugs for years to come...)

Perry
-- 
Perry E. Metzger		perry@...rmont.com
