X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["334" "Monday" "30" "March" "2015" "06:58:01" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150330045801.GA6621@lorien.valinor.li>" "11" "[oss-security] CVE Request: ikiwiki: cross-site scripting via openid_identifier" nil nil nil "3" "2015033004:58:01" "[oss-security] CVE Request: ikiwiki: cross-site scripting via openid_identifier" (number mark "        carnil@debia Mar 30   11/334   " thread-indent "\"[oss-security] CVE Request: ikiwiki: cross-site scripting via openid_identifier\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9561 invoked by uid 550); 30 Mar 2015 04:58:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9543 invoked from network); 30 Mar 2015 04:58:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=htuzaKD4PY9DRVbm1dKPdL1RHZ7VxaShELn7t0UPEzQ=;
        b=PPMANe1aJIejWry0mlQAA3IEofjtBBoDxOmhfA5MIQGideuUgZ3nBzdAg0QhG0qe/4
         HCX80z5UQTkn3fDnoJXgsxdj4Z2eJWr14lhS0WLvu+6XWErUvnrwNB73mGltGoNX8InU
         +pFpBN/EjQX1Wk118uQjNbMRd2t3b7t92Tx0zdblP+vcehEbrv+JDOkNIup6KM1dCAxc
         eXVkLMvJ+ZfmvlRzG27PQxxvBAj13ikOUVWytDo/iHvx+fLz+D0KPweP+7FD+TaLOZhw
         ZRTijCKiOe0244QEEgM0Uqxe7YVlt5j9fEsLaXMa7W7+bnXV42x6EjLnUDAJsXRLAiY6
         tyOA==
X-Received: by 10.180.13.145 with SMTP id h17mr18677991wic.38.1427691482629;
        Sun, 29 Mar 2015 21:58:02 -0700 (PDT)
Message-ID: <20150330045801.GA6621@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Mon, 30 Mar 2015 06:58:01 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: ikiwiki: cross-site scripting via openid_identifier
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

A cross-site scripting vulnerability via openid_identifier was
reported in the Debian BTS at [1]. Upstream fix is at [2]. Could a CVE
be assigned to this issue?

 [1] https://bugs.debian.org/781483
 [2] http://source.ikiwiki.branchable.com/?p=source.git;a=commitdiff;h=18dfba868fe2fb9c64706b2123eb0b3a3ce66a77

Regards,
Salvatore
