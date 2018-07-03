X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/07/03/1
Message-ID: <20180703081145.GA8116@f195.suse.de>
Date: Tue, 3 Jul 2018 10:11:45 +0200
From: Matthias Gerstner <mgerstner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: accountsservice: insufficient path check in user_change_icon_file_authorized_cb()
Content-Type: text/plain; charset=utf-8

> It might be a good idea to double-check that the result of
> g_file_get_path() starts with "/", doesn't contain "/../" and (just for
> completeness) doesn't end with "/..".

I tested the patch initially and and an isolated test case shows that it
does cover all these cases. No system calls appear to be performed.

Regards

Matthias

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
