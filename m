X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["824" "Sunday" "14" "February" "2016" "15:52:17" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160214145217.GA20931@eldamar.local>" "23" "[oss-security] CVE Request: Linux: Incorrect branch fixups for eBPF allow arbitrary read" nil nil nil "2" "2016021414:52:17" "[oss-security] CVE Request: Linux: Incorrect branch fixups for eBPF allow arbitrary read" (number mark "U       carnil@debia Feb 14   23/824   " thread-indent "\"[oss-security] CVE Request: Linux: Incorrect branch fixups for eBPF allow arbitrary read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28564 invoked by uid 550); 14 Feb 2016 14:52:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28542 invoked from network); 14 Feb 2016 14:52:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0OaivUtDsp8+AfjKRKOBYnKMPb6Px8PAROtkIPCsUHE=;
        b=GSwHQnTR8qJ17/RbhuzgFKqV/6XW79Fx2z/A7OeEoXdjsvWX/7XsPJ5xgM/7JCE5xc
         kDxtJvYqVnU6FGE6bJK3wLk3twBOOCJxhovq1GgIgE0/slQZKLZEkNdCCI2OyZEFGxZ9
         2/4twyEpVWPSMWCyuOTbjsSA87Cd5/KLRiKhr1xLES23B8p0JRoe0qF5nS0wdNLnlsw7
         1VVDdm949T8+b18F6g+4PL7vZY7Xe8O1uPZ6c3btem4+EQSz2LLgNm/ltU6xKRV2GOMI
         YdAQNDsNs8IPX8wcom2DWJ5we2eG4rn3jU0lBh/l2CuKZY5k/xBgp+wLtux3DbBI1RAO
         gBEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=0OaivUtDsp8+AfjKRKOBYnKMPb6Px8PAROtkIPCsUHE=;
        b=lEbMIrxjGpWGKOdzkUvIYzVufuaNYyQF+1h9Mk3zBM6n4CxNKc0UCUpM91EiD50kej
         zQ6CtMm4FZ5apnNl7AyADA/QzceYvwWTcbKPxYGlqnkUxPRPdZnTCow2bL2RT/GBjxZM
         fa4iYZi9J1iVB5d+B8AL8yWv15lA4m312E4N58yNE2TnhoB4ySG8tN8t+Qygcz4Pp3fU
         GdhY1a32GaM1x9awyUJ3rYtNyZ8od4UlXCld/JexSekdAk2h1dbnR5OyZrF2zhr5em/Z
         6gE54xR4hEwNpIdtXJpWKWJy9F2sgyjhs1pC+nDw0FQ/Thq+J2mN8F+sMlwpdUnYmDRo
         N9OQ==
X-Gm-Message-State: AG10YORT2YsY4TUHuzwutkZVzxpUS2NZUI9FE6PrOxN6xFD1zQ1k7/ZnrU+49GJ3bCPe+g==
X-Received: by 10.194.190.6 with SMTP id gm6mr11687789wjc.115.1455461539474;
        Sun, 14 Feb 2016 06:52:19 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 14 Feb 2016 15:52:17 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: Ben Hutchings <benh@debian.org>
Message-ID: <20160214145217.GA20931@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: Linux: Incorrect branch fixups for eBPF allow arbitrary
 read

Hi

We would like to request a CVE for the following issue fixed in Linux
with the following commit, which as well contains an analysis:

https://git.kernel.org/linus/a1b14d27ed0965838350f1377ff97c93ee383492
(will be in v4.5-rc4):

> When ctx access is used, the kernel often needs to expand/rewrite
> instructions, so after that patching, branch offsets have to be
> adjusted for both forward and backward jumps in the new eBPF program,
> but for backward jumps it fails to account the delta. Meaning, for
> example, if the expansion happens exactly on the insn that sits at
> the jump target, it doesn't fix up the back jump offset.

The issue was introduced in v4.1-rc1 with commit
https://git.kernel.org/linus/9bac3d6d548e5cc925570b263f35b70a00a00ffd
.

Could you please assign a CVE for this issue?

Regards,
Salvatore
