X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1312" "Tuesday" "14" "April" "2015" "16:07:10" "+0200" "Hannes Trunde" "hannes.trunde@gmail.com" "<001301d076bc$4d9f9e60$e8dedb20$@gmail.com>" "36" "[oss-security] CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" nil nil nil "4" "2015041414:07:10" "[oss-security] CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" (number mark "        hannes.trund Apr 14   36/1312  " thread-indent "\"[oss-security] CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19649 invoked by uid 550); 14 Apr 2015 14:22:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9310 invoked from network); 14 Apr 2015 14:07:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding:thread-index:content-language;
        bh=Os3yvu+whF197IPWsz4eose3EtjqZc/xOa1IOTso71o=;
        b=d+Kjy36L+VcLRJCV1VaOtqX9gk+TSqj+uw5gaJIYoAoX4qPFfw+92LMmWnkiEa9thh
         nSnSisKKyWG4IhAEjPxLDBQ+amKEalqwsSo2dFbJwLDIGgE2O4BMlwSYR4Fu5H366N2e
         ayEQaKmKHQgHcqkNkU8mAu6l1287LyljKJyyoOm26CYNlgjePYBBU1D85W2JXiyn5Adi
         3yMLwMUz2VEuNTskanq+9udOkO3aff5enfH+n6jHbwkkWErn4EjW+L3s7U8dd3chvfRw
         aXfR1l0QZoszpuK0gh5SXlQXVdZ5zFM5gukQdS5J60D290jCBQURNMFbohXI2DHYL84C
         APhg==
X-Received: by 10.180.20.14 with SMTP id j14mr15875563wie.45.1429020432502;
        Tue, 14 Apr 2015 07:07:12 -0700 (PDT)
Message-ID: <001301d076bc$4d9f9e60$e8dedb20$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdB2urW9b2iYgI+iR2alAAIyqExZ2A==
Content-Language: de-at
Date: Tue, 14 Apr 2015 16:07:10 +0200
From: "Hannes Trunde" <hannes.trunde@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1
To: <oss-security@lists.openwall.com>

Hi,

during a research I found 3 SQL injection vulnerabilities in 3 different
WordPress plugins and wanted to ask for CVE assignments for them. I've
already contacted the WordPress.org team and the plugin authors, who either
released updates already or are working on a fix. I've also sent a mail to
cve-assign@mitre.org asking for instructions on how to get CVE IDs assigned
to those 3 vulnerabilities but didn't get a response yet.

1) WP Community Events plugin SQL injection vulnerability
Affected version: 1.3.5 (and likely all versions below)
Fixed version: 1.4
Plugin URL: https://wordpress.org/plugins/community-events/
Changelog: https://wordpress.org/plugins/community-events/changelog/

2) WP Tune Library plugin SQL injection vulnerability
Affected version: 1.5.4 (and likely all versions below)
Fixed version: 1.5.5
Plugin URL: https://wordpress.org/plugins/tune-library/
Changelog: https://wordpress.org/plugins/tune-library/changelog/

3) WP Symposium plugin SQL injection vulnerability
Affected version: 15.1 (and likely all versions below)
Fixed version: Not yet available, author is working on a fix
Plugin URL: https://wordpress.org/plugins/wp-symposium/  (still disabled by
WordPress.org team)

If you need any further information please let me know!

Thank you very much!

Hannes Trunde




