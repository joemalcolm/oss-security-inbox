X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/07/26/3
Message-ID: <CAGUWgD_G65OBZcMXhErz14E+-6MncSHwr9ZZvogDQOMvaDWaHA@mail.gmail.com>
Date: Mon, 26 Jul 2021 18:59:30 +0300
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Potential symlink attack in python3 __pycache__
Content-Type: text/plain; charset=utf-8

On Sat, Jul 24, 2021 at 7:34 PM Michael Orlitzky <michael@...itzky.com> wrote:

> When subdirectories of DIR1 are writable by anyone other than the
> person running the script, you have a bunch of problems:
>
>   https://bugs.python.org/issue16202
>
thanks.
python3 shell is still vulnerable from modules in the current
directory, but some of them like |sys| and |os| can't be spoofed.
