X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["864" "Thursday" "29" "November" "2018" "23:12:55" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181129231255.25fe8a92@computer>" "24" "Re: [oss-security] memory safety bugs in bc" "^Date:" nil nil "11" "2018112922:12:55" "[oss-security] memory safety bugs in bc" (number mark "        hanno@hboeck Nov 29   24/864   " thread-indent "\"Re: [oss-security] memory safety bugs in bc\"\n") "<87ftvjygyx.fsf@fifthhorseman.net>" ("<20181128133145.2f53802b@computer>" "<20181129091818.unk7zap2xiznptfc@suse.de>" "<87ftvjygyx.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1458 invoked by uid 550); 29 Nov 2018 22:13:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1437 invoked from network); 29 Nov 2018 22:13:04 -0000
Message-ID: <20181129231255.25fe8a92@computer>
In-Reply-To: <87ftvjygyx.fsf@fifthhorseman.net>
References: <20181128133145.2f53802b@computer>
	<20181129091818.unk7zap2xiznptfc@suse.de>
	<87ftvjygyx.fsf@fifthhorseman.net>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 29 Nov 2018 23:12:55 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] memory safety bugs in bc
To: oss-security@lists.openwall.com

On Thu, 29 Nov 2018 11:40:54 -0500
Daniel Kahn Gillmor <dkg@fifthhorseman.net> wrote:

> I haven't evaluated how many of those systems might pass untrusted
> input to bc (maybe none!), but this is hardly "standalone".

I think that's not what Marcus meant.

These packages on debian likely call bc via the commandline.

The idea here is that "mild" memory safety violations (invalid reads,
nullptr) don't get security treatment if they're in a standalone tool,
yet they do if they're in a library, which may have larger implications
in more complex apps.
I can somewhat understand that. (And decided for myself not to care
too much about CVEs anyway. Relevant for me is primarily that I shared
the info, so others can decide how they act on it.)

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
