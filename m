X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1471" "Thursday" "12" "April" "2018" "12:01:06" "-0700" "Russ Allbery" "eagle@eyrie.org" "<87efjkntal.fsf@hope.eyrie.org>" "30" "Re: [oss-security] Re: Terminal Control Chars" nil nil nil "4" "2018041219:01:06" "[oss-security] Re: Terminal Control Chars" (number mark "U       eagle@eyrie. Apr 12   30/1471  " thread-indent "\"Re: [oss-security] Re: Terminal Control Chars\"\n") "<20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>" ("<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>" "<1523346797.16686.6@smtp.gmail.com>" "<20180412171327.vc5epogdi7ryc3te@jwilk.net>" "<20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7988 invoked by uid 550); 12 Apr 2018 19:06:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31845 invoked from network); 12 Apr 2018 19:01:19 -0000
From: Russ Allbery <eagle@eyrie.org>
To: oss-security@lists.openwall.com
In-Reply-To: <20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com> (Ian
	Zimmerman's message of "Thu, 12 Apr 2018 11:07:20 -0700")
Organization: The Eyrie
References: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
	<1523346797.16686.6@smtp.gmail.com>
	<20180412171327.vc5epogdi7ryc3te@jwilk.net>
	<20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.2 (gnu/linux)
Date: Thu, 12 Apr 2018 12:01:06 -0700
Message-ID: <87efjkntal.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: Terminal Control Chars

Ian Zimmerman <itz@very.loosely.org> writes:

> The term "invisible character" has some obvious (if perhaps informal)
> meaning.  But I don't really know what "control character" means.  Is a
> page separator (^L) a control character, for example?  Is DEL one (ASCII
> 127)?

I think a useful definition of "control character" in this context (and I
realize this doesn't exactly match the ASCII definition) is a character
that results in an action other than insertion being taken, as opposed to
a glyph (possibly invisible) being inserted (and not counting contexts
such as vi outside of insert mode where basically all characters are
interpreted as actions).

CR and LF would not be control characters in that definition, since they
insert a newline and don't cause an action.  Similarly, TAB wouldn't be a
control character in that definition.  DEL would be if it deleted a
character as opposed to inserting a ^? sequence.  ESC would be if it
changed terminal modes or colors or did all the other things escape
sequences can do.  BEL would be if it rung the terminal bell.  And so
forth.

I think it's reasonable to expect that pasting something into a terminal
will cause insertion of text, including whitespace, but will not cause the
terminal to take *actions* that are not the insertion of text.  Certainly,
I think there are a lot of people in the world who do have that
assumption.

-- 
Russ Allbery (eagle@eyrie.org)              <http://www.eyrie.org/~eagle/>
