X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["995" "Friday" "9" "June" "2017" "11:47:55" "-0400" "Christos Zoulas" "christos@zoulas.com" "<20170609154755.2597617FDAB@rebar.astron.com>" "33" "Re: [oss-security] Vixie/ISC Cron group crontab to root escalation" "^Date:" nil nil "6" "2017060915:47:55" "[oss-security] Vixie/ISC Cron group crontab to root escalation" (number mark "        christos@zou Jun  9   33/995   " thread-indent "\"Re: [oss-security] Vixie/ISC Cron group crontab to root escalation\"\n") "<20170608180534.GA27098@openwall.com>" ("<20170608180534.GA27098@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10097 invoked by uid 550); 9 Jun 2017 16:22:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17416 invoked from network); 9 Jun 2017 15:48:07 -0000
In-Reply-To: <20170608180534.GA27098@openwall.com>
       from Solar Designer (Jun  8,  8:05pm)
Organization: Astron Software
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
Message-Id: <20170609154755.2597617FDAB@rebar.astron.com>
Date: Fri, 9 Jun 2017 11:47:55 -0400
From: christos@zoulas.com (Christos Zoulas)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalation
To: oss-security@lists.openwall.com

On Jun 8,  8:05pm, solar@openwall.com (Solar Designer) wrote:
-- Subject: [oss-security] Vixie/ISC Cron group crontab to root escalation

In this patch:
http://cvsweb.openwall.com/cgi/cvsweb.cgi/Owl/packages/vixie-cron/vixie-cron-4.1.20040916-owl-crond.diff

Why do:

+	if (lstat(tabname, &lstatbuf) < OK) {
+		log_it(fname, getpid(), "CAN'T LSTAT", tabname);
+		goto next_crontab;
+	}
+	if (!S_ISREG(lstatbuf.st_mode)) {
+		log_it(fname, getpid(), "NOT REGULAR", tabname);
+		goto next_crontab;
+	}
+	if ((!pw && (lstatbuf.st_mode & 07533) != 0400) ||
+	    (pw && (lstatbuf.st_mode & 07577) != 0400)) {
+		log_it(fname, getpid(), "BAD FILE MODE", tabname);
+		goto next_crontab;
+	}
+	if (lstatbuf.st_nlink != 1) {
+		log_it(fname, getpid(), "BAD LINK COUNT", tabname);
+		goto next_crontab;
+	}
+
 	if ((crontab_fd = open(tabname, O_RDONLY|O_NONBLOCK|O_NOFOLLOW, 0)) < OK) {
 		/* crontab not accessible?
 		 */

Instead of doing the open first and then fstat(2) to prevent TOCTOU?

christos
