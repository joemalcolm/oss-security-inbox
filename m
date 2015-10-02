X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1649" "Friday" "2" "October" "2015" "15:22:01" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>" "49" "[oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD" nil nil nil "10" "2015100213:22:01" "[oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD" (number mark "        Jason@zx2c4. Oct  2   49/1649  " thread-indent "\"[oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24482 invoked by uid 550); 2 Oct 2015 13:22:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24460 invoked from network); 2 Oct 2015 13:22:17 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:date:message-id:subject:from:to:cc:content-type; s=mail; bh=7g+
	qS3kZ76zPW1KFjH9nfb/qjNg=; b=RLMtT9CtcCh2ge5+apaOayHLMZAFBB6POAg
	wzofFPLvbk13AMlb5mA9PKcTjIlfo/Qe0h9P+FRqO5ybY9k0niMWxQ7ZgCdo6x6V
	eCOAQGeNh7nvhIuF6wQae4YPcWq5wR80l7pTQeJbFwcBjCNIKey43EqNwveVjfff
	y7oNzupavYY4iUJNhhJesy/yubh59IBCrOoExyBIES8xd6P0wuioTAoX3AFwNWVx
	Jf8Ppezj9po8J6nJaDb5gp4jSN6eh4Y2opRuG64yEhHcrbwLmkcy/2tnK0Mf9a89
	bAShYmUlGxK8pr1aYBxEKyJT5VUCO0/8kqZvuuC/3akt559Blaw==
MIME-Version: 1.0
X-Received: by 10.25.25.76 with SMTP id 73mr3681044lfz.91.1443792121927; Fri,
 02 Oct 2015 06:22:01 -0700 (PDT)
Message-ID: <CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: misc <misc@opensmtpd.org>
Date: Fri, 2 Oct 2015 15:22:01 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD
To: oss-security <oss-security@lists.openwall.com>

Hello,

See this excerpt from the release notes below. Quite a few bugs. Looks
like at least one of them might invalidate the openbsd.org claim,
"Only two remote holes in the default install, in a heck of a long
time!".

CCing the OpenSMTPD mailing list (low-volume; don't worry Solar!) in
case they want to chime in too.

Jason



---------- Forwarded message ----------
From: Gilles Chehade <gilles@poolp.org>
Date: Fri, Oct 2, 2015 at 4:01 AM
Subject: Announce: OpenSMTPD 5.7.2 released
To: misc@opensmtpd.org

[...snip...]


Issues fixed in this release (5.7.2, since 5.7.1):
===========================================

- an oversight in the portable version of fgetln() that allows attackers
  to read and write out-of-bounds memory;

- multiple denial-of-service vulnerabilities that allow local users to
  kill or hang OpenSMTPD;

- a stack-based buffer overflow that allows local users to crash
  OpenSMTPD, or execute arbitrary code as the non-chrooted _smtpd user;

- a hardlink attack (or race-conditioned symlink attack) that allows
  local users to unset the chflags() of arbitrary files;

- a hardlink attack that allows local users to read the first line of
  arbitrary files (for example, root's hash from /etc/master.passwd);

- a denial-of-service vulnerability that allows remote attackers to fill
  OpenSMTPD's queue or mailbox hard-disk partition;

- an out-of-bounds memory read that allows remote attackers to crash
  OpenSMTPD, or leak information and defeat the ASLR protection;

- a use-after-free vulnerability that allows remote attackers to crash
  OpenSMTPD, or execute arbitrary code as the non-chrooted _smtpd user;
