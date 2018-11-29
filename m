X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1082" "Thursday" "29" "November" "2018" "17:38:14" "-0500" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87r2f3wlux.fsf@fifthhorseman.net>" "21" "Re: [oss-security] memory safety bugs in bc" "^Date:" nil nil "11" "2018112922:38:14" "[oss-security] memory safety bugs in bc" (number mark "        dkg@fifthhor Nov 29   21/1082  " thread-indent "\"Re: [oss-security] memory safety bugs in bc\"\n") "<20181129231255.25fe8a92@computer>" ("<20181128133145.2f53802b@computer>" "<20181129091818.unk7zap2xiznptfc@suse.de>" "<87ftvjygyx.fsf@fifthhorseman.net>" "<20181129231255.25fe8a92@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28382 invoked by uid 550); 29 Nov 2018 22:38:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28362 invoked from network); 29 Nov 2018 22:38:44 -0000
In-Reply-To: <20181129231255.25fe8a92@computer>
References: <20181128133145.2f53802b@computer> <20181129091818.unk7zap2xiznptfc@suse.de> <87ftvjygyx.fsf@fifthhorseman.net> <20181129231255.25fe8a92@computer>
Message-ID: <87r2f3wlux.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Thu, 29 Nov 2018 17:38:14 -0500
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] memory safety bugs in bc
To: Hanno =?utf-8?Q?B=C3=B6ck?= <hanno@hboeck.de>,
 oss-security@lists.openwall.com

On Thu 2018-11-29 23:12:55 +0100, Hanno Böck wrote:
> The idea here is that "mild" memory safety violations (invalid reads,
> nullptr) don't get security treatment if they're in a standalone tool,
> yet they do if they're in a library, which may have larger implications
> in more complex apps.

Sure, i understand how memory errors in libraries offer a much larger
"attack surface" than errors in code called across a process boundary.

However, i am used to looking at a lot of code that calls across process
boundaries (hello, GnuPG!) and i can tell you that there's a lot of
software out there that doesn't cope well with (or, maybe worse, doesn't
even notice) surprising terminations, surprising output on certain file
descriptors, or surprising return codes.  sounds like two of your 5
examples have at least surprising terminations and return codes.

These oversights can lead to other failures or problems that we don't
expect, so i'm reluctant to encourage people to ignore them, though i
grant that these failures with full memory access is even worse :)

         --dkg
