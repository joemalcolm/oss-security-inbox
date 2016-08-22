X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["592" "Monday" "22" "August" "2016" "21:54:35" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160822195435.naiv4hyfs6lxwenf@eldamar.local>" "19" "[oss-security] CVE Request: lshell: shell outbreak vulnerabilities via bad syntax parse and multiline commands" nil nil nil "8" "2016082219:54:35" "[oss-security] CVE Request: lshell: shell outbreak vulnerabilities via bad syntax parse and multiline commands" (number mark "U       carnil@debia Aug 22   19/592   " thread-indent "\"[oss-security] CVE Request: lshell: shell outbreak vulnerabilities via bad syntax parse and multiline commands\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17640 invoked by uid 550); 22 Aug 2016 19:54:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17619 invoked from network); 22 Aug 2016 19:54:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VqytjGdiD7g8J8vdacwVaUPZ5rHIF4MiZYgEQsKESzU=;
        b=s+B7vO2Ss/jB1m5QtJikIvCqFfN/BqNLacffieztOJSRWTc8uq1N7+c2V29cOzpTjq
         6dGRgqZq7xltuWlBYiKAvUdOiMgfajeVLzpXxyfnHgg/yKNRXLPlDLowyMRQMmpBNv9w
         GbJNnRhGjpiB3Sg8SICtkuxMHFTR9ISHgMaKvaDBGn3cIMBYRGwRVgaRO7SBeL7WK3tS
         0RYZBGGpe7YboN02IjLBTm1IszPYZCwaR6BOjexuJ48lA/fEOzRRN4YolMuKt/XWGXOo
         ARmGy69QfFsog/oL5kBw+NqHrUoEduGbIQARyg+1UGjXm5RnwdXYZZ2jRTfBEJI5AmPs
         Y0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=VqytjGdiD7g8J8vdacwVaUPZ5rHIF4MiZYgEQsKESzU=;
        b=TsuImqrVwWXuXbWAuKmIw0msXvKOMQZhI7G0awyRJ64kzhZHxM5dXPqXrOGN8mbQXk
         1tXK+HgGCoXnnJaCzT9ol5d1MWXMmV3GMhZnVWjquDO7n4OTydwhci3eyoSUB3V7jcr2
         8hrlU1aNOmGpLXONtQKrV7SZyv8RYN1B8UF3VbxIjdz2ZGbWB4xlk2muNpue9UsvJCpl
         jyMR4ZRax3lAXJc2UaJDYUqc6B+ymuMsVa+GZ7iOQJOSO7hNJ6lJQXTRpz3WmiFFMzTr
         IDPPaNJ6OscvMa27EiMDK0vklnOgQzXbuQpjPecNq+6h6M4aHzgVaHAMnqWLLsiqIE1+
         n8hQ==
X-Gm-Message-State: AEkoouvLWo80ZQR2fwk6uOGxfQMRFhH+AnXg+OqQL9Gcn7pF7xd+dHUDUOIob0CZeSzLDA==
X-Received: by 10.28.32.77 with SMTP id g74mr15952603wmg.45.1471895677351;
        Mon, 22 Aug 2016 12:54:37 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 22 Aug 2016 21:54:35 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160822195435.naiv4hyfs6lxwenf@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-08)
Subject: [oss-security] CVE Request: lshell: shell outbreak vulnerabilities via bad syntax
 parse and multiline commands

Hi

Two shell outbreak vulnerability for lshell, a shell coded in python,
that is intended to restrict a user's environment to only a limited
sets of commands.

1/ Shell outbreak due to bad syntax parse
   - https://github.com/ghantoos/lshell/issues/147
   - https://bugs.debian.org/834949

2/ Shell outbreak with multiline commands
   - https://github.com/ghantoos/lshell/issues/149
   - Fix: https://github.com/ghantoos/lshell/commit/e72dfcd1f258193f9aaea3591ecbdaed207661a0
   - https://bugs.debian.org/834946

Could you please assign two CVEs for those lshell issues?

Regards,
Salvatore
