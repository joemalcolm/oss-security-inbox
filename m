X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["497" "Wednesday" "13" "May" "2015" "18:58:17" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150513165817.GA29315@eldamar.local>" "20" "[oss-security] CVE Request: t1utils: buffer overflow in set_cs_start" nil nil nil "5" "2015051316:58:17" "[oss-security] CVE Request: t1utils: buffer overflow in set_cs_start" (number mark "        carnil@debia May 13   20/497   " thread-indent "\"[oss-security] CVE Request: t1utils: buffer overflow in set_cs_start\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9862 invoked by uid 550); 13 May 2015 16:58:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9841 invoked from network); 13 May 2015 16:58:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FH/PtWk+uzvlr7Q6QJa5sTGfpv/bx/sDRvy5o1PFGIE=;
        b=PA8EAPUCczRXAWydfPaENudW0LhqhgppTiDaon1b1b+NIcewRWxB0lmc/td9GgODuG
         wXeWn000mhUknmqZWM6q8Gdywc9tTMsZuUG4qUSosCEzQN7PiFRKrRXLSkrF+hmCuWyo
         1x2U78ja+4Rq3VXwCzN/wwNHbCmdvQtBWFATk3qyMPBST4BiKfocUnNDlvYOIAPWtPUv
         mubjwiTH1hQtyCRRuUenIVEyHs4ZKhWfS/W+OBLdB2P4JoNAYe+Nm7ob+DA60OTxM0V4
         b9nLFh59TlWJgO4hr17bgwZwhRAHSC1aytJ7QGIR11xrKAhAq6a/+EjiRlVpT1NvPFSL
         9Ajg==
X-Received: by 10.180.106.195 with SMTP id gw3mr16160546wib.25.1431536299438;
        Wed, 13 May 2015 09:58:19 -0700 (PDT)
Message-ID: <20150513165817.GA29315@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Wed, 13 May 2015 18:58:17 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: t1utils: buffer overflow in set_cs_start
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Jakub Wilk reported a buffer overflow in t1utils which potentially can
be exploited for code execution. Original bug report is at

https://bugs.debian.org/779274

Upstream bugreport: https://github.com/kohler/t1utils/issues/4

Upstrem fix:
https://github.com/kohler/t1utils/commit/6b9d1aafcb61a3663c883663eb19ccdbfcde8d33

Additional information is as well provided in:

https://bugzilla.redhat.com/show_bug.cgi?id=1218365#c7

Could you please assign a CVE for this issue?

Regards,
Salvatore
