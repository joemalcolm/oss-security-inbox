X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/16/1
Message-ID: <20181016122143.o7bwrhh3chhmhguk@suse.de>
Date: Tue, 16 Oct 2018 14:21:43 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE-2018-10933: libssh: authentication bypass in server code
Content-Type: text/plain; charset=utf-8

Hi,

https://www.libssh.org/2018/10/16/libssh-0-8-4-and-0-7-6-security-and-bugfix-release/

-----
libssh 0.8.4 and 0.7.6 security and bugfix release

This is an important security and maintenance release in order to address CVE-2018-10933.

libssh versions 0.6 and above have an authentication bypass vulnerability in the server code. By presenting the server an SSH2_MSG_USERAUTH_SUCCESS message in place of the SSH2_MSG_USERAUTH_REQUEST message which the server would expect to initiate authentication, the attacker could successfully authentciate without any credentials.

The bug was discovered by Peter Winter-Smith of NCC Group.
-----

This only affects libssh operating in _server_ mode, but not the usual used client mode.

Ciao, Marcus
