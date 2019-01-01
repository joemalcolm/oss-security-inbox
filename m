X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1630" "Tuesday" "1" "January" "2019" "11:15:40" "+0100" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20190101111540.20e73fbc@computer>" "43" "[oss-security] wget / chromium: URL metadata and potential password leaks via extended filesystem attributes" "^Date:" nil nil "1" "2019010110:15:40" "[oss-security] wget / chromium: URL metadata and potential password leaks via extended filesystem attributes" (number mark "        hanno@hboeck Jan  1   43/1630  " thread-indent "\"[oss-security] wget / chromium: URL metadata and potential password leaks via extended filesystem attributes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15970 invoked by uid 550); 1 Jan 2019 10:15:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15938 invoked from network); 1 Jan 2019 10:15:54 -0000
Message-ID: <20190101111540.20e73fbc@computer>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 1 Jan 2019 11:15:40 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] wget / chromium: URL metadata and potential password leaks via
 extended filesystem attributes
To: oss-security@lists.openwall.com

Hi,

Via some twitter discussions [1] I recently learned about a worrying
behavior of wget and Chromium / Chrome.

The URL of downloads gets stored via filesystem attributes on systems
that support Unix extended attributes.

You can see these attributes on Linux systems by running
getfattr -d [filename]
(The download URL is stored in a variable "user.xdg.origin.url")

This is worrying for a number of reasons:
* In combination with HTTP authentication a username and password can
  be part of the URL (HTTP authentication can be accessed via an URL of
  the form https://[username]:[password]@[hostname]/).
* Sometimes URLs may contain secret tokens, e.g. private file shares on
  a file hosting service.
* In general storing metadata at unexpected places should be avoided.

What's limiting this issue a bit is that tar does not by default store
these extended attributes. I haven't tested other archiving tools.

wget has released an update (1.20.1) and CVE-2018-20483 got assigned
[2]. It changes the default behavior: extended attributes only get
stored if a user explicitly enables it with a parameter. I believe this
is a good solution.

It's been reported to Chrome as well. (Currently private bug report,
but given this was already discussed on Twitter I don't think this
needs to be kept confidential.)

It may be worthwhile checking if other tools share this behavior.

[1] https://twitter.com/gynvael/status/1077671412847046657
[2] https://lists.gnu.org/archive/html/bug-wget/2018-12/msg00034.html

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
