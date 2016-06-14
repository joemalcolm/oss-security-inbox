X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["715" "Tuesday" "14" "June" "2016" "08:39:05" "+0000" "Petter Reinholdtsen" "pere@hungry.com" "<loom.20160614T103255-750@post.gmane.org>" "20" "[oss-security] Re: CVE request: reads out-of-bounds with cpio 2.11" nil nil nil "6" "2016061408:39:05" "[oss-security] Re: CVE request: reads out-of-bounds with cpio 2.11" (number mark "U       pere@hungry. Jun 14   20/715   " thread-indent "\"[oss-security] Re: CVE request: reads out-of-bounds with cpio 2.11\"\n") "<20160226162825.48EF752E001@smtpvbsrv1.mitre.org>" ("<CACn5sdT9ezjtWQdgO0Lv=QRVEyiZ5Ot8wf+4Ch+-8KrgoJqp+w@mail.gmail.com>" "<20160226162825.48EF752E001@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13975 invoked by uid 550); 14 Jun 2016 08:45:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13957 invoked from network); 14 Jun 2016 08:45:15 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Petter Reinholdtsen <pere@hungry.com>
Date: Tue, 14 Jun 2016 08:39:05 +0000 (UTC)
Message-ID: <loom.20160614T103255-750@post.gmane.org>
References: <CACn5sdT9ezjtWQdgO0Lv=QRVEyiZ5Ot8wf+4Ch+-8KrgoJqp+w@mail.gmail.com> <20160226162825.48EF752E001@smtpvbsrv1.mitre.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 129.240.202.109 (Opera/9.80 (X11; Linux x86_64) Presto/2.12.388 Version/12.16)
Subject: [oss-security] Re: CVE request: reads out-of-bounds with cpio 2.11

>> Two reads out-of-bounds in cpio 2.11 were found in the parsing of cpio
>> files

Note, testing with valgrind show that after the out-of-bounds reads,
there is an out-of-bounds write too.  The issue is triggered by a
file name length of zero in an internal data structure.  This cases
the code to do operations on a buffer returned by malloc(0), first a memory
access, then a memory write and finally a lstat().

I've send the valgrind output and a patch to fix it to
<URL: http://bugs.debian.org/815965 > and upstream.

I have no idea if the issue is a security issue, though.  I could not
come up with a way to use the unwanted reads and writes for anything
interesting.
-- 
Happy hacking
Petter Reinholdtsen


