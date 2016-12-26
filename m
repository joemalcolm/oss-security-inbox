X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1341" "Monday" "26" "December" "2016" "15:46:50" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161226154650.4b40cca8@pc1>" "42" "Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122614:46:50" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       hanno@hboeck Dec 26   42/1341  " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") "<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" ("<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9605 invoked by uid 550); 26 Dec 2016 14:47:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9579 invoked from network); 26 Dec 2016 14:47:04 -0000
Date: Mon, 26 Dec 2016 15:46:50 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20161226154650.4b40cca8@pc1>
In-Reply-To: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution
 [CVE-2016-10033]

Hi,

Given I had plenty of time on the train to 33c3 I did a quick
lookaround on what contains PHPMailer. As the details of the vuln
aren't clear yet this doesn't necessarily mean they're vulnerable, just
that they ship the affected code.

The most popular webapps that directly ship PHPmailer seem to be Joomla
and Mantis. Both without an update yet.
Wordpress also ships PHPmailer, but this confused me at first. They
renamed it and it's called class-phpmailer.php (if you use some
automatic detection for vulnerable PHPMailer versions - as I do in
freewvs - you may miss that one). Also no update yet.

Drupal doesn't contain PHPMailer, although mentioned in the advisory.
But there are probably plugins and extensions using it. I also saw it
used in some wordpress themes.

Owncloud and CMS Made Simple don't ship PHPMailer in their current
versions, but in older versions. This may deserve some
closer investigation if the files are leftover after updates and pose
still a risk.

Summary:

Affected popular Webapps with plain PHPMailer:
Joomla
Mantis

Affected popular webapps with modified / renamed PHPMailer:
Wordpress

Affected popular webapps which contained PHPMailer in older versions:
CMS Made Simple
Owncloud

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
