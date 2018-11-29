X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["455" "Thursday" "29" "November" "2018" "11:40:54" "-0500" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87ftvjygyx.fsf@fifthhorseman.net>" "13" "Re: [oss-security] memory safety bugs in bc" "^Date:" nil nil "11" "2018112916:40:54" "[oss-security] memory safety bugs in bc" (number mark "        dkg@fifthhor Nov 29   13/455   " thread-indent "\"Re: [oss-security] memory safety bugs in bc\"\n") "<20181129091818.unk7zap2xiznptfc@suse.de>" ("<20181128133145.2f53802b@computer>" "<20181129091818.unk7zap2xiznptfc@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32306 invoked by uid 550); 29 Nov 2018 18:41:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32287 invoked from network); 29 Nov 2018 18:41:52 -0000
In-Reply-To: <20181129091818.unk7zap2xiznptfc@suse.de>
References: <20181128133145.2f53802b@computer> <20181129091818.unk7zap2xiznptfc@suse.de>
Message-ID: <87ftvjygyx.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Date: Thu, 29 Nov 2018 11:40:54 -0500
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] memory safety bugs in bc
To: Marcus Meissner <meissner@suse.de>, oss-security@lists.openwall.com

On Thu 2018-11-29 10:18:18 +0100, Marcus Meissner wrote:

> Given Mitres guidance on "dcraw", as this is a standalone tool
> and only denial of service attacks I do not see a need for CVEs.

On my debian unstable system, i see 45 packages that depend on bc.

I haven't evaluated how many of those systems might pass untrusted input
to bc (maybe none!), but this is hardly "standalone".

Hanno, thanks for finding and reporting these problems!

     --dkg
