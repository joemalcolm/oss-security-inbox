X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["768" "Wednesday" "31" "May" "2017" "13:16:15" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170531131615.58752cc0@pc1>" "29" "Re: [oss-security] I found Crash in tcpdump and radare2." "^Date:" nil nil "5" "2017053111:16:15" "[oss-security] I found Crash in tcpdump and radare2." (number mark "        hanno@hboeck May 31   29/768   " thread-indent "\"Re: [oss-security] I found Crash in tcpdump and radare2.\"\n") "<8XrcMd96kN_Nn_-TzYxWxS_29WZ5T4xj249Hg0NnH1FAaF42pe-_O32I4hSYnNChHMwPzFIhcsL5AQFCwYJmsCzaAC6QTgZtKwoXcGck-Rg=@protonmail.com>" ("<8XrcMd96kN_Nn_-TzYxWxS_29WZ5T4xj249Hg0NnH1FAaF42pe-_O32I4hSYnNChHMwPzFIhcsL5AQFCwYJmsCzaAC6QTgZtKwoXcGck-Rg=@protonmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25966 invoked by uid 550); 31 May 2017 11:16:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25939 invoked from network); 31 May 2017 11:16:28 -0000
Message-ID: <20170531131615.58752cc0@pc1>
In-Reply-To: <8XrcMd96kN_Nn_-TzYxWxS_29WZ5T4xj249Hg0NnH1FAaF42pe-_O32I4hSYnNChHMwPzFIhcsL5AQFCwYJmsCzaAC6QTgZtKwoXcGck-Rg=@protonmail.com>
References: <8XrcMd96kN_Nn_-TzYxWxS_29WZ5T4xj249Hg0NnH1FAaF42pe-_O32I4hSYnNChHMwPzFIhcsL5AQFCwYJmsCzaAC6QTgZtKwoXcGck-Rg=@protonmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 31 May 2017 13:16:15 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] I found Crash in tcpdump and radare2.
To: oss-security@lists.openwall.com

Hi,

On Wed, 31 May 2017 06:39:12 -0400
Qhdwns123 <qhdwns123@protonmail.com> wrote:

> I found Crash in tcpdump and radare2.
>=20
> It points to the heap overflow as the result of analysis by ASAN.
>=20
> What steps should I take to report this issue?

Please report the issues first to their respective developers and
provide the crashing files to them.

tcpdump has a contact address for security issues:
http://www.tcpdump.org/#security

I think radare2 has no specific security reporting process, you can
report it through their github tracker:
https://github.com/radare/radare2/issues

When the bugs are fixed you can post details to this list.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
