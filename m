X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["995" "Saturday" "16" "January" "2016" "17:58:15" "+0000" "Simon McVittie" "smcv@debian.org" "<569A84B7.7030709@debian.org>" "22" "Re: [oss-security] Setgid/Setuid binary writing privilege escalation" "^Date:" nil nil "1" "2016011617:58:15" "[oss-security] Setgid/Setuid binary writing privilege escalation" (number mark "        smcv@debian. Jan 16   22/995   " thread-indent "\"Re: [oss-security] Setgid/Setuid binary writing privilege escalation\"\n") "<e4945331-396e-5696-1c67-70dbbcd20c32@halfdog.net>" ("<e4945331-396e-5696-1c67-70dbbcd20c32@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8046 invoked by uid 550); 16 Jan 2016 17:58:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8024 invoked from network); 16 Jan 2016 17:58:27 -0000
X-Sending-Uid: 1000
References: <e4945331-396e-5696-1c67-70dbbcd20c32@halfdog.net>
X-Enigmail-Draft-Status: N1110
Message-ID: <569A84B7.7030709@debian.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.5.0
MIME-Version: 1.0
In-Reply-To: <e4945331-396e-5696-1c67-70dbbcd20c32@halfdog.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Sat, 16 Jan 2016 17:58:15 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Setgid/Setuid binary writing privilege escalation
To: oss-security@lists.openwall.com

On 16/01/16 16:39, halfdog wrote:
> As staff is
> has rwx permissions on python dist-packages and /var/local, any root
> process accessing those is at high risk to be used to escalate to uid
> root also.

The staff group on Debian derivatives like Ubuntu is meant to be
root-equivalent anyway[1] (see
/usr/share/doc/base-passwd/users-and-groups.txt.gz for details of what
this group means). If you want to escalate from staff to root, there's
no need to use clever tricks like these, because staff has write access
to directories on root's default PATH.

There is a long-term plan to make everything that is currently 0775
root:staff instead be 0755 root:root, at least on new installations
<https://bugs.debian.org/299007> but it was being done gradually to
avoid breaking existing systems where the sysadmin might be relying on
the staff group's current functionality, and unfortunately it now seems
to have stalled altogether. I'll contact that bug and try to get things
moving again.

    S
