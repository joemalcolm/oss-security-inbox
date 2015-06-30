X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["408" "Tuesday" "30" "June" "2015" "20:50:21" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150630185021.GA29895@eldamar.local>" "18" "[oss-security] CVE Request: UDP checksum DoS" nil nil nil "6" "2015063018:50:21" "[oss-security] CVE Request: UDP checksum DoS" (number mark "        carnil@debia Jun 30   18/408   " thread-indent "\"[oss-security] CVE Request: UDP checksum DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28099 invoked by uid 550); 30 Jun 2015 18:50:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28076 invoked from network); 30 Jun 2015 18:50:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wnvdh6qc5O7eoh6EkgjaQD07Bp2W8Sm6cQoZdPzqElc=;
        b=xQKD9XVyq3D5/yurfYcmeHGEpHrLEKtmZfTCVsLUIDTwrbPW7DFDdO4/D6OCLilE2w
         8vFwHxEkzPmRXc7wwS0EgjpHFPaexmXT6iTuKkbd0IcAtkumVUMp35UMFMlZ44X9vSZM
         bfbLIaz/Uz/ATQ3rCsLwymHtWr6EorGbnodRIo/tVSqOqdPQfcdYRreSyHaXlo4BXUVY
         Ik7I2FzfQBV7zezdGrTkn4mbsclfe1mgGuaJFf6HthZCMP4LrNxvAtk1ng2nAfQpVIzg
         qFZuNkJhqkgwOIyv5aBJsoz/H+OkNq8E23xtgC35xTQcMzb4ykO+KvHRz26+UG98l9iT
         AlLQ==
X-Received: by 10.180.83.135 with SMTP id q7mr35567659wiy.17.1435690223371;
        Tue, 30 Jun 2015 11:50:23 -0700 (PDT)
Message-ID: <20150630185021.GA29895@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: benh@debian.org, CVE Assignments MITRE <cve-assign@mitre.org>
Date: Tue, 30 Jun 2015 20:50:21 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: UDP checksum DoS
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

AFAICS there wasn't a CVE requested for the following:

https://twitter.com/grsecurity/status/605854034260426753

> remote DoS via flood of UDP packets with invalid checksums

It has been fixed in v4.1-rc7:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=beb39db59d14990e401e235faf66a6b9b31240b0

Could you assign a CVE for this issue?

Thanks in advance,

Regards,
Salvatore
