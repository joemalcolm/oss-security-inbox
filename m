X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1038" "Friday" "8" "November" "2019" "09:02:02" "-0800" "Russ Allbery" "eagle@eyrie.org" "<877e4ai9o5.fsf@hope.eyrie.org>" "39" "Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" "^Cc:" nil nil "11" "2019110817:02:02" "[oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" (number mark "        eagle@eyrie. Nov  8   39/1038  " thread-indent "\"Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|\"\n") "<CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>" ("<CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28093 invoked by uid 550); 8 Nov 2019 17:02:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28075 invoked from network); 8 Nov 2019 17:02:15 -0000
In-Reply-To: <CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>
	(Georgi Guninski's message of "Fri, 8 Nov 2019 10:03:44 +0200")
Organization: The Eyrie
References: <CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Message-ID: <877e4ai9o5.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Fri, 08 Nov 2019 09:02:02 -0800
From: Russ Allbery <eagle@eyrie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|
To: Georgi Guninski <gguninski@gmail.com>

Georgi Guninski <gguninski@gmail.com> writes:

> Any workarounds?

> ===poc===
> #include <assert.h>

> int foo(int a) {
>   assert(a+100 > a);
>   printf("%d %d\n",a+100,a);
>   return a;
> }

> int main() {
>   foo(100);
>   foo(0x7fffffff);
> }
> =========

As pointed out in the bug, if you want defined behavior from signed
integer overflow, you can ask for it with -fwrapv:

$ gcc -O3 -fwrapv -o foo foo.c
$ ./foo
200 100
foo: foo.c:5: foo: Assertion `a+100 > a' failed.
Aborted (core dumped)

The C standard says this shouldn't be the default, but software that cares
about avoiding undefined behavior should consider adding -fwrapv, or
carefully writing the check to avoid overflow (something that, sadly, one
needs to become expert in to use C relatively safely).

Or, of course, use a different language that has more safety checks built
into the language definition, although that's obviously a much broader
(and probably off-topic) conversation.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
