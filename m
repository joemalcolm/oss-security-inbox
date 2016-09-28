X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1038" "Wednesday" "28" "September" "2016" "12:20:02" "-0700" "Andrew Ayer" "agwa@andrewayer.name" "<20160928122002.671555ec3ab226712057df54@andrewayer.name>" "24" "[oss-security] CVE Request: systemd v209+: local denial-of-service attack" "^Date:" nil nil "9" "2016092819:20:02" "[oss-security] CVE Request: systemd v209+: local denial-of-service attack" (number mark "U       agwa@andrewa Sep 28   24/1038  " thread-indent "\"[oss-security] CVE Request: systemd v209+: local denial-of-service attack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31999 invoked by uid 550); 28 Sep 2016 19:38:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23566 invoked from network); 28 Sep 2016 19:20:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=andrewayer.name;
	s=beanwood20160511; t=1475090403;
	bh=f6iwI1nu+s1oQ4YVyIozsveKMbUaRLe5/P2GLbkoicI=;
	h=Date:From:To:Subject;
	b=PqIElLdXQexNC85876W/fT+Q6KFrKwlJq3nPFN9q6SfkOBeSNPCW4zVgc5TdIvPGj
	 Ma2+RmWwFm2eauhJJ/GdK7PfYcR+SWTltgc9ipoxqv/NV4LfUTcfxMNMujxQWwytQK
	 1e54j2008ARLzCypg3840S9tn/8CyLgDUD3PFrh3/N7LSGwIfvMf8HbYH508mIuKU8
	 OX1CjOFcG4mo5M764x/IoK8WD5Nr/aX6IlVSAB0rofvTPMc1ZkVQj3+gaujJphoyAy
	 exsMSRXh3p5NmxYDraL6IBe1B+/rFrXMsmaqg+LH5HpBkdCrvtonB+U2ovzFhxcQpR
	 7ilodtN2IDjBg==
Message-Id: <20160928122002.671555ec3ab226712057df54@andrewayer.name>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Date: Wed, 28 Sep 2016 12:20:02 -0700
From: Andrew Ayer <agwa@andrewayer.name>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: systemd v209+: local denial-of-service attack
To: oss-security@lists.openwall.com

systemd[1] fails an assertion in manager_invoke_notify_message[2] when
a zero-length message is received over its notification socket.
After failing the assertion, PID 1 hangs in the pause system call.
It is no longer possible to start and stop daemons or cleanly reboot
the system. Inetd-style services managed by systemd no longer accept
connections.

Since the notification socket, /run/systemd/notify, is world-writable,
this allows a local user to perform a denial-of-service attack against
systemd.

Proof-of-concept:

        NOTIFY_SOCKET=/run/systemd/notify systemd-notify ""

This vulnerability is present in all versions of systemd since at
least v209[3].

This has been reported to systemd.[4]

[1] https://github.com/systemd/systemd/
[2] https://github.com/systemd/systemd/blob/b8fafaf4a1cffd02389d61ed92ca7acb1b8c739c/src/core/manager.c#L1666
[3] https://github.com/systemd/systemd/commit/5ba6985b6c8ef85a8bcfeb1b65239c863436e75b#diff-ab78220e12703ee63fa1e6a2caa16bebR1325
[4] https://github.com/systemd/systemd/issues/4234
