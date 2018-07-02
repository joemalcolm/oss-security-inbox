X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/07/02/5
Message-ID: <20180702140948.GF8324@f195.suse.de>
Date: Mon, 2 Jul 2018 16:09:48 +0200
From: Matthias Gerstner <mgerstner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: cinnamon: possible symlink attack in cinnamon-settings-users.py
Content-Type: text/plain; charset=utf-8

> The script cinnamon-settings-users.py runs as root (via polkit's pkexec) 
> and allows to configure e.g. other user's icon files. These icon files
> are written to the respective user's $HOME/.face location. If an
> unprivileged user prepares a symlink pointing to an arbitrary location
> then this location will be overwritten with the icon content.

This was assigned CVE-2018-13054.

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
