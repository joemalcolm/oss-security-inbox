X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3054" "Monday" "30" "October" "2017" "10:24:22" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20171030102422.15d1d9c2@pc1>" "74" "[oss-security] Magento: Leaking of config file local.xml" "^Date:" nil nil "10" "2017103009:24:22" "[oss-security] Magento: Leaking of config file local.xml" (number mark "        hanno@hboeck Oct 30   74/3054  " thread-indent "\"[oss-security] Magento: Leaking of config file local.xml\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24288 invoked by uid 550); 30 Oct 2017 09:24:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24239 invoked from network); 30 Oct 2017 09:24:36 -0000
Message-ID: <20171030102422.15d1d9c2@pc1>
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 30 Oct 2017 10:24:22 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Magento: Leaking of config file local.xml
To: oss-security@lists.openwall.com

Magento is a web shop written in PHP.

Magento stores its configuration in a file local.xml, stored in the
webroot under app/etc/local.xml. As it is an xml file by default a web
server will not parse it in any way, but directly expose it to users.

Magento protects against this by shipping an .htaccess file that blocks
access to that directory. However that is not a sufficient
protection. .htaccess files are specific to the Apache web server.
Other web servers like nginx don't support .htaccess. This leaves users
with a situation where installation on any web server other than Apache
will by default lead to a configuration where the local.xml file can be
downloaded by anyone over the Internet. Even worse, the installation
doc doesn't mention this issue [1].

In June I scanned the Alexa top 1 Million and found 324 vulnerable
installations (out of 10501 magento installations in total). I tried to
inform the affected parties via their abuse contacts.


Recommended Fix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The core of this issue is that using an XML file in the web root to
configure a PHP application is inherently dangerous. There is no
software-independent way to make sure such a configuration doesn't get
exposed. I think the only reasonable safe way to store configurations
for PHP applications is in .php files. If you want to keep using XML
configurations you could store them in a multiline string within a PHP
file.

As this is a severe change a mitigation would be to let the backend
interface check via javascript whether access to the config file is
properly prevented. If the local.xml is accessible magento should
refuse to operate.

At the very least this needs to be properly documented within the
installation docs.

[1] http://devdocs.magento.com/guides/m1x/install/installing.html


Comment / relation to other issues
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

There is a general problem for PHP applications that there is no
server-independent way to prevent access to files. Many use htaccess,
which is insufficient, as it only works on Apache. Recently the Free
Software Foundation had a security issue [2] with Drupal's
backup_migrate module that was based on a very similar problem.

Therefore it should generally be considered an anti-pattern to store
secret files within PHP apps in the web root. Possible solutions are
storage outside of the web root, storage in databases or storage within
PHP code (as it's commonly done for configuration files).

[2] http://www.openwall.com/lists/oss-security/2017/10/29/1

Disclosure
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2017-06-17 Reported via Magento's Bugcrowd Bug Bounty
2017-06-19 Reply that this has already been reported on 2017-03-28 by
someone else.
2017-06-24 I asked whether this will be fixed/changed and whether there
is a timeline for disclosing the original report. No reply.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
