X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["511" "Monday" "18" "December" "2017" "16:27:02" "+0100" "Marcus Meissner" "meissner@suse.de" "<20171218152702.GD30706@suse.de>" "17" "[oss-security] overly broad IPC details sharing on Linux Kernel?" "^Date:" nil nil "12" "2017121815:27:02" "[oss-security] overly broad IPC details sharing on Linux Kernel?" (number mark "        meissner@sus Dec 18   17/511   " thread-indent "\"[oss-security] overly broad IPC details sharing on Linux Kernel?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20205 invoked by uid 550); 18 Dec 2017 15:27:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20171 invoked from network); 18 Dec 2017 15:27:15 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20171218152702.GD30706@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 18 Dec 2017 16:27:02 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] overly broad IPC details sharing on Linux Kernel?
To: OSS Security List <oss-security@lists.openwall.com>

Hi,

spotted by one of our customers...

shmctl(id, IPC_STAT, &buf)

returns the STAT information _only_ if the calling user has read-access to the "id" shared memory segment.

However, the proc entries in /proc/sysvipc/shm  return the entries for all users shared memory segments,
even if there is no read permission.

There is a bit of information leakage in the access times, but I currently do not see
any direct exploitability.

Regardless ... should the /proc/sysvipc/* files be restricted?

Ciao, Marcus
