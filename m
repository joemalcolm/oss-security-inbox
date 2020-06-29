X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3987" "Monday" "29" "June" "2020" "17:05:08" "-0400" "Dennis Goodlett" "dennis@hurricanelabs.com" "<20200629210508.GB3565@localhost.localdomain>" "107" "[oss-security] default behavior in unzip more dangerous then -^" nil nil nil "6" "2020062921:05:08" "[oss-security] default behavior in unzip more dangerous then -^" (number mark "U       dennis@hurri Jun 29  107/3987  " thread-indent "\"[oss-security] default behavior in unzip more dangerous then -^\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] default behavior in unzip more dangerous then -^" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16260 invoked by uid 550); 30 Jun 2020 07:14:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26329 invoked from network); 29 Jun 2020 21:05:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hurricanelabs.com; s=hurricane;
        h=date:from:to:subject:message-id:mime-version;
        bh=2fdkCwDjrSbiR3drdSsqxqlQvHInwiHJgcTSNMkBOpU=;
        b=kI7jAUgYaHPAjWoeatCS5aralGf8ObNg6ljpn5rQ6g5mePLjYLX6Qr9r2ggkW+pcXO
         Gn/o2yqheqBX7Zahk+Eb4ZuyBOor5yHTS3J2PPN+6fFiA1RMe+JTFMzOnzLja/b4vtWP
         d53EmCVU5ltTaGDccL20Zkljgq88YqXK8HhqE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
        bh=2fdkCwDjrSbiR3drdSsqxqlQvHInwiHJgcTSNMkBOpU=;
        b=c9FTkZiyVZq3QgFD3ebeDLNneBl5m9xwxl86ifm8MDmP7G5L4yv/Ydf2V9mSf49txk
         8iT2oSxmypzSZ4A/XEP0tZ6m8Ibpb9pcYpqczYVoxmt3/+FRPl+opeHgDsJOeNuvMz7O
         ATs/Ot6KubtYhTr6uyhkH2ZTNLpYv9/iayPSMFvDG2qQtNy0d1WBZyQ4rLGlA6yiyGLQ
         ZfyrS2BBegv7CdwDl5SEMjMasPJ11nVwQtB6Jd+sYkGsds81QpYsEUsu66YYkWYml0hs
         +L0AFnGZQCbOLtz7YlnC+dEWYNb5Hcq2WjiE4c4EvrsOXCqF+NMYNh8+VNSMISu/k6PA
         lAVg==
X-Gm-Message-State: AOAM532sOPwIkFSgvmotY7lXiXyuynqrDUXELMePF/BPieYxPhJ4wsuO
	LEpyJWEHSdOwtXpyHgeXv88FobsP6XblaBdqmnQSluTom/naXLPboQuJ/Fe9QLu9g9UY/x97ZTC
	A2q7B3tFgvZ3iDjARds1AJOZu1riFiXss5vkUEYczCFSme5OycojmsptklG0UWnC5pScyMrenSr
	zK7E0Y8iBE
X-Google-Smtp-Source: ABdhPJynOhZUYnwq5zh02qOk3gXbe14D93IH1/zkRs+p+QvpeJIKQKBwx2ZR9OSDcZ4v9Dgo95u3pg==
X-Received: by 2002:aca:efc1:: with SMTP id n184mr13756287oih.133.1593464711876;
        Mon, 29 Jun 2020 14:05:11 -0700 (PDT)
Date: Mon, 29 Jun 2020 17:05:08 -0400
From: Dennis Goodlett <dennis@hurricanelabs.com>
To: oss-security@lists.openwall.com
Message-ID: <20200629210508.GB3565@localhost.localdomain>
MIME-Version: 1.0
X-Mailer: Gandi Notification Mailer v2.7.0.7
Content-Type: multipart/mixed; boundary="00000000000023f25205a93f6a7f"
Subject: [oss-security] default behavior in unzip more dangerous then -^

--00000000000023f25205a93f6a7f
Content-Type: text/plain; charset="ISO-8859-1"
Content-Disposition: inline

I want to bring attention to default behavior of unzip on Linux. I
consider its current behavior unexpected and potentially dangerous.

# Unzip without -^ argument
By default unzip removes special characters from file names. This can
result in files being renamed or overwritten. In some circumstances this could
result in remote code execution.

