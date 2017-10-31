X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2135" "Tuesday" "31" "October" "2017" "13:23:52" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20171031132352.2df6d2ad@pc1>" "54" "[oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103112:23:52" "[oss-security] Fw: Security risk of vim swap files" (number mark "        hanno@hboeck Oct 31   54/2135  " thread-indent "\"[oss-security] Fw: Security risk of vim swap files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28362 invoked by uid 550); 31 Oct 2017 12:24:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28322 invoked from network); 31 Oct 2017 12:24:06 -0000
Message-ID: <20171031132352.2df6d2ad@pc1>
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2017 13:23:52 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

I just sent this to the vim dev list, but I guess it's interesting for
oss-security, too.

Begin forwarded message:

Date: Tue, 31 Oct 2017 11:30:50 +0100
Subject: Security risk of vim swap files


Hi,

I wanted to point out an issue here with vim swap files that make them
a security problem.

By default vim creates a file with the name .filename.swp in the same
directory while editing. They contain the full content of the edited
file. This usually gets deleted upon exit, but not if vim crashes or
gets killed (e.g. due to a reboot).

On web servers this can be a severe security risk. One can e.g. scan
for web hosts that have swap files of PHP configuration files and thus
expose settings like database passwords. (e.g. wget
http://example.com/.wp-config.php.swp )

In a scan of the alexa top 1 million I found ~750 instances of such
files. I tried to inform affected people as best as I could. I also
discovered such scans in my own web server logs, so I assume black hats
are already aware of this and it's actively exploitet.

I was wondering how to best avoid this on my own servers and I first
thought about saving the swap files to tmp ( with "set directory").
However on multiuser systems this creates another security problem.
These files are world readable, thus instead of leaking information to
the world it's now leaking information to other users on the same
system. Thus even if one is aware of the issue it's nontrivial to get
secure settings (I've now worked around this by having per-user tmp
dirs with secure permissions.)

I think vim should change the behavior of swap files:
1. they should be stored in /tmp by default
2. they should have secure permissions (tmp file security is
a tricky thing and needs careful consideration to avoid symlink attacks
and the like, but there are dedicated functions for this like mkstemp).
3. Ideally they also shouldn't leak currently edited filenames (e.g.
they shouldn't be called /tmp/.test.txt.swp, but more something
like /tmp/.vim_swap.123782173)

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

