X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1052" "Monday" "15" "February" "2016" "14:59:19" "+0100" "Roman Drahtmueller" "draht@schaltsekun.de" "<alpine.LNX.2.02.1602151453500.8788@i8.fpunygfrxha.qr>" "26" "Re: [oss-security] cloud-init follows symlinks for ssh authorized_keys" "^cc:" nil nil "2" "2016021513:59:19" "[oss-security] cloud-init follows symlinks for ssh authorized_keys" (number mark "U       draht@schalt Feb 15   26/1052  " thread-indent "\"Re: [oss-security] cloud-init follows symlinks for ssh authorized_keys\"\n") "<CAHmME9pQ-2dpNna8pOwEKTgT7SySxhjgNYAE1URbq4EQvsffNA@mail.gmail.com>" ("<CAHmME9pQ-2dpNna8pOwEKTgT7SySxhjgNYAE1URbq4EQvsffNA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23935 invoked by uid 550); 15 Feb 2016 13:59:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23917 invoked from network); 15 Feb 2016 13:59:30 -0000
In-Reply-To: <CAHmME9pQ-2dpNna8pOwEKTgT7SySxhjgNYAE1URbq4EQvsffNA@mail.gmail.com>
Message-ID: <alpine.LNX.2.02.1602151453500.8788@i8.fpunygfrxha.qr>
References: <CAHmME9pQ-2dpNna8pOwEKTgT7SySxhjgNYAE1URbq4EQvsffNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
cc: harlowja@gmail.com, smoser@brickies.net
Date: Mon, 15 Feb 2016 14:59:19 +0100 (CET)
From: Roman Drahtmueller <draht@schaltsekun.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cloud-init follows symlinks for ssh
 authorized_keys
To: oss-security <oss-security@lists.openwall.com>

[...]
> Again, os.path.isdir follows symlinks, and so do chown and chmod, and
> also the functions underlying write_file. By the way there are some
> more race condition situations happening in the latter function, among
> others, in which directories can be removed or changed around after
> the "ensure" check. Whether or not that constitutes a security issue
> remains to be seen.
> 
> Anyway, make of this what you will. Is this a vector? Is this not a
> vector? It's certainly not very robust code in any case.

Wouldn't it be a problem in the set-up much earlier if an unprivileged 
user can write to a different user's directories? 
A symlink for $HOME/.ssh/authorized_keys may have a practicacl purpose, 
such as a system-wide file for functional users.
>From this viewpoint, it doesn't matter if the check is racey or not. 

The path walk with the checks if path components to $HOME/.ssh are 
writeable for users other than the target user is much more useful in 
this context, while it is not necessary either.

> 
> Regards,
> Jason

Roman.
