X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/10/08/7
Message-ID: <CAGUWgD8GSLAn2hT-0fuDzJia9S6+xtxtzx1nMfti0cka8VoH6g@mail.gmail.com>
Date: Thu, 8 Oct 2020 15:20:17 +0300
From: Georgi Guninski <gguninski@...il.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: Debian FEATURE: /home/loser is with permissions 755, default umask 0022
Content-Type: text/plain; charset=utf-8

> /home/loser is with permissions 755, default umask 0022

For people who don't understand the above:
On default debian 10, if except root you have more than one
system user, the users can list and read each others home
directories.
