Received: (qmail 30666 invoked by uid 550); 6 Aug 2024 15:15:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25803 invoked from network); 6 Aug 2024 15:12:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dorfdsl.de;
	s=default; t=1722957154;
	bh=FyrmzNI1w3MWXJAZmr09d6dAKdTyhrEUGaoWSbhfN0E=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=4HZf5kyq11Tg4WN61STNPP9PgEUu9m/RtG1wLZzOKQAPOt/DHQpnykHnngeLol4+L
	 lnV8GoYixa9Lebs06ip+ltVgJtqlc9r4zivF+NFUIuHsdvlO4/reISvUZC8rU8m7pb
	 7xGFG9CD5ZHInvwOW+s7X/TZMpEKSVVTB/LNiR98gYALdxfUhcZvrR0OPLasYjMcf1
	 Y8hJtGIdwMmARPnQkqjjomgti3Rm76XD3QSI23Q4pkjhT7dbCy4/JMIVUiXSEg2Ger
	 I5p6zTLD1sU5qa5ow3JNpIK5QDKPMkoj+RSBnHuBFTOmOzXwb8mcF2TnnfougCfpS0
	 5RHKOymA/oNuQ==
Date: Tue, 6 Aug 2024 17:12:32 +0200
From: Marco Moock <mm@dorfdsl.de>
To: oss-security@lists.openwall.com
Message-ID: <20240806171232.6bd08942@zbook>
In-Reply-To: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Am Tue, 6 Aug 2024 05:02:14 -0400
schrieb Neil Horman <nhorman@openssl.org>:

> 1) Are distributions/users comfortable with this approach in the time
> frame proposed?

As a user, this is acceptable for me, but I know there are still
machines outside that only offer such old versions.
Some of them can't be upgraded easily because the vendor doesn't
provide any new versions.

> 3) If the deprecated protocols are re-enabled, what would constitute a
> reasonable warning mechanism to inform users that these protocols are
> going away at some point in the future to pressure users to update to
> a newer, more secure protocol?

Is it reasonable to output that on STDERR any time those protocols are
used?

Maybe log to syslog?
