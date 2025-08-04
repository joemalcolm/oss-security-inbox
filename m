Received: (qmail 16013 invoked by uid 550); 4 Aug 2025 16:10:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19971 invoked from network); 4 Aug 2025 09:22:27 -0000
Date: Mon, 4 Aug 2025 11:22:17 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20250804092217.GA962280@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)
Subject: [oss-security] StarDict sends the user's X11 selection to the network

With some plugins, StarDict sends the user's X11 selection from
other applications to some servers: dict.youdao.com and dict.cn
(both Chinese servers).

This happens *by default* under Debian testing (future Debian 13)
at least, without any warning. These plugins are installed and
enabled automatically when the user installs stardict / stardict-gtk
(stardict-gtk has a Recommends on stardict-plugin), which is just
advertised as being an international dictionary lookup program.
But this would still be an issue if the user had installed the
stardict-plugin package explicitly (which contains many plugins),
as such a feature is uncommon and unexpected.

To reproduce under Debian / X11[*], just run the StarDict application,
and select some word in some other application. StarDict immediately
scans the selection and sends it to some servers.

[*] According to a post in the debian-user list, there is no such
issue in Wayland:

  https://lists.debian.org/debian-user/2025/08/msg00076.html

For instance, when I select "relation" in some application, an strace
on stardict shows:

911565 write(16, "GET HTTP://dict.youdao.com/fsearch?q=relation HTTP/1.0\r\nUser-Agent: Mozilla/4.0(compatible;MSIE 5.00;Windows 98)\r\nAccept: */*\r\nHost: dict.youdao.com\r\nConnection: close\r\n\r\n", 171) = 171

and

911565 write(17, "GET HTTP://dict.cn/ws.php?utf8=true&q=relation HTTP/1.0\r\nUser-Agent: Mozilla/4.0(compatible;MSIE 5.00;Windows 98)\r\nAccept: */*\r\nHost: dict.cn\r\nConnection: close\r\n\r\n", 164) = 164

Note also that this is transmitted via HTTP only, thus not encrypted
on the network. So someone closer to the user might also be able to
see the data.

This is a major issue as selections are used to copy data between
applications, not with the purpose to do a dictionary lookup, and
such data may be confidential (could be passwords, for instance).

I reported this bug in the Debian BTS:

  https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1110370

but the maintainer of the package regards this "feature" as fine.

A similar behavior ("stardict broadcasts clipboard context over network")
had already been reported in the past and got CVE-2009-2260:

  https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=534731
  https://security-tracker.debian.org/tracker/CVE-2009-2260

It as fixed at that time by disabling netdict at build time, but
has apparently reappeared.

This was mentioned at

  https://lists.debian.org/debian-user/2025/08/msg00078.html

Here, this is even worse, because this occurs on the user's selection
(the X11 PRIMARY selection?), i.e. the user does not even have to
copy the selection to the clipboard (or was bug 534731 actually also
about the selection, though not mentioned in this bug report?).

I don't know whether other distributions are also concerned by default
and/or have sufficient warnings.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
