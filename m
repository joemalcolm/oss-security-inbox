X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2813" "Saturday" "17" "March" "2018" "10:03:43" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180317100343.4edeba53@pc1>" "59" "[oss-security] Squirrelmail directory traversal vulnerability allows exfiltrating files from server" nil nil nil "3" "2018031709:03:43" "[oss-security] Squirrelmail directory traversal vulnerability allows exfiltrating files from server" (number mark "U       hanno@hboeck Mar 17   59/2813  " thread-indent "\"[oss-security] Squirrelmail directory traversal vulnerability allows exfiltrating files from server\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26528 invoked by uid 550); 17 Mar 2018 09:04:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26454 invoked from network); 17 Mar 2018 09:04:02 -0000
Date: Sat, 17 Mar 2018 10:03:43 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <20180317100343.4edeba53@pc1>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Squirrelmail directory traversal vulnerability allows exfiltrating
 files from server

Hi,

During the Troopers conference this week an unpatched vulnerability in
squirrelmail was presented by Florian Grunow from ERNW [1].

The issue is that when uploading a mail attachment a temporary file is
generated on the server that the client later references when sending
the mail. The filename is not sanitized in any way, so by passing a
filename of the form "../../../../some_path/some_filename" one can use
this to attach arbitrary files from the server that can be accessed by
the PHP process to a mail. Thus an attacker who has a mail account
could use this to exfiltrate files and send them as attachments.

The bug is unfixed. The finders say they tried to reach out to the
squirrelmail developers, but were unable to contact them.

Squirrelmail hasn't had a release for many years and the webpage has
its last news from 2013. But despite that until recently the subversion
repository and the provided svn snapshots still provided security
fixes, e.g. a 2017 found injection vuln [2] was fixed.
Despite its stale state I believe many people still use squirrelmail,
in my experience it works better than alternatives like roundcube in
situations where you have very weak internet connections.

I created a preliminary quick and dirty patch that should close the
main hole [3]. It guarantees that the filename only contains letters
and numbers (this should be okay as the filename is created by
squirrelmail and usually doesn't contain any user-controlled
characters in normal operation) and otherwise just terminates the
process. There may be an obscure cornercase where this patch does not
fully protect: If for some reason a user can guess another users
temporary filename while writing a mail one may be able to exfiltrate
that. I find that unlikely enough that I haven't bothered looking more
into this.

The researchers found this flaw while investigating a check point
appliance that bundles squirrelmail for their webmail functionality. As
squirrelmail is GPL I asked check point to share the patch, which they
did and I'm providing it here [4]. I haven't reviewed it, but the ERNW
people told me it may not work with all PHP versions.

In any case if anyone has contact to the squirrelmail authors it would
be great if they could incorporate a fix (and maybe even provide a new
release). Otherwise everyone using squirrelmail should obviously
patch this manually.

[1]
https://insinuator.net/2018/03/squirrelmail-full-disclosure-troopers18/
[2]
https://legalhackers.com/advisories/SquirrelMail-Exploit-Remote-Code-Exec-C=
VE-2017-7692-Vuln.html
[3] https://gist.github.com/hannob/3c4f86863c418930ad08853c1109364e
[4] https://paste.pound-python.org/show/OjSLiFTxiBrTk63jqEUu/
--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
