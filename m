X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1505" "Thursday" "12" "April" "2018" "15:31:19" "-0700" "Russ Allbery" "eagle@eyrie.org" "<87efjkoy4o.fsf@hope.eyrie.org>" "31" "Re: [oss-security] Re: Terminal Control Chars" nil nil nil "4" "2018041222:31:19" "[oss-security] Re: Terminal Control Chars" (number mark "U       eagle@eyrie. Apr 12   31/1505  " thread-indent "\"Re: [oss-security] Re: Terminal Control Chars\"\n") "<E1f6jcD-0002pc-T3@rmmprod07.runbox>" ("<E1f6jcD-0002pc-T3@rmmprod07.runbox>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23812 invoked by uid 550); 12 Apr 2018 22:31:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23793 invoked from network); 12 Apr 2018 22:31:33 -0000
From: Russ Allbery <eagle@eyrie.org>
To: "David A. Wheeler" <dwheeler@dwheeler.com>
Cc: "oss-security" <oss-security@lists.openwall.com>
In-Reply-To: <E1f6jcD-0002pc-T3@rmmprod07.runbox> (David A. Wheeler's message
	of "Thu, 12 Apr 2018 17:18:45 -0400 (EDT)")
Organization: The Eyrie
References: <E1f6jcD-0002pc-T3@rmmprod07.runbox>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.2 (gnu/linux)
Date: Thu, 12 Apr 2018 15:31:19 -0700
Message-ID: <87efjkoy4o.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: Terminal Control Chars

"David A. Wheeler" <dwheeler@dwheeler.com> writes:
> Russ Allbery:

>> I think a useful definition of "control character" in this context (and
>> I realize this doesn't exactly match the ASCII definition) is a
>> character that results in an action other than insertion being taken...
>> CR and LF would not be control characters in that definition, since
>> they insert a newline and don't cause an action. Similarly, TAB
>> wouldn't be a control character in that definition.

> As you noted, that definition doesn't match the ASCII definition, but I
> also think it's misleading.  If someone pastes a CR/LF into a shell
> prompt, it certainly *DOES* cause an action, namely, execution of that
> line.  That's probably not what you meant by "action", but from a
> security point-of-view, causing a script to execute is rather important
> :-).

That's a fair counterpoint.

That unfortunately means that the specification one wants is to deny
pasting control messages except for a particular set (since you're
certainly not going to want to stop pasting of a newline sequence, and
probably not pasting of tabs), and then you have to find the right way to
define that set of characters that you want to allow.

I have some "I know it when I see it" definition in my head, but it's hard
to be precise without listing out the specific characters that I would
allow and that I would disallow (at least as interpreted commands).

-- 
Russ Allbery (eagle@eyrie.org)              <http://www.eyrie.org/~eagle/>
