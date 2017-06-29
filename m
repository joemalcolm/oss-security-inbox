X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["969" "Thursday" "29" "June" "2017" "11:54:06" "-0400" "Christos Zoulas" "christos@zoulas.com" "<20170629155406.E063617FDA8@rebar.astron.com>" "30" "Re: [oss-security] TIOCSTI not going away" "^Date:" nil nil "6" "2017062915:54:06" "[oss-security] TIOCSTI not going away" (number mark "        christos@zou Jun 29   30/969   " thread-indent "\"Re: [oss-security] TIOCSTI not going away\"\n") "<20170629142346.GA30874@openwall.com>" ("<20170629142346.GA30874@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13605 invoked by uid 550); 29 Jun 2017 15:54:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13578 invoked from network); 29 Jun 2017 15:54:18 -0000
In-Reply-To: <20170629142346.GA30874@openwall.com>
       from Solar Designer (Jun 29,  4:23pm)
Organization: Astron Software
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
Message-Id: <20170629155406.E063617FDA8@rebar.astron.com>
Date: Thu, 29 Jun 2017 11:54:06 -0400
From: christos@zoulas.com (Christos Zoulas)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TIOCSTI not going away
To: oss-security@lists.openwall.com

On Jun 29,  4:23pm, solar@openwall.com (Solar Designer) wrote:
-- Subject: Re: [oss-security] TIOCSTI not going away

| Maybe Christos could comment on tcsh?

TL;DR: tcsh will not lose functionality if TIOCSTI is gone.

tcsh uses TIOCSTI in the editor e_stuff_char() function which is unbound
by default; not many people know about this or use it. There is also the
old FILEC code from csh (that used TIOCSTI to do file completion with
<ESC>), but that is not compiled in. I should remove it but it is kept
there merely for nostalgia :-)

One can be much stricter though about who is allowed to use TIOCSTI
like I've done for NetBSD (require exact credentials match on the
tty). For example the typical example of root running an unprivileged
installer on NetBSD fails:

# cat installer
#!/bin/sh
whoami
/usr/sbin/sti /dev/tty whoami\\n

# su unprivileged -c ./installer
unprivileged
sti: Cannot simulate terminal input: Operation not permitted
# whoami
root

christos
