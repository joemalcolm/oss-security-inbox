Received: (qmail 9535 invoked by uid 550); 22 Jul 2025 22:14:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3534 invoked from network); 22 Jul 2025 22:13:49 -0000
Date: Wed, 23 Jul 2025 00:13:28 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: =?utf-8?B?VGhpw6puIFBow7ogSOG7kyBOZ+G7jWM=?= <hongocthienphu17@gmail.com>
Message-ID: <20250722221328.GA8809@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] non-issues in dailyaidecheck script in Debian's packaging of AIDE

Hi,

Ho Ngoc Thien Phu, CC'ed here, reported to linux-distros a couple of
ways to abuse "/usr/share/aide/bin/dailyaidecheck (shipped with AIDE
0.19.x in Debian and derivatives)" to run arbitrary commands, if the
configuration file /etc/default/aide is writable by the attacker.

However, that file is trusted input, it must not be writable by any
attacker, and indeed by default it is not.  The MAILCMD variable in the
file directly specifies a command to be run, so concerns about the
configuration file also allowing to run arbitrary commands in weirder
ways look irrelevant.

I am posting this to oss-security for the sake of completeness, because
it was on linux-distros.  Otherwise, there's nothing to see here.

That said, it's good that people are looking at AIDE and its packaging,
which I think is in need of a proper security audit.

Alexander
