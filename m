Received: (qmail 30330 invoked by uid 550); 9 Apr 2026 00:42:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3288 invoked from network); 9 Apr 2026 00:33:59 -0000
Date: Thu, 9 Apr 2026 02:33:48 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20260409003348.GA2042518@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.3+4 (71f3e314) vl-169878 (2026-01-27)
Subject: [oss-security] lftp 4.9.3 does not filter non-printable characters in the output to
 the terminal

I've just reported the following issue:

  https://github.com/lavv17/lftp/issues/781

lftp does not filter non-printable characters in the output to the
terminal. For instance:

$ mkdir /tmp/dir
$ cd /tmp/dir
$ touch "file$(tput smacs)" foo
$ ls
'file'$'\033''(0'   foo
$ lftp sftp://localhost/tmp/dir
cd ok, cwd=/tmp/dir
lftp localhost:/tmp/dir> dir
drwxr-xr-x    2 vinc17   vinc17         80 Apr  9 02:07 .
drwxrwxrwt   22 root     root          560 Apr  9 02:07 ..
-rw-r--r--    1 vinc17   vinc17          0 Apr  9 02:07 file
-⎼┬-⎼--⎼--    1 ┴␋┼␌17   ┴␋┼␌17          0 A⎻⎼  9 02:07 °⎺⎺
┌°├⎻ ┌⎺␌▒┌␤⎺⎽├:/├└⎻/␍␋⎼>

and

$ lftp sftp://localhost/tmp/dir
cd ok, cwd=/tmp/dir
lftp localhost:/tmp/dir> get file^[(0
get: /home/vinc17/file: F␋┌␊ ␊│␋⎽├⎽
┌°├⎻ ┌⎺␌▒┌␤⎺⎽├:/├└⎻/␍␋⎼>

(note: I typed "get file", then the Tab key to complete).

Remote directories may contain untrusted data. In particular, a
malicious user may have created file names with specially chosen
escape sequences to introduce issues with the terminal and possibly
security implications in some terminal configurations.

Tested with lftp 4.9.3 under Debian/unstable.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
