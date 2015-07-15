X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["459" "Wednesday" "15" "July" "2015" "17:20:55" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150715152055.GA13935@eldamar.local>" "14" "[oss-security] CVE Request: kmail: Attachments are not encrypted when \"automatic encryption\" is selected" nil nil nil "7" "2015071515:20:55" "[oss-security] CVE Request: kmail: Attachments are not encrypted when \"automatic encryption\" is selected" (number mark "        carnil@debia Jul 15   14/459   " thread-indent "\"[oss-security] CVE Request: kmail: Attachments are not encrypted when \"automatic encryption\" is selected\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24113 invoked by uid 550); 15 Jul 2015 15:21:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24078 invoked from network); 15 Jul 2015 15:21:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6vx7ZESPmWYxFk0uhAj5hZfOl3fdkKdw9rkpNCEJ3gM=;
        b=rIaO55TFIe8QNxNET3HlF26vDAJo17SLQ7jcH/j6vgv1TIBZ7OGPwnZlGmK4oFExJx
         FNnOfsn+CHLO/hNdL83v98RqpW9wSgQWSXFt/kBMC1bSWCDtqA2uqdAEnkVm5H7dv2Yr
         kzJVeOGr3KlIxlLLKAPsI6kAA/QtojzfjKTizxdXX9hrEiuhp9Jty37Wbv8k2I4KFJyu
         DavCwJTYs/FaBr8hihjbHQLIsOe+VxmJ7AXbhkJT6Fedqnc1ufMy9nZ/n3zqQT071GNb
         +ATCfAtSzkW5jJ9ypCYtFa15yUBTcg8Y6edKLCj/4KSQ81+zd5GNVVNIg7ckQnsTOdV9
         4CHQ==
X-Received: by 10.180.78.73 with SMTP id z9mr72148wiw.64.1436973656614;
        Wed, 15 Jul 2015 08:20:56 -0700 (PDT)
Message-ID: <20150715152055.GA13935@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Wed, 15 Jul 2015 17:20:55 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: kmail: Attachments are not encrypted when "automatic
 encryption" is selected
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

It was reported a while ago to the KDE Bugtracking System, that
attachments are not encrypted when "automatic encryption" is selected.

Upstream bugreport: https://bugs.kde.org/show_bug.cgi?id=340312
Fix: http://quickgit.kde.org/?p=kdepim.git&a=commit&h=626c857eb30c0533a4de7836ee843caaa8c00a26
Debian Bug: https://bugs.debian.org/791800

I have not found a previous CVE request for this issue. Could a CVE be
assigned for this issue?

Regards,
Salvatore
