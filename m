X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["491" "Monday" "25" "May" "2015" "22:10:22" "+0200" "=?UTF-8?B?UmFwaGHDq2wgUmlnbw==?=" "ml-oss@syscall.eu" "<556381AE.6030908@syscall.eu>" "18" "[oss-security] CVE request for attic : encrypted backups attack" nil nil nil "5" "2015052520:10:22" "[oss-security] CVE request for attic : encrypted backups attack" (number mark "        ml-oss@sysca May 25   18/491   " thread-indent "\"[oss-security] CVE request for attic : encrypted backups attack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5689 invoked by uid 550); 25 May 2015 21:09:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7956 invoked from network); 25 May 2015 20:10:33 -0000
Message-ID: <556381AE.6030908@syscall.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Mon, 25 May 2015 22:10:22 +0200
From: =?UTF-8?B?UmFwaGHDq2wgUmlnbw==?= <ml-oss@syscall.eu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for attic : encrypted backups attack
To: oss-security@lists.openwall.com

Hello,

attic is a deduplicating backup program written in Python.
It features encrypted remote backups.

Unfortunately :
https://github.com/jborg/attic/issues/271
allow an attacker able to modify a remote encrypted directory to cause the
client to send unencrypted data on the next backup run.

It was fixed in this commit :
https://github.com/jborg/attic/commit/78f9ad1faba7193ca7f0acccbc13b1ff6ebf9072

Could a CVE be assigned ?

Regards,
Raphaël
PS: I am not an attic dev, just a user.
