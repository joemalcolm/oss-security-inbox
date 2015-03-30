X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["278" "Monday" "30" "March" "2015" "06:35:41" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150330043541.GA2618@lorien.valinor.li>" "12" "[oss-security] CVE Request: DBD-Firebird: Buffer Overflow in dbdimp.c" nil nil nil "3" "2015033004:35:41" "[oss-security] CVE Request: DBD-Firebird: Buffer Overflow in dbdimp.c" (number mark "        carnil@debia Mar 30   12/278   " thread-indent "\"[oss-security] CVE Request: DBD-Firebird: Buffer Overflow in dbdimp.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15757 invoked by uid 550); 30 Mar 2015 04:35:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15736 invoked from network); 30 Mar 2015 04:35:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=U1eOWi3W9aMhjUKGZiP9as2t89l30IEp0Ex8o+HLFjY=;
        b=TBXxE3OMvijtDKwmNsAaDZoQeSokz2n0/jUaYMXQg/S86Kua7O34YOgIyc9sBe/jRJ
         AfansfXQ7pcT3CqQ8MD2bqTxVqS7bOf0NW1O+CMltXWm4fYsj6YGszt0eB5tHUxxP7f+
         EaVr4/92WOY4rDCdbGq8RiTCIdhMvkXB16rshQza3POYa4LdI2EfMDy76d4DOh76DR99
         135Nnb09Nt5UvZQDZziO2Ki2x7SxkwfhpPU2Koe2rDl4vhoadFOqirRKldRF1O1XU9yO
         jK4x3OrN8pTv0LJRX0R7drwOUVb1oYs6eUEWIf2POaMlFIeSCeLe+hQjJE/ZHzropC36
         O1gQ==
X-Received: by 10.194.83.66 with SMTP id o2mr60065600wjy.55.1427690143062;
        Sun, 29 Mar 2015 21:35:43 -0700 (PDT)
Message-ID: <20150330043541.GA2618@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Mon, 30 Mar 2015 06:35:41 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: DBD-Firebird: Buffer Overflow in dbdimp.c
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

A buffer overflow has been fixed in DBD-Firebird, a DBI driver for
Firebird RDBMS server, in version 1.19:

 [1] https://metacpan.org/source/DAM/DBD-Firebird-1.19/Changes
 [2] https://bugs.debian.org/780925

Could you please assign a CVE for this issue?

Regards,
Salvatore
