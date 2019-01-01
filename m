X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1282" "Tuesday" "1" "January" "2019" "12:27:07" "+0100" "Niels =?utf-8?B?TcO2bGxlcg==?=" "nisse@lysator.liu.se" "<nn1s5wpqic.fsf_-_@armitage.lysator.liu.se>" "31" "[oss-security] Disabling ptrace (was Re: [oss-security] Asserts considered harmful (or GMP spills its sensitive information))" "^Cc:" nil nil "1" "2019010111:27:07" "[oss-security] Disabling ptrace (was Re: [oss-security] Asserts considered harmful (or GMP spills its sensitive information))" (number mark "        nisse@lysato Jan  1   31/1282  " thread-indent "\"[oss-security] Disabling ptrace (was Re: [oss-security] Asserts considered harmful (or GMP spills its sensitive information))\"\n") "<3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "<3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25733 invoked by uid 550); 1 Jan 2019 11:32:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15445 invoked from network); 1 Jan 2019 11:27:20 -0000
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
	<20181231191642.GB7238@zira.vinc17.org>
	<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
	<3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com>
In-Reply-To: <3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com> (Matthew
	Fernandez's message of "Mon, 31 Dec 2018 18:38:36 -0800")
Message-ID: <nn1s5wpqic.fsf_-_@armitage.lysator.liu.se>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (berkeley-unix)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: oss-security@lists.openwall.com,  Jeffrey Walton <noloader@gmail.com>
Date: Tue, 01 Jan 2019 12:27:07 +0100
From: nisse@lysator.liu.se (Niels =?utf-8?Q?M=C3=B6ller?=)
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Disabling ptrace (was Re: [oss-security] Asserts considered harmful (or GMP spills its sensitive information))
To: Matthew Fernandez <matthew.fernandez@gmail.com>

Matthew Fernandez <matthew.fernandez@gmail.com> writes:

> E.g. you can attach
> to the victim process with gdb/ptrace and simply read its memory, if
> the sysadmin has not blocked this with Yama or similar.

I think one can disable this in the process itself, using prctl with
PR_SET_DUMPABLE. But documentation is a bit unclear and doesn't
exlicitly mention effect on ptrace (and other debugging interfaces).

If there are any documented best practices, that would be very nice.

My main usecase is lshd (an ssh daemon), which spawns a helper process
with uid of the logged in user, but with gid set to the utmp group, to
provide restricted write access to the utmp database. This is spawned by
a process running as root, so no setuid or setgid executables involved.

Attaching to that process with gdb may imply privilege escalation to
compromise utmp. Last time I tried to investigate, including reading
some linux kernel sources, PR_SET_DUMPABLE looked promising.

(Note I'm not subscribed to the oss-security list, and I'm dropping the
gmp-bugs list where this is off-topic. So please include my email in any
replies).

Regards,
/Niels

--=20
Niels M=C3=B6ller. PGP-encrypted email is preferred. Keyid 368C6677.
Internet email is subject to wholesale government surveillance.
