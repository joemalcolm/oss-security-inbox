X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4355" "Monday" "5" "March" "2018" "17:50:24" "+0100" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>" "117" "[oss-security] Terminal Control Chars" nil nil nil "3" "2018030516:50:24" "[oss-security] Terminal Control Chars" (number mark "U       up201407890@ Mar  5  117/4355  " thread-indent "\"[oss-security] Terminal Control Chars\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30358 invoked by uid 550); 5 Mar 2018 17:01:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21964 invoked from network); 5 Mar 2018 16:50:45 -0000
Message-ID: <20180305175024.16801hoj775zje4g@webmail.alunos.dcc.fc.up.pt>
Date: Mon, 05 Mar 2018 17:50:24 +0100
From: up201407890@alunos.dcc.fc.up.pt
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: [oss-security] Terminal Control Chars

Hello,

When pasting characters into several terminal emulators, control=20=20
characters are allowed.
This turns to be a security problem, due to the fact that when pasting=20=20
these characters into terminal text editors, such as vi/vim, emacs,=20=20
nano, etc., remote code execution is possible.

This is supposed to be fixed in recent versions of VTE [3], which=20=20
means VTE-based terminal emulators should be safe, but the problem is=20=20
that most distros are shipping older versions and remain vulnerable.

Here's a list of terminal emulators I tested this where it worked.=20=20
Some came by default in my distro (debian), others were installed via=20=20
apt-get. This should also work on other distros:

LXTerminal
rxvt
urxvt
putty
gnome-terminal
Konsole
Guake
Yakuake
tilda
Terminator
xfce4-terminal
Terminology
ROXTerm
sakura
lilyterm
Eterm
aterm
mrxvt
pterm


Please, update VTE and check if the below still works. For the others=20=20
that aren't based on VTE, CVEs should be assigned to each of them. Can=20=20
someone help me figure out which ones are based on VTE and those that=20=20
aren't?


To reproduce using vi/vim, create an html with the following command:

$ printf '<html>something;&#27;:!id<br>a</html>' > poc.html

Open the poc.html in a browser, select and copy the text that is=20=20
presented, and paste it into vi/vim in insert mode. The command "id"=20=20
should then be executed.

This works because pasting "&#27;" is allowed, wich is the "escape".=20=20
By pressing "escape" in insert mode, it is possible to go back to=20=20
default mode, and by using the exclamation mark (!) it is possible to=20=20
execute arbitrary commands.


To reproduce using nano, create an html with the following command:

$ printf=20=20
'<html>something<br>something\x18y\b\b\b\bfile<br>y<br>a</html>' >=20=20
poc.html

Open the poc.html in a browser, select and copy the text that is=20=20
presented, start nano with "nano test", and paste the contents in=20=20
nano. This should quit you from nano, but instead of saving the=20=20
contents into the file "test", it saves them into "file".

This works because '\x18' is ^X (Control-X), which exits nano. On=20=20
exit, it asks if you want to "Save modified buffer", so you press 'y'.=20=20
This is why there's an 'y' after '\x18'. Once you press 'y', it asks=20=20
the "File Name to Write". If you started nano with an argument, such=20=20
as "nano test", then it will appear as the default "File Name to=20=20
Write". In order to specify an arbitrary file name, and overwriting an=20=20
existing one, we can use multiple '\b' to delete this file name, and=20=20
then specify our target file name. To get remote command execution, an=20=20
interesting target would be ".bashrc". However, as a PoC I used "file"=20=20
as can be seen after the 4 '\b'. Since "test" is 4 characters, I used=20=20
4 \b. You should use "nano test" to try the above. As a remote=20=20
attacker, you don't know how many characters your target used for the=20=20
file name, but you can input an arbitrary number of \b. We could use=20=20
255 \b since that's the file name limit in most filesystems.


To reproduce using emacs, create an html with the following command:

$ printf '<html>something;&#27;!id<br>a</html>' > poc.html

Open the poc.html in a browser, select and copy the text that is=20=20
presented, startemacs with "emacs -nw file", and paste the contents=20=20
into it. This should execute the command "id".

This works because pasting "&#27;" is allowed, wich is the "escape".=20=20
By pressing "escape" and then "!" (M-!) it is possible to execute=20=20
arbitrary commands in emacs.
The command "id" will be executed, but you may not see the output in emacs.
Use something like "touch file" and see that "file" was created.


One could argue that an user could see that what is being copied from=20=20
the browser
is malicious, but it is easy fool the user. [1]

The correct solution would be to disallow the pasting of certain=20=20
control characters.

See:
[1] https://thejh.net/misc/website-terminal-copy-paste
[2] http://invisible-island.net/xterm/xterm.log.html#xterm_292
[3] https://bugzilla.gnome.org/show_bug.cgi?id=3D753197

Thanks,
Federico Bento.

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

