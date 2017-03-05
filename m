X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["734" "Sunday" "5" "March" "2017" "11:52:26" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170305105226.smsiuiqnhkrjnh6j@eldamar.local>" "24" "[oss-security] TeX Live: CVE-2016-10243: whitelists a insecure binary/utility to be run as external program" nil nil nil "3" "2017030510:52:26" "[oss-security] TeX Live: CVE-2016-10243: whitelists a insecure binary/utility to be run as external program" (number mark "U       carnil@debia Mar  5   24/734   " thread-indent "\"[oss-security] TeX Live: CVE-2016-10243: whitelists a insecure binary/utility to be run as external program\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26162 invoked by uid 550); 5 Mar 2017 10:52:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26135 invoked from network); 5 Mar 2017 10:52:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pziHODmnUYC0DqoVwAYmnQo5LqR0bOMX5zGU6Wey1jg=;
        b=E7X+YpH9VdXsKLhBpqCnuQJghFFX/2EBF37yXtuMu47S3UmyM7RwrvfbPYvn9MFkY5
         /D8SnW8t3H6B5NbIgoNpeNUDsra0jnqXHbIqg+CCUqBXK2u5DrDD10egpxplHTqz3vpy
         s7lyilg6swzy6y/FzZ4uEyaBd6jSHqPebsspTcYXZeQx4os2tf6U4teglNOcKaYr8CCJ
         dBahlLzMasR+t7LwEYfxgKrRcSxpSmA3CiNjb4u6L1eEmbcxyqcE2kO8dxRWZN5rTGJp
         ju1cMx0yQz2QQZX5uGNiEmKq5kjZOkYoivjNVp1/UvILkjrQo4UQjeozkqaP+SEbJc5X
         iEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=pziHODmnUYC0DqoVwAYmnQo5LqR0bOMX5zGU6Wey1jg=;
        b=j5BPfVxFZEBcV1yCRYznrIzZL866kmuwrtiC+s8HYhFmKVM1abPKyzaXYwOt0Gh2cy
         ln26SSqCrSLLHSci9JMwBeafvZmPskm3Bn33OWtTDsaIJPUzq3Dci+jVvERMRsecy7XM
         jbDwrZYXI7l/TDpDdSCGU5J/yoUzuEVW5EN/EH+d2woPDiryNAlPQVZT//87SdKsl0Y6
         sFusyEFX13Ld95lJZL0Qdr5ODBnx0fS24mWue3OpG+xXhguWaA4MJgZTSam6YV8ooufA
         +6NFCKNVcHrD1Bd0MCtIAQ5R1In/muUkNHDJMfT3vU1REZy2yv3Q83R6M5QAB5xAb7gM
         gCnw==
X-Gm-Message-State: AMke39nco97pP+xYd+i/ZSK7yIUCLLaIJjrlwnJLbfVMd+rogoV8nwL5ejK/yoOOXeIjZg==
X-Received: by 10.28.14.69 with SMTP id 66mr8231663wmo.27.1488711148787;
        Sun, 05 Mar 2017 02:52:28 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 5 Mar 2017 11:52:26 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170305105226.smsiuiqnhkrjnh6j@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] TeX Live: CVE-2016-10243: whitelists a insecure binary/utility to be
 run as external program

Hi

Via http://cveform.mitre.org/ CVE-2016-10243 was assigned for the
following issue in the TeX Live system:

> The TeX system allows for calling external programs from within the
> TeX source code (called \write18). This has been restricted to a
> small set of programs since a long time ago.
>
> Unfortunately it turned out that one program in the list, mpost
> (also shipped with TeX Live), allows in turn to specify other
> programs to be run, which allows arbitrary code execution when
> compiling a TeX document.

Upstream commit addressing the issue:

https://www.tug.org/svn/texlive?view=revision&revision=42605

Report on the issue:

https://scumjr.github.io/2016/11/28/pwning-coworkers-thanks-to-latex/

Regards,
Salvatore
