X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["933" "Monday" "26" "December" "2016" "14:51:27" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<36b82e6f-869b-57c5-366f-f47686dc53bb@orlitzky.com>" "20" "[oss-security] Incomplete fix for CVE-2016-8641 (Nagios local root via (sym)links)" nil nil nil "12" "2016122619:51:27" "[oss-security] Incomplete fix for CVE-2016-8641 (Nagios local root via (sym)links)" (number mark "U       michael@orli Dec 26   20/933   " thread-indent "\"[oss-security] Incomplete fix for CVE-2016-8641 (Nagios local root via (sym)links)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32390 invoked by uid 550); 26 Dec 2016 19:59:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30042 invoked from network); 26 Dec 2016 19:51:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1482781887; bh=ef71u0O2EYPxrix/ZU42dJerAbkfLVdTDU1kBr9POBQ=;
	h=To:From:Subject:Date;
	b=ts7xDNIU13gRbyWofz3R+BLrdX2ECdJxWkbCl0G4X2FT0plQjZhINmA2ipdAoUoF/
	 P1m4SmBlWoCIit7WJ618yvMBBj69LX7w81uO0g6XgEi4WupcAsYMIpqbzU1ZBVSxBA
	 0HAQRgRSJc6GrA0SfX9Ta6Y9gwALD1rB0y4VppiY=
To: oss-security@lists.openwall.com
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <36b82e6f-869b-57c5-366f-f47686dc53bb@orlitzky.com>
Date: Mon, 26 Dec 2016 14:51:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Incomplete fix for CVE-2016-8641 (Nagios local root via (sym)links)

I don't know what I'm doing, and could use some advice.

CVE-2016-8641 relates to a symlink attack in the Nagios init script. If
he wishes, the "nagios" user can replace a specific file with a symlink,
and then the init script will chown the target of that symlink to the
"nagios" user the next time it is run.

A fix for this was released:

https://github.com/NagiosEnterprises/nagioscore/commit/f2ed227673d3b2da643eb5cad26b2d87674f28c1

Largely it consists of passing "-h" to chown, preventing chown from
following symlinks. And yet symlinks are not the only kind of link.
Chown will follow the other kind, too, meaning that the fix in that
commit is insufficient. I'm able to pull off the same sort of attack.

I sent a note to the Nagios maintainer a few minutes ago, but I don't
know what the best course of action is regarding the CVE. Start a new
one? Amend the existing one? Pretend it never happened because it's
Christmas?
