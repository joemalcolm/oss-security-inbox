X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["837" "Friday" "8" "November" "2019" "20:20:55" "+0100" "Florian Weimer" "fw@deneb.enyo.de" "<87woca41k8.fsf@mid.deneb.enyo.de>" "18" "Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" "^Cc:" nil nil "11" "2019110819:20:55" "[oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" (number mark "        fw@deneb.eny Nov  8   18/837   " thread-indent "\"Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|\"\n") "<877e4ai9o5.fsf@hope.eyrie.org>" ("<CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>" "<877e4ai9o5.fsf@hope.eyrie.org>") nil nil nil nil nil nil nil "Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1704 invoked by uid 550); 8 Nov 2019 19:21:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1684 invoked from network); 8 Nov 2019 19:21:09 -0000
References: <CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>
	<877e4ai9o5.fsf@hope.eyrie.org>
In-Reply-To: <877e4ai9o5.fsf@hope.eyrie.org> (Russ Allbery's message of "Fri,
	08 Nov 2019 09:02:02 -0800")
Message-ID: <87woca41k8.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Georgi Guninski <gguninski@gmail.com>,  oss-security@lists.openwall.com
Date: Fri, 08 Nov 2019 20:20:55 +0100
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|
To: Russ Allbery <eagle@eyrie.org>

* Russ Allbery:

> The C standard says this shouldn't be the default, but software that cares
> about avoiding undefined behavior should consider adding -fwrapv, or
> carefully writing the check to avoid overflow (something that, sadly, one
> needs to become expert in to use C relatively safely).

The C standard doesn't *require* a particular behavior (for non-atomic
integers).  Each time this comes up in the committees, more strict
requirements do not make it into the text.  For example, the recent
P0907R4 for C++, =E2=80=9CSigned Integers are Two=E2=80=99s Complement=E2=
=80=9D
<http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2018/p0907r4.html>
does not require it, either:

| /Status-quo/ If a signed operation would naturally produce a value
| that is not within the range of the result type, the behavior is
| undefined.
