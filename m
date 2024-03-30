Received: (qmail 15543 invoked by uid 550); 30 Mar 2024 20:55:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20272 invoked from network); 30 Mar 2024 20:50:31 -0000
Authentication-Results: ext-mx-out013.mykolab.com (amavis);
 dkim=pass (4096-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	in-reply-to:content-disposition:content-type:content-type
	:mime-version:references:message-id:subject:subject:from:from
	:date:date:received:received:received; s=dkim20160331; t=
	1711831822; x=1713646223; bh=334zS9k5PShs9LQpdZF4h9XwsmLmV8DfvXl
	TTA3NaVg=; b=FS+uiCEcEN8WTQtD99pPOlaP0hVUJ/xxXhRNRRu7dysnknA3CoW
	uvpqcnWJpJFi4Svsi6QHnU61qSLam+QGdO4QKLyPAzxp6vdZ7uGBXWQ6zJeu4yqP
	aYeyIG0k/9kDXm+KtvI44im1zgjOFw/a7/lm4lVIMUUEH89+5Ns1KSv51rFVIvAJ
	GP8DEK3rBRgVBJSw37L3zz1SmuZ8WNzcyY7odOVrdq+riP37dm5+9bzjCppIcfto
	bnDYnJIJ9sz9kKdz0tySu2GtEhCEpgD6Rl8yQqgVtTs3UYiKzeBLq5Qr4FSgdY0x
	49rQ++5QA2AgJNxtoD3eN0sbAEwQ+F0lzNpkY00H+vtGxGjgYVYBQ/r4Kvbr/Iq0
	LNBqKtagmYW3o5da5jFcsQOYOjGzI1xGCIJacitDOHGouBaWnEy+sUNnT2gICmdB
	8B7jUXQ51iZ4Sr9lNc5pyUrNEXZnDOrZkM3US9QnAAsxqilNdP7Cln+w88xkwNh2
	NMNHrbcn68b/kdi0wk8UwInG0J15l1MwUe3+GcSPrZuiLPvZAuMYelXwR3C8TsMP
	uVjYOeB9c+J+tR1v47Sz5LukKXldOlHZ0FUfXwfLnN3iQC/GMACGg26rOCpOw+pT
	aJDz2CZq2B7BRKO3EjjRWNpPceplVc9VAhWG7kVJT1kTOilOG0TrjSmk=
X-Virus-Scanned: amavis at mykolab.com
Date: Sat, 30 Mar 2024 21:50:19 +0100
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Cc: Jonathan Schleifer <js@nil.im>
Message-ID: <Zgh7C1VPcZC7Fdax@nihonium>
References: <f0a95b6f-8738-4ca6-9462-35bdca04293a@nil.im>
 <12bfdf5d8ee20d341ce5ac206dc72b7b@purelymail.com>
 <fc8936e9-4e95-4aef-ac30-f2d99817f3f7@nil.im>
 <f98881fa1619aab0e1b358fe89e749a2@purelymail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f98881fa1619aab0e1b358fe89e749a2@purelymail.com>
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

* "Rein Fernhout (Levitating)" <me@levitati.ng> [2024-03-30 18:07]:
[...]
> You can just use 'sed r\n filename' and it should work. I think it just reads the file and appends a newline.

I don't know if this is relevant, but 'sed r\n filename' does not *in general*
"append a newline".  It appends the file named after the 'r' (in this case a
file named 'n' -- assuming the backslash is interpreted by the shell and thus
doesn't really do anything) after each line of the file 'filename'; unless the
file 'n' doesn't exist, in which case it's equivalent to 'cat', except that it
will indeed happen to append a newline *but only if the original file doesn't
end with one*.

Thus it will behave quite differently depending on whether a file named 'n'
exists or not.

$ printf 'foo\nbar\n' > n
$ printf '1\n2\n3' > somefile
$ sed r\n somefile
1
foo
bar
2
foo
bar
3
foo
bar
$ sed rdoes-not-exist somefile
1
2
3
$ printf '\x00\n\x00' > somefile
$ xxd somefile
00000000: 000a 00
$ sed rdoes-not-exist somefile | xxd
00000000: 000a 000a
$ printf '\x00\n\x00\n' > somefile
$ sed rdoes-not-exist somefile | xxd
00000000: 000a 000a

- Fay