Consider the case of a LAMP server that prevents users from uploading
files with a ".php" extension. If the system administrator restores or
refreshes the directory with unzip, he needs to use the "-^" flag to
keep from creating a ".php" file. See the following example:

```
$ ls uploads/ |grep "php" 		#### no php files in uploads
$ zip ./z.zip ./uploads/*
  adding: uploads/index.^[p^[h^[p (stored 0%)
$ unzip z.zip
Archive:  z.zip
 extracting: uploads/index.php
$ ls uploads/ |grep "php" 		#### unzip created index.php
index.php
```

Another example shows that files can be overwritten. While this example uses
"-f", the results would be the same without "-f" due to the order of the files.

```
$ cat uploads/old_file
OLD
$ zip z.zip uploads/*
adding: uploads/old_file (stored 0%)
adding: uploads/old_file^[ (stored 0%)
$ unzip -fo z.zip
Archive:  z.zip
extracting: uploads/old_file
$ cat uploads/old_file
NEW INJECTED
```

# My Opinion
I consider the file name "/e\x1btc/\x1bshadow" dangerous because some program
might mishandle the name and overwrite "/etc/shadow". The unzip utility agrees
so the default behavior will change "/e\x1btc/\x1bshadow" into "/etc/shadow".

# Potential Changes/fixes
Personally, I would prefer unzip to act like 7z and just extract the given name
without changes. Just updating unzip this way could cause problems for some
people that rely on the sanitization behavior.

A better solution would be to skip the extraction of files that have special
characters in their name. This is the current philosophy when encountering
directory traversal.

# Thank You
Thanks to Seth Arnold from Ubuntu's security team for pointing out the
"-^" argument to me.

-- 
Dennis Goodlett
Hurricane Labs
Cell: (216) 218-1372
GIT: https://github.com/swoops
http://hurricanelabs.com (@hurricanelabs)
EOF

-- 



This email and any files transmitted with it are confidential and 
intended solely for the use of the individual or entity to whom they are 
addressed. If you have received this email in error please notify the 
system manager. This message contains confidential information and is 
intended only for the individual named. If you are not the named addressee 
you should not disseminate, distribute or copy this e-mail. Please notify 
the sender immediately by e-mail if you have received this e-mail by 
mistake and delete this e-mail from your system. If you are not the 
intended recipient you are notified that disclosing, copying, distributing 
or taking any action in reliance on the contents of this information is 
strictly prohibited.

--00000000000023f25205a93f6a7f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEECliHOTWH+bAxWsQwYd2/apfIeDkFAl76V38ACgkQYd2/apfI
eDnfARAAgYMP64rHeeS1teXxBS69PEhfEJ8XjJnMwRdJFnloQnfQ5HK+onwq6N0F
CDYOstYyjgY0NmVLsyAilO5tOzAEIAbKl+3Mkav3DOP0I/1sQUC712lvokCFT/Jf
M9btoVaR01z+V+B9aIbBzWB4EVOMlI9VRL4U62SituYJXVH0R6n8v6UAIHDm/OEj
0Jg2267nfJdy0W/wyalIvzqFhy+MpgavOv/70SGmiYI3m/yGxfp+mX6fZWhNRri/
9rLsalmk50qL3PlLgjX5Y+QULSLVpHawtKQB+/UBnqJZwIDiaPd0tXIYNmCpQiK+
TZWNcTXF3ud7dbkN7LVfeH5daG+AATfwTrU9kRMDrAmrp/Lm10EX72x4HV8TGlSf
J/31cubqDiL9MBWxV9M9byGOGDx62rXAnXxmdEykqGkWIIJ4fIaqPD6dMoWFp4IJ
dRUWbhZQHgU7FafGe/+SwpiZPfisFktoFt8sUdzZc4CkNh0QkBAJ/u91D4Wss3w+
aoLgCXl+Z2CJ3fnF6TDi2giUM4qoMiN/PcCNjHHBg3oInKO5OjaSnth8m2OEgJbn
hvSjAMev1GXWXSETUnAF9vXx9pPWVhYRUWAh90xo8Lrx1Cao/aAYat0kwQAs/bFC
mt9qiEP4Mg+KVZHSv6jT1pzV4pRl6cOuhIIPE4IU0Mj0fjNsP3E=
=J0qM
-----END PGP SIGNATURE-----

--00000000000023f25205a93f6a7f--
