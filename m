Received: (qmail 20231 invoked by uid 550); 1 Jul 2024 08:39:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12088 invoked from network); 1 Jul 2024 08:35:35 -0000
Date: Mon, 1 Jul 2024 18:35:23 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
To: oss-security@lists.openwall.com
Message-ID: <4f270df5-2b24-979d-c03f-6d8f3b9d007d@mindrot.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="0-1901553016-1719822891=:91111"
Content-ID: <6f66180a-a34e-fdd0-d076-e2cbdfbadd28@mindrot.org>
X-Scanned-By: MIMEDefang 2.75 on 130.102.79.58
Subject: [oss-security] Re: Announce: OpenSSH 9.8 released (fwd)

--0-1901553016-1719822891=:91111
Content-Type: text/plain; CHARSET=US-ASCII
Content-ID: <efc6964f-7dcb-3669-7f82-1cbc6b5ef1d3@mindrot.org>


--0-1901553016-1719822891=:91111
Content-Type: message/rfc822
Content-ID: <142d8bfe-3eb9-456d-4910-25269a4a6ef2@mindrot.org>
Content-Description: Forwarded Message
Content-Disposition: INLINE

Date: Mon, 1 Jul 2024 18:21:11 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
To: openssh-unix-dev@mindrot.org
Subject: Re: Announce: OpenSSH 9.8 released
Message-ID: <d3d762aa-2fa4-3ec0-798c-f657ec914473@mindrot.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


Hi,

Regarding the race condition fixed in OpenSSH 9.8. A mitigation to
prevent exploitation of this bug is to disable the login grace timer
by setting LoginGraceTime=0 in sshd_config. This will however make
it much easier for an attacker to deny service to sshd.

Similarly, the much more minor keystroke timing bug can be avoided
by disabling the feature using ObscureKeystrokeTiming=0.

Some users will understandably prefer to patch their OpenSSH rather
than upgrade to the newest version, so here are minimal patches for
both problems.

1) Critical race condition in sshd

diff --git a/log.c b/log.c
index 9fc1a2e2e..191ff4a5a 100644
--- a/log.c
+++ b/log.c
@@ -451,12 +451,14 @@ void
 sshsigdie(const char *file, const char *func, int line, int showfunc,
     LogLevel level, const char *suffix, const char *fmt, ...)
 {
+#ifdef SYSLOG_R_SAFE_IN_SIGHAND
 	va_list args;
 
 	va_start(args, fmt);
 	sshlogv(file, func, line, showfunc, SYSLOG_LEVEL_FATAL,
 	    suffix, fmt, args);
 	va_end(args);
+#endif
 	_exit(1);
 }
 
2) Minor logic error in ObscureKeystrokeTiming

diff --git a/clientloop.c b/clientloop.c
index 8ec36af94..6dcd6c853 100644
--- a/clientloop.c
+++ b/clientloop.c
@@ -608,8 +608,9 @@ obfuscate_keystroke_timing(struct ssh *ssh, struct timespec *timeout,
 		if (timespeccmp(&now, &chaff_until, >=)) {
 			/* Stop if there have been no keystrokes for a while */
 			stop_reason = "chaff time expired";
-		} else if (timespeccmp(&now, &next_interval, >=)) {
-			/* Otherwise if we were due to send, then send chaff */
+		} else if (timespeccmp(&now, &next_interval, >=) &&
+		    !ssh_packet_have_data_to_write(ssh)) {
+			/* If due to send but have no data, then send chaff */
 			if (send_chaff(ssh))
 				nchaff++;
 		}


Thanks,
Damien Miller


--0-1901553016-1719822891=:91111--
