X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3266" "Tuesday" "9" "July" "2019" "16:33:07" "+0200" "Hanno =?iso-8859-1?Q?B=F6c?==?iso-8859-1?Q?k?=" "hanno@hboeck.de" "<20190709163307.158714a5@computer>" "73" "[oss-security] Data exfiltration with FPM servers (HHVM and rarely PHP)" nil nil nil "7" "2019070914:33:07" "[oss-security] Data exfiltration with FPM servers (HHVM and rarely PHP)" (number mark "U       hanno@hboeck Jul  9   73/3266  " thread-indent "\"[oss-security] Data exfiltration with FPM servers (HHVM and rarely PHP)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Data exfiltration with FPM servers (HHVM and rarely PHP)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31981 invoked by uid 550); 9 Jul 2019 14:33:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31943 invoked from network); 9 Jul 2019 14:33:24 -0000
Date: Tue, 9 Jul 2019 16:33:07 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20190709163307.158714a5@computer>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Data exfiltration with FPM servers (HHVM and rarely PHP)

FPM daemons may lead to file exfiltration. This primarily affects HHVM.

FPM is a method to execute PHP CGI scripts in a more performant way.
The FPM daemon provides either a socket or TCP port (default 9000) that
can be used with the FastCGI protocol, a client can request the
execution of a PHP script.

FPM is supported both by upstream PHP and HHVM. HHVM was originally a
reimplementation of PHP by Facebook, though in current versions it no
longer supports PHP syntax, instead it supports the HACK programming
language. THis distinction is relevant for this vulnerability, more
below.


When an FPM daemon is running on the public IP this may be used to
exfiltrate files. The reason is how PHP scripts work. PHP is usually
embedded within HTML files in <?php ?> tags, where the rest of the file
is just passed through. This has the consequence that every file that
doesn't have any php tags is still in a sense a valid PHP script that
does nothing else than outputting itself.

Thus one can connect to an open FPM port and request the execution of
e.g. /etc/passwd or any other file that the attacker is interested in.
This can be manually tested with the cgi-fcgi command line tool
(available in the fcgi package in many distributions):

SCRIPT_FILENAME=3D/etc/passwd SCRIPT_NAME=3D/etc/passwd REQUEST_METHOD=3DGET
cgi-fcgi -bind -connect [targethost]:9000

In HHVM 3.x this directly works in default settings. This works e.g. in
a standard ubuntu system when using Ubuntu's own HHVM packages and no
configuration changes.

In HHVM 4.x the PHP syntax is no longer supported. I don't know the
exact circumstances, but in my tests I was still able to exfiltrate some
files, but not others, I guess it somehow depends on how the file is
interpreted considering the HACK syntax.

In response to my report facebook changed the default setting to not
expose fpm on the public IP.

In upstream PHP the vulnerability is mitigated by two facts. First of
all in default settings the FPM daemon only listens on localhost, so
unless an admin actively changes the setting or has some unusual
network settings it is not available through the network.
Second PHP's FPM has an option "security.limit_extensions" that
restricts the file extensions that will be recognized as valid scripts.
It's set to .php and .phar by default.
This effectively means no arbitrary files can be exfiltrated unless
this setting has been changed.
Exposing FPM to the public may still pose a risk, however only if an
attacker can gain knowledge of a path of a PHP file that should not be
accessible publicly. (There may e.g. be a non-public PHP script that is
protected via .htaccess.)
However given the circumstances I find it very unlikely to be a big
problem for PHP and in any case would consider this a configuration
mistake and not a PHP vulnerability.

In any case: If you have an FPM daemon running on the public interface
on port 9000 this is almost certainly not what you want and may be a
security risk.


I've published something in German about this vuln here:
https://www.golem.de/news/fpm-sicherheitsluecke-daten-exfiltrieren-mit-face=
books-hhvm-1907-142418.html

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
