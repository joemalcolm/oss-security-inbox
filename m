X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/01/02/2
Message-ID: <CAG8b5tQ_R_EVdYBK1WONym2d5TzvSHF7JzHtMN3BW=K4=MZ41A@mail.gmail.com>
Date: Wed, 2 Jan 2019 11:04:23 +0400
From: Dhiraj Mishra <mishra.dhiraj95@...il.com>
To: oss-security@...ts.openwall.com
Subject: aria2 leaks passwords for HTTP based authentication
Content-Type: text/plain; charset=utf-8

Hi List,


aria2 is a lightweight multi-protocol command-line utility which leaks data
or potential password via `--log=` attribute for HTTP based authentication
which might allow local attackers to obtain sensitive information. This
issue is somewhat similar to (2019/01/01/1).


It was observed that URL's which gets downloaded via `--log=` attribute
store’s sensitive information.

Example: aria2c --log=file https://user:passwd@...mple.com/


Later CVE-2019-3500 was assigned to this.




Thank you

@mishradhiraj_

