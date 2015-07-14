X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["537" "Tuesday" "14" "July" "2015" "11:02:27" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<55A52483.2000507@canonical.com>" "22" "[oss-security] CVE Request: SQLite array overrun in the skip-scan optimization" nil nil nil "7" "2015071415:02:27" "[oss-security] CVE Request: SQLite array overrun in the skip-scan optimization" (number mark "        marc.deslaur Jul 14   22/537   " thread-indent "\"[oss-security] CVE Request: SQLite array overrun in the skip-scan optimization\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6092 invoked by uid 550); 14 Jul 2015 15:02:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6073 invoked from network); 14 Jul 2015 15:02:40 -0000
Message-ID: <55A52483.2000507@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: security <security@ubuntu.com>
Date: Tue, 14 Jul 2015 11:02:27 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: SQLite array overrun in the skip-scan optimization
To: oss-security@lists.openwall.com

Hello,

SQLite 3.8.2 contained an array overrun in the skip-scan optimization leading to
memory corruption. Fixed in 3.8.3.

Bugs:
https://www.sqlite.org/src/info/520070ec7fbaac
https://bugs.launchpad.net/ubuntu/+source/sqlite3/+bug/1448758

Fixed by the following commit:
https://www.sqlite.org/src/info/ac5852d6403c9c96

Could a CVE please be assigned to this issue? (needs a CVE-2013)

Thanks,

Marc.

-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/
