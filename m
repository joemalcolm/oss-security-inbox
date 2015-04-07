X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1190" "Tuesday" "7" "April" "2015" "14:11:25" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNXNV1db_gPgPZgwvFWGReUZiBDouXE+CoWa1au1h1xJbg@mail.gmail.com>" "46" "[oss-security] redcarpet <=3.2.2 (and related ruby gems) allow for possible XSS via autolinking of untrusted markdown" nil nil nil "4" "2015040721:11:25" "[oss-security] redcarpet <=3.2.2 (and related ruby gems) allow for possible XSS via autolinking of untrusted markdown" (number mark "        reed@reedlod Apr  7   46/1190  " thread-indent "\"[oss-security] redcarpet <=3.2.2 (and related ruby gems) allow for possible XSS via autolinking of untrusted markdown\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7568 invoked by uid 550); 7 Apr 2015 21:13:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6119 invoked from network); 7 Apr 2015 21:11:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=EDGqfRMV6ReCjEZwBFNw8xOW4ZUjA/vUbDqXkWXmNzo=;
        b=JZbRI5hQcItYqEND6DdlhsX5e7f/hdqehx16QSILNNhwG1jAc+kVAcoxW9jNluzYMd
         F/DcIuEV8161mireTERG/GLGZ9s5vhHai6YFNfUm31v0F7PcZE0qSWilLV2gkbcGTPs9
         ZJbrD/5npC2jG/mQsXPo5dwgVd/iYMrXKDfPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=EDGqfRMV6ReCjEZwBFNw8xOW4ZUjA/vUbDqXkWXmNzo=;
        b=LKLAe/ezsVOqtfcB+hxnOLC1ZKc2OwDPg9nT7aL6Bw9svrDFQUZXPrlVXXBK3CD07b
         hpfb9E5YcBKHRwrd4yEPnMX6pEmQEQlOqQLeUWdVpj+jiC18B7X41Ml1dZZMJcgjjsL7
         jCjcRTztnEvBFfwmOvNVicDK8cQZ7eR95JdRWNl4ocD0z86RZJffK8Yy2RTzj5CPSY+m
         hRXfMaDKJx/T2Y1FlL7cx3jtqhb7td3penKaeulZU5bo17c0fryGvY9acSC/NtfrERNG
         HGDVOz9SrfbKp6lJyS+Z1tP+KJSmfPpZv7rtKOjY+B0OD5ww+EL3au2YyMVgqUfMafIr
         er8A==
X-Gm-Message-State: ALoCoQlbB1NEgqcVBd4Rzm2CgxaoZ589uVxaMNvGG43tbG4opjdnbCGKQSsWOW1lGrZKZUOB4pv4
X-Received: by 10.194.59.199 with SMTP id b7mr44211922wjr.26.1428441106068;
 Tue, 07 Apr 2015 14:11:46 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALPTtNXNV1db_gPgPZgwvFWGReUZiBDouXE+CoWa1au1h1xJbg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bacc0f8b5d36f051328dcf1
Date: Tue, 7 Apr 2015 14:11:25 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] redcarpet <=3.2.2 (and related ruby gems) allow for possible XSS via
 autolinking of untrusted markdown
To: Assign a CVE Identifier <cve-assign@mitre.org>, rubysec-announce@googlegroups.com, 
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com

--047d7bacc0f8b5d36f051328dcf1
Content-Type: text/plain; charset=UTF-8

Title: redcarpet and related gems allow for possible XSS of untrusted
markdown if autolink extension is enabled

Date: 2015-04-07

CVE: Yet to be assigned.

Credit: Daniel LeCheminant (@d_lec)

Download: https://rubygems.org/gems/redcarpet

Description: Markdown to (X)HTML parser

Fix:
https://github.com/vmg/redcarpet/commit/e5a10516d07114d582d13b9125b733008c61c242

This fix is included in Redcarpet 3.2.3.

Initial research suggests this issue affects:

* https://github.com/vmg/sundown 1.16.0 (last version before the library
was deprecated)
* https://github.com/vmg/redcarpet 3.2.2
* https://github.com/hoedown/hoedown 3.0.1

It also affects other (less popular) libraries based off of sundown,
including:

* https://github.com/benmills/robotskirt 2.7.1
* https://github.com/FSX/misaka 1.0.2
* https://github.com/chobie/php-sundown 0.3.11

Users of these libraries may be vulnerable if the autolink extension is
enabled.

More information is available at:

* http://danlec.com/blog/bug-in-sundown-and-redcarpet (excellent write-up!)
* https://hackerone.com/reports/46916

~reed

--047d7bacc0f8b5d36f051328dcf1--
