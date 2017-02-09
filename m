X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["951" "Thursday" "9" "February" "2017" "15:02:50" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<9786871.DjNlDLY9Ns@blackgate>" "28" "[oss-security] A note about the multiple crashes in zziplib" nil nil nil "2" "2017020914:02:50" "[oss-security] A note about the multiple crashes in zziplib" (number mark "U       ago@gentoo.o Feb  9   28/951   " thread-indent "\"[oss-security] A note about the multiple crashes in zziplib\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5850 invoked by uid 550); 9 Feb 2017 14:03:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5795 invoked from network); 9 Feb 2017 14:03:07 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 09 Feb 2017 15:02:50 +0100
Message-ID: <9786871.DjNlDLY9Ns@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] A note about the multiple crashes in zziplib

Hello all,

I posted several crashes about zziplib.

The latest release was done ~5 years ago and the upstream bugs place seems to 
be dead. However, I will forward them on their website.

I didn't receive any type of feedback from the maintainer so I don't know if 
some of them are duplicates.
In any case there are problems where the same codebase was used in more 
places, e.g.:

http://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-main-unzzipcat-c/ shows a null ptr at: unzzipcat.c:94

and

https://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-main-unzzipcat-mem-c/ shows a null ptr at: unzzipcat-mem.c:94

Both C file have the same code at line 94:
printf ("%s\n", name);

So, while in the past, sometimes, we saw that one 'change' in the code was 
able to fix more than one issue, in this case, the issue is the same but it 
duplicate in more '.c' file

-- 
Agostino Sarubbo
Gentoo Linux Developer
