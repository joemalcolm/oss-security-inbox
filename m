X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2795" "Tuesday" "5" "April" "2016" "13:10:39" "+0200" "Vincent Danjean" "vdanjean.ml@free.fr" "<57039D2F.3000506@free.fr>" "60" "[oss-security] root escalation from any user on clusters managed with OAR" nil nil nil "4" "2016040511:10:39" "[oss-security] root escalation from any user on clusters managed with OAR" (number mark "U       vdanjean.ml@ Apr  5   60/2795  " thread-indent "\"[oss-security] root escalation from any user on clusters managed with OAR\"\n") "<20160401091133.GA28908@pisco.westfalen.local>" ("<56FA4D50.90204@debian.org>" "<20160329140254.GA24546@inutil.org>" "<20160331195405.GA3155@eldamar.local>" "<56FD89C5.5070509@imag.fr>" "<20160401091133.GA28908@pisco.westfalen.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3363 invoked by uid 550); 5 Apr 2016 21:20:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25664 invoked from network); 5 Apr 2016 11:10:51 -0000
From: Vincent Danjean <vdanjean.ml@free.fr>
References: <56FA4D50.90204@debian.org> <20160329140254.GA24546@inutil.org>
 <20160331195405.GA3155@eldamar.local> <56FD89C5.5070509@imag.fr>
 <20160401091133.GA28908@pisco.westfalen.local>
Cc: =?UTF-8?Q?Moritz_M=c3=bchlenhoff?= <jmm@inutil.org>,
 Pierre Neyron <pierre.neyron@imag.fr>, team@security.debian.org
To: oss-security@lists.openwall.com
Message-ID: <57039D2F.3000506@free.fr>
Date: Tue, 5 Apr 2016 13:10:39 +0200
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22)
 Gecko/20091109 Lightning/0.8 Thunderbird/2.0.0.22 Mnenhy/0.7.5.0
MIME-Version: 1.0
In-Reply-To: <20160401091133.GA28908@pisco.westfalen.local>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] root escalation from any user on clusters managed with OAR

  Hi,

  Here is a report of a bug in OAR, a software used to manage
jobs and resources of HPC clusters. This bug allows one to increase
privileges.

  The bug has been reported by Emmanuel Thomé to upstream.
Then, it has been discussed with the Debian Security Team that
assigned us CVE-2016-1235 for this issue.

  Here is a brief summary of the problem:

  OAR is a software which allows authorized people to submit reservations
for nodes (or even part of nodes) in a managed HPC cluster.
OAR is also used to log into the reserved nodes once the reservation
is done.

  One difficulty of OAR, when login into reserved nodes, is to ensure
that the cpuset is correctly set in case of partial node reservation.
The used mechanism involves suid binary :
1) the user use 'oarsh' instead of 'ssh' (similar syntax)
2) oarsh call a suid ('oar' user) tool that:
   - adds mandatory ssh options for the use case
   - calls ssh as 'oar' user
     => running as 'oar', the ssh client is able to connect a specific
     sshd server on the nodes (reading a private key only readable by
     the 'oar' user)
3) on the nodes, the specific sshd server accept the 'oar' ssh-key
   and run again a trusted program as root that will get and setup CPUSET
   correctly. Then, it switches to the initial user account and run
   the user specified program.

  The problem occurs at step 2, if the user adds some arguments to oarsh.
Indeed, these arguments were all passed to the 'ssh' call which is
running with more privileges. For example, calling:
grisou-50 ~ $ oarsh -F /var/lib/oar/ethome_$OAR_JOBID.jobkey `hostname`
/var/lib/oar/ethome_937064.jobkey: line 1: Bad configuration option: -----begin
/var/lib/oar/ethome_937064.jobkey: line 2: Bad configuration option: miicxgibaakbgqdkhpdism+ong8phqw9poga4fps3f68b1fprlzamseezvgx5nkx
[...]
/var/lib/oar/ethome_937064.jobkey: line 14: Bad configuration option: k7dgew6kcaqubskujokbccsauhnctmdrwf0ftwgh+xzn9g
/var/lib/oar/ethome_937064.jobkey: line 15: Bad configuration option: -----end
/var/lib/oar/ethome_937064.jobkey: terminating, 15 bad configuration options

=> you get nearly (but the case) the private key (which ssh tries to parse
as a config file and fails, printing its content). This key should not be
available to the user.
  With the knowing of this private key, the user can log into nodes
and even oar server with a account that has root access...

  So, the upstream patch modifies the suid binary (more exactly the script
called by the suid binary) in order to restrict/filter authorized options for
oarsh (ie for the privileged "ssh" call).
  The fix is introduced into OAR 2.5.7 release. All previous OAR releases
suffer from this bug.

  Debian packages with fix have just been uploaded to sid, stable and oldstable.

  Regards,
    Vincent

