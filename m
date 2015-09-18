X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3776" "Friday" "18" "September" "2015" "14:02:36" "+0200" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20150918140236.16423e1uvmlvi544@webmail.alunos.dcc.fc.up.pt>" "99" "Re: [oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015091812:02:36" "[oss-security] s/party/hack like it's 1999" (number mark "        up201407890@ Sep 18   99/3776  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<55FBD48F.7080401@redhat.com>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "<55FBD48F.7080401@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11853 invoked by uid 550); 18 Sep 2015 12:27:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9837 invoked from network); 18 Sep 2015 12:22:50 -0000
Message-ID: <20150918140236.16423e1uvmlvi544@webmail.alunos.dcc.fc.up.pt>
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
	<55FBD48F.7080401@redhat.com>
In-Reply-To: <55FBD48F.7080401@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=UTF-8;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Date: Fri, 18 Sep 2015 14:02:36 +0200
From: up201407890@alunos.dcc.fc.up.pt
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

Date: Thu, 17 Sep 2015 12:33:28 -0430
From: Manuel G=C3=B3mez <targen@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: s/party/hack like it's 1999

On Thu, Sep 17, 2015 at 12:33:28 AM, <targen@gmail.com> wrote:
> On Thu, Sep 17, 2015 at 11:33 AM,  <up201407890@...nos.dcc.fc.up.pt> wrot=
e:
>> Federico Bento <up201407890@...nos.dcc.fc.up.pt>
>>
>> [=E2=80=A6]
>>
>> As you can see, our beloved 'cat' cheated on us. Why?
>> Because instead of displaying the character-sequence, the escape sequence
>> \033[XA (being X the number of times) performed some action.
>> And this action moves the cursor up X times, overwriting what is above i=
t X
>> lines.
>> But this doesn't affect only 'cat', it affects everything that interprets
>> escape sequences.
>>
>> [=E2=80=A6 examples with head, tail, more, curl, wget =E2=80=A6]
>>
>> 'diff' also interprets escape sequences and so do the resulting patches
>>
>> [=E2=80=A6 examples with diff =E2=80=A6]
>>
>> Hint:
>> 'less' doesn't interpret escape sequences unless the -r switch is used,
>> so stop aliasing it to 'less -r' just because there's no colored output.

> Not a single one of those programs does anything to its input that
> ought to be considered any form of interpretation in the sense you
> imply.  They simply produce outputs that correspond to their inputs.
> If that output is later presented to a terminal emulator, *then* some
> characters happen to produce effects that go beyond simply displaying
> them as glyphs on a screen, one by one.
>
> There is absolutely nothing wrong with `head`, `tail`, `more`, `curl`,
> `wget` or `diff`.  They are not meant to =E2=80=9Cinterpret=E2=80=9D anyt=
hing of the
> sort that is being addressed, and indeed they do not.  `less` *does*
> have special processing rules active by default for input sequences
> that would cause terminals to do anything special; indeed, the default
> behaviour of `less`, without the `-r` option, is the only mentioned
> behaviour that may be considered a form of interpretation.

Yes, that is correct. I should have rephrased that better, thanks for=20=20
clearing that up.

>> It's no secret, most of us rely on 'cat' to view files. I guess this is =
one
>> black kitty, giving you bad luck.
>
> Perhaps =E2=80=9Cmost of us=E2=80=9D should use `view` to view files.

Also correct. There are several ways one can go about this, but the=20=20
point is, do people actually do that? Do they take that extra care=20=20
sometimes? :)

I'd also like to point out that the title should've been=20=20
"s/party/hack/ like it's 1999", I guess that's what you get when=20=20
you're trying to write up things fast, but that's not really the point=20=20
of the post ;-)



Quoting "Cliff Perry" <cperry@redhat.com>:

>> Interesting. I woul advocate usage of something like cat -A.
>>  - something I learned to find end of line chars.
>>
>> [cperry@cperry ~]$ printf '#!/bin/bash\necho doing something=20=20
>> evil!\nexit\n\033[2Aecho doing something very nice!\n' > backdoor.sh
>> [cperry@cperry ~]$ chmod +x backdoor.sh
>> [cperry@cperry ~]$ cat backdoor.sh
>> #!/bin/bash
>> echo doing something very nice!
>> [cperry@cperry ~]$ cat -A backdoor.sh
>> #!/bin/bash$
>> echo doing something evil!$
>> exit$
>> ^[[2Aecho doing something very nice!$
>> [cperry@cperry ~]$
>>
>> Also, my terminal prompt jumped a line when doing the normal cat.
>>
>> Cliff

Yes, there are several ways to go about this, but the point is that=20=20
'cat -A file' isn't something that people do in their day to day lives!

I believe some adjustments to the script would make it not jump a line=20=20
for other terminal emulators.


----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

