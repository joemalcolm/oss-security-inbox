X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["916" "Saturday" "1" "August" "2015" "07:00:50" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150801050050.GA24937@eldamar.local>" "22" "[oss-security] CVE Request: devscripts: licensecheck: arbitrary shell command injection" nil nil nil "8" "2015080105:00:50" "[oss-security] CVE Request: devscripts: licensecheck: arbitrary shell command injection" (number mark "        carnil@debia Aug  1   22/916   " thread-indent "\"[oss-security] CVE Request: devscripts: licensecheck: arbitrary shell command injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30009 invoked by uid 550); 1 Aug 2015 05:01:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29988 invoked from network); 1 Aug 2015 05:01:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6cQp7RrnhbO5kkT27CripzhRK2IL3fufYLGaYGwmB4M=;
        b=u6vBeNbQik5trRW2LoFpP4WnDnHpSXW8xLYkqPe4thy7nPm/lkC/bLWP03XhObpmRx
         qq8w3sL+qp1pbvePdofzvJEnKlcY3ShrPhMSD+JWTVVdpsJYq43yQwNIPKA1P/azh+jm
         Lzes6etIYuvCYgOGxyGunQMw+qUvDmZAEAcuiYUN0RCQjCUzHpAvEt2Z9APE0c5b3q7w
         uSOPQzQztAq8FiV+BEIqvOx4kZbPdgS7HWFQiNNPxpbd4vEErXH5Pa8uLJVIS197xkw1
         /WZEfcg4TfcppviLhtvf5fxCIL7fILCqpuS+CYiEIyT2hPgW638LCZma6nG6OCg9C+aK
         VwvQ==
X-Received: by 10.180.103.69 with SMTP id fu5mr13065068wib.95.1438405252288;
        Fri, 31 Jul 2015 22:00:52 -0700 (PDT)
Message-ID: <20150801050050.GA24937@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Sat, 1 Aug 2015 07:00:50 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: devscripts: licensecheck: arbitrary shell command
 injection
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

devscripts[0,1] contains a utility licensecheck, a simple license
checker for source files. It is as well included at least in Ubuntu
and Fedora[2].

Jonas Smedegaard[3] (and Jakub Wilk with a follow-up message) reported
that licensecheck is prone to arbitrary shell command injection via
shell metacharacters in filenames. The issue was introduced in
devscripts v2.15.5[4] and fixed in v2.15.7[5].

Could you please assign a CVE to identify this issue?

Regards,
Salvatore

 [0] https://packages.debian.org/devscripts
 [1] https://anonscm.debian.org/cgit/collab-maint/devscripts.git/
 [2] http://pkgs.fedoraproject.org/cgit/devscripts.git/
 [3] https://bugs.debian.org/794260
 [4] https://anonscm.debian.org/cgit/collab-maint/devscripts.git/commit/?id=025ad4ea8ba92d32bd698a83149f782c17f78bf0 
 [5] https://anonscm.debian.org/cgit/collab-maint/devscripts.git/commit/?id=c0687bcde23108dd42e146573c368b6905e6b8e8
