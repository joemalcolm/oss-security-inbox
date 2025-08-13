Received: (qmail 20039 invoked by uid 550); 13 Aug 2025 17:05:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17816 invoked from network); 13 Aug 2025 17:01:08 -0000
Date: Wed, 13 Aug 2025 19:00:58 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20250813170058.GE6936@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)
Subject: [oss-security] xterm terminal crash due to malicious character sequences in file
 name

The following makes the xterm terminal crash

  touch "$(printf "file\e[H\e[c\n\b")"
  gunzip file*

due to malicious character sequences in the file name and a bug in
xterm. Same issue with bunzip2 instead of gunzip.

Note that in practice, such a file name is not necessarily created by
the end user who runs gunzip. It may come from a downloaded archive
or from another user on a shared machine.

Is this regarded as a vulnerability, in particular due to the loss of
the shell session and associated data (which cannot be recovered)?

Which is or are the culprit(s)?
  * xterm itself (note that it is also possible to make some recent
    xterm versions crash without these usual escape sequences);
  * gzip and bzip2, which should sanitize the output to the terminal
    (like many other utilities already do nowadays);
  * the file system, which should not allow the creation of such
    file names (I don't know what POSIX says exactly)?

FYI, I've just reported bugs:

  https://debbugs.gnu.org/cgi/bugreport.cgi?bug=79231 for gzip
  https://sourceware.org/bugzilla/show_bug.cgi?id=33276 for bzip2

(I had also reported 2 bugs against xterm related to its crash
in the Debian BTS.)

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
