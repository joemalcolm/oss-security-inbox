X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["279" "Sunday" "27" "December" "2015" "09:25:21" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151227082521.GA31078@eldamar.local>" "12" "[oss-security] CVE Request: Stalin: Insecure use of temporary files" nil nil nil "12" "2015122708:25:21" "[oss-security] CVE Request: Stalin: Insecure use of temporary files" (number mark "U       carnil@debia Dec 27   12/279   " thread-indent "\"[oss-security] CVE Request: Stalin: Insecure use of temporary files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3074 invoked by uid 550); 27 Dec 2015 08:25:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2032 invoked from network); 27 Dec 2015 08:25:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=9g+LOMeubFI+T5HwnTqP3ISTO5/cxsfI3OPuaNcXxdU=;
        b=GV2ovKrbk6Ph1GH9e1a8316NcqS6SCnRD9fRHyeAkG7ifZcxUzEjo20r2vr3xYN0sV
         cTumya+p1zlKQAgVS0ka0oNrRCy/O2IwPLXtIvvNJNefycN1SwgFAHAK8pbhhd4gnNa1
         cWVTmkAMqDGFyQ2nHzC8VUpCZrW+IJUm8hbEw0h4rex7b9e4mnOkzIwC4JoVUrBTrwjN
         3o7jT4nqdsr94XV3gb2Z1zHlmRFer/a9CS6jgS5STojppOX+G7Ae0pniodGZpFDTRbB7
         DVwh8LSPfFd7RoHAsGY7HqRmGrHMtWD4nqnhHBMPUJD69eWCT/Qwyei3vnoDbDh3szs/
         Hf0A==
X-Received: by 10.194.71.172 with SMTP id w12mr11979695wju.77.1451204723466;
        Sun, 27 Dec 2015 00:25:23 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 27 Dec 2015 09:25:21 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: CVE Assignments MITRE <cve-assign@mitre.org>,
	Steve Kemp <steve@steve.org.uk>,
	Rob Browning <rlb@defaultvalue.org>
Message-ID: <20151227082521.GA31078@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: Stalin: Insecure use of temporary files

Hi,

Steve Kemp discovered that Stalin, an optimizing compiler for Scheme,
insecurely uses temporary files which have a fixed name. This was
reported in Debian as #808730[1].

Could you please assign a CVE for this issue?

 [1] https://bugs.debian.org/808730

Regards,
Salvatore
