X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["522" "Sunday" "8" "January" "2017" "09:45:01" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170108084501.ncsnqkhyytpawpbh@eldamar.local>" "16" "[oss-security] CVE Request: icoutils: exploitable crash in wrestool programm" nil nil nil "1" "2017010808:45:01" "[oss-security] CVE Request: icoutils: exploitable crash in wrestool programm" (number mark "U       carnil@debia Jan  8   16/522   " thread-indent "\"[oss-security] CVE Request: icoutils: exploitable crash in wrestool programm\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16348 invoked by uid 550); 8 Jan 2017 08:45:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16324 invoked from network); 8 Jan 2017 08:45:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nhVJIkJx7L3kCxS0M4QkJ1CfnqJP3MhtbC8PM+X5Hb8=;
        b=o+CnnCZM7GwoHoi7Dk5nRrWkOjJH3od+WgNADXmEJvhaD1VhvsW+11wfC1YBnd8l/v
         Q/Jh8UJDdgMMPYbPsd6MH8TDF8QyokoEo79nhG9C8TPgeLrU/TgE8TgcxNfqYTW6JyeV
         1pz1qfaTi56N1K1VJ2v2VUKgPemxJK/ySm84GM5+aiCzdMdI3+OJBUZv43PfTOIdyNjg
         s9H9BA4Yoo2XGJF4drEWb6VdlAez0qazWawo+n5+mSFr5MMtJgFyrCPZCDaKKNNzwjaE
         +PXPAWJ7ZJxaToSfc7T3c2k2p4ioasOFjEjHAfjRd+eyWTJMXVBPbFQ2JgW1NmZr1C6o
         EiBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=nhVJIkJx7L3kCxS0M4QkJ1CfnqJP3MhtbC8PM+X5Hb8=;
        b=NA8yRMs3uF37FdZc3kyKTix6/QWQ81TQ9yeSwrr0N9I+GcBcG06wI6triop3R+YEGe
         kz6hfLEmKY1evjUKjc3B2bWLFL0oPeNcc4zPJJrr8VwHTEd/BhrcMaXM44ufGxGgNcNp
         B2VgkY/6oqhqlqAEJARjgfNPTka7ZckW6NFpXU6zQanj6JdOVDgoo3SCRD5lgVD4qm95
         qNibEldmDFgYkOzrMDO4G135FMIdUsEOw8CXA2zXXoqNWwPpzLJ449bc5oeNBQ2oQ9M9
         RkXfTTmMgp/ynMXEsFlU9X7bNtICE9vb/eRZxQl15hE7lhfOcGvEdMoK/wDp7IrpdB7C
         JxOA==
X-Gm-Message-State: AIkVDXKF6xMIwqy+QVKZA567wDwpP7uSWmP5czkBkrqnOVB/TxDc85b4gsNQIY35fCokVA==
X-Received: by 10.194.200.228 with SMTP id jv4mr60443310wjc.217.1483865102821;
        Sun, 08 Jan 2017 00:45:02 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 8 Jan 2017 09:45:01 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170108084501.ncsnqkhyytpawpbh@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] CVE Request: icoutils: exploitable crash in wrestool programm

Hi

Choongwoo Han reported[0] an exploitable crash in wrestool from the
icoutils[1]. The command line tools is e.g. used in KDE's
metadataparsing, c.f. [2]. A patch is available in the Debian
packaging[3].

Could you please assign a CVE for this issue?

Regards,
Salvatore

 [0] https://bugs.debian.org/850017
 [1] http://www.nongnu.org/icoutils/
 [2] https://codesearch.debian.net/search?q=wrestool&perpkg=1
 [3] https://anonscm.debian.org/git/users/cjwatson/icoutils.git/plain/debian/patches/check-offset-overflow.patch
