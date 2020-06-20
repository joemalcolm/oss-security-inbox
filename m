X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2058" "Saturday" "20" "June" "2020" "10:47:01" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20200620104701.2a373053@computer>" "50" "[oss-security] Squirrelmail: Use of unserialize() on user data" "^Date:" nil nil "6" "2020062008:47:01" "[oss-security] Squirrelmail: Use of unserialize() on user data" (number mark "        hanno@hboeck Jun 20   50/2058  " thread-indent "\"[oss-security] Squirrelmail: Use of unserialize() on user data\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Squirrelmail: Use of unserialize() on user data" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32419 invoked by uid 550); 20 Jun 2020 08:47:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32389 invoked from network); 20 Jun 2020 08:47:13 -0000
Message-ID: <20200620104701.2a373053@computer>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 20 Jun 2020 10:47:01 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Squirrelmail: Use of unserialize() on user data
To: oss-security <oss-security@lists.openwall.com>

Hi,

The PHP-based webmail tool Squirrelmail uses unserialize() for
untrusted data.

unserialize() is generally not considered safe for this, PHP does not
treat memory safety issues in unserialize as security bugs since a
while and there are other attacks.

In compose.php [1] you can see that squirrelmail uses unserialize on
$mailtodata, which directly comes from a GET variable.

This data usually comes from the mailto.php script which opens a mail
compose interface with a passed mail address.

I've written a patch to convert this to json_encode/json_decode [2].

Unfortunately this is not the only place using unserialize on untrusted
data, later in the same file you can see that $attachments is also
parsed with unserialize, which comes from POST data, thus also
user-controlled. Trying to patch this with a similar strategy broke the
attachment functionality. If someone else wants to give it a try happy
to accept patches. (I'm collecting squirrelmail patches that avoid
warnings, add compatibility to latest PHP versions and fix security
issues here [3]. For reasons unclear to me the squirrelmail developers
only irregularly answer when I send patches and seem to ignore some of
these issues. While they haven't made a release in a long time, they
still sometimes fix security issues in their svn repo.)

It is unclear to me how big of a risk these issues are. There are some
attack strategies on unserialize that involve constructors of objects
[4], but the squirrelmail code doesn't have many objects, so it is
unclear if this is a feasible attack strategy.

I had reported the unserialize security issue to Squirrelmail on May
23rd. Unfortunately I haven't received a reply.



[1]
https://svn.code.sf.net/p/squirrelmail/code/branches/SM-1_4-STABLE/squirrel=
mail/src/compose.php
[2]
https://github.com/hannob/squirrelpatches/blob/main/patches/squirrelmail-se=
curity-mailto-avoid-unserialize.diff
[3] https://github.com/hannob/squirrelpatches
[4] https://blog.ripstech.com/2018/php-object-injection/
--=20
Hanno B=C3=B6ck
https://hboeck.de/
