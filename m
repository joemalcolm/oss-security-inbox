X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["842" "Thursday" "23" "February" "2017" "08:46:30" "+0100" "Marcus Meissner" "meissner@suse.de" "<20170223074630.GB26098@suse.de>" "22" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" nil nil nil "2" "2017022307:46:30" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" (number mark "U       meissner@sus Feb 23   22/842   " thread-indent "\"[oss-security] util-linux 2.29.2 fixes CVE-2017-2616\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5186 invoked by uid 550); 23 Feb 2017 07:46:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5165 invoked from network); 23 Feb 2017 07:46:42 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 23 Feb 2017 08:46:30 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20170223074630.GB26098@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616

Hi,

util-linux 2.29.2 fixes CVE-2017-2616, a race condition which allowed local users
to kill other processes.

https://www.kernel.org/pub/linux/utils/util-linux/v2.29/v2.29.2-ReleaseNotes

"
  It is possible for any local user to send SIGKILL to other processes with root
  privileges.  To exploit this, the user must be able to perform su with a
  successful login.  SIGKILL can only be sent to processes which were executed
  after the su process.  It is not possible to send SIGKILL to processes which
  were already running.
"

Root cause of the flaw that a regular exit of the child process and the su ctrl-c kill of the
child PID could race and so you would be able to later started process with this specific PID.

The fix is here:
https://github.com/karelzak/util-linux/commit/dffab154d29a288aa171ff50263ecc8f2e14a891

Ciao, Marcus
