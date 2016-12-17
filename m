X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["883" "Saturday" "17" "December" "2016" "16:52:06" "+0100" "Gjoko Krstic" "gjoko@zeroscience.mk" "<CAAmRq0miNRCeRU8CPCmh1jUsmbW2VL4qqFVapKP3VGCSmoUtyQ@mail.gmail.com>" "16" "[oss-security] CVE request - DCMTK remote stack buffer overflow" nil nil nil "12" "2016121715:52:06" "[oss-security] CVE request - DCMTK remote stack buffer overflow" (number mark "U       gjoko@zerosc Dec 17   16/883   " thread-indent "\"[oss-security] CVE request - DCMTK remote stack buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28289 invoked by uid 550); 17 Dec 2016 16:03:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15436 invoked from network); 17 Dec 2016 15:53:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=zeroscience.mk; s=default; h=Content-Type:To:Subject:Message-ID:Date:From:
	MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uYj8arL5ackvZ1a0RqvVitSowN5oyixDvH+LM4SWr70=; b=NIMGouRyX6eIWEN7z6iIkVQmfd
	UWKT263S1BsU1yCERjMlUbs7LCFZqFJJ/Evjq6YbwGnBQtX68ap0LC0oLw8VO64CjGTonVwiCIqaW
	jMxHzd1oEMzQ7pp7+uWl1Cq6fRKy6wlqD6PepoPmRgvgfovCrs0oouNhHXq+eTspGDiM=;
X-Gm-Message-State: AIkVDXI7tCACYYyFKMLvu/9auC/SgB+0zwbqQCqGbPsR6TdkWejCfeU5Ly6iNY7pa0y/fBFOHcaw7Bo135WOqg==
X-Received: by 10.237.61.130 with SMTP id i2mr8715542qtf.293.1481989966647;
 Sat, 17 Dec 2016 07:52:46 -0800 (PST)
MIME-Version: 1.0
From: Gjoko Krstic <gjoko@zeroscience.mk>
Date: Sat, 17 Dec 2016 16:52:06 +0100
X-Gmail-Original-Message-ID: <CAAmRq0miNRCeRU8CPCmh1jUsmbW2VL4qqFVapKP3VGCSmoUtyQ@mail.gmail.com>
Message-ID: <CAAmRq0miNRCeRU8CPCmh1jUsmbW2VL4qqFVapKP3VGCSmoUtyQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1144542e85dca10543dcad16
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - a1.xocluster.com
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - zeroscience.mk
X-Get-Message-Sender-Via: a1.xocluster.com: authenticated_id: gjoko@zeroscience.mk
X-Authenticated-Sender: a1.xocluster.com: gjoko@zeroscience.mk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [oss-security] CVE request - DCMTK remote stack buffer overflow

--001a1144542e85dca10543dcad16
Content-Type: text/plain; charset=UTF-8

*"At several places in the code a wrong length of ACSE data structures
received over the network can cause overflows or underflows when processing
those data structures. Related checks have been added at various places in
order to prevent such (possible) attacks. Thanks to Kevin Basista for the
report."The bug will indeed affect all DCMTK-based server applications that
accept incoming DICOM network connections that are using the dcmtk-3.6.0
and earlier versions. Developers are advised to apply the
patched-DCMTK-3.6.1_20160216 fix commit from Dec 14,
2015.http://zeroscience.mk/en/vulnerabilities/ZSL-2016-5384.php
<http://zeroscience.mk/en/vulnerabilities/ZSL-2016-5384.php>https://bugs.gentoo.org/show_bug.cgi?id=602918
<https://bugs.gentoo.org/show_bug.cgi?id=602918>*

--001a1144542e85dca10543dcad16--
