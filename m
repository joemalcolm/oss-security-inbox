X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/07/1
Message-ID: <CAJznFrtqyw8rGLZ0DV9e8ZkKH+YAwjZOfaxD+0eBKCAje9YnYQ@mail.gmail.com>
Date: Wed, 7 Mar 2018 01:17:46 +0100
From: Slavco Mihajloski <slavco.mihajloski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Authentication bypass mainwp-child < 3.4.5
Content-Type: text/plain; charset=utf-8

https://wordpress.org/plugins/mainwp-child/ remote administration plugin
for Wordpress with 300k+ active installations.

There is authentication bypass on mainwp-child < 3.4.5 and due the nature
of the Wordpress itself, it is a RCE too.


Disclosure:
https://medium.com/websec/authentication-bypass-rce-on-300k-live-websites-using-mainwp-child-3-4-5-30a69097f633

Patch:
https://github.com/mainwp/mainwp-child/commit/1b03e47300d1ee30776a63f4d526e45e1baef4e3#diff-b7c78d39c028166665d187e06e5058a7

