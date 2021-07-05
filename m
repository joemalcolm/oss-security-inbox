X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["790" "Monday" "5" "July" "2021" "15:30:14" "-0700" "Richard Cochran" "richardcochran@gmail.com" nil "31" "[oss-security] linuxptp: Fixes published for CVE-2021-3570 and CVE-2021-3571" nil nil nil "7" nil nil (number mark "U       richardcochr Jul  5   31/790   " thread-indent "\"[oss-security] linuxptp: Fixes published for CVE-2021-3570 and CVE-2021-3571\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] linuxptp: Fixes published for CVE-2021-3570 and CVE-2021-3571" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16316 invoked by uid 550); 6 Jul 2021 07:03:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26347 invoked from network); 5 Jul 2021 22:30:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xBuR2Zek9w7bjTn7dsRb0y5jfOy+ul9pVKziB9YgqI4=;
        b=ujtDM4GeSXdpcxmiie+6r9K+lpmRAKOrGI3WA4jWJpnsfTUT3QkZs7aB48gUZakcxA
         eJowXNK89ig4LSz6gYuDyhbERp3HIf/r6ep7oWQhgVR2WltIoHx6zIFbaJSbUCxtytuy
         45+2kqoSBq8mBI5Uob2zg9BqdriBN4oNRLOBi6YvvJyBGg1mk3LohHkgTXM7KBM0l3sD
         bwOS/0Fe595xIigirnQZZPny814JLvoIuqs4Xy/ehVwK0IDrPK9+bnKP5SwDV/uWnM54
         i6kCTiYmypFOUQPuoE5knz1eXA1jzBod6BmmeZsDCHMMs8i5odYM7j1hG3dDThEQ5DjM
         eGhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xBuR2Zek9w7bjTn7dsRb0y5jfOy+ul9pVKziB9YgqI4=;
        b=EEed71Mc5IPlf1/WZXZjCOWRn/ulryfmwWxaGdaKW2wJc8WH3JrFtX8nLtwCD4Z6Ko
         MPcmiDMoRAAUWV/QCZGy/FtqbB+P9zc/pilDc3/WauPwq8vIenNeq/MDf9kcWKy+D7Tl
         IZfdF5nZsX5KX1dJdkiPnmw9nLuLpXzNmB0B4oTpfrd5Fjnj2Tjzp+PSexwQFt/pNwe7
         V48V6sjRgWRamJ7iiLKZqW2WO5hFKzom7tXqxq7wBSbSua1OSpSdDL9nwlCAaUozOGmK
         oIr/Apy7y52vvJqDyN2xzr05k7P7QRnQVJ9t0j50xFo2cqE22YSXnGRZu/F4ge2TCv+z
         FmcQ==
X-Gm-Message-State: AOAM533OIol5eGcQpLaIRkfvM5dVt8OZ1mEttOMi9BT2YQn0tvrfdzER
	stbopkuj/mz7xZO/8h4Zqy6fVKj0Ovc=
X-Google-Smtp-Source: ABdhPJzsjgzJvu9UADRwnN85Yca03eigjHFTfZPyLIfd0qSUTbNcgRX+rKCpXR8hvP2hn2Cm/EMlkg==
X-Received: by 2002:a62:1ec4:0:b029:2fb:53cd:1dcb with SMTP id e187-20020a621ec40000b02902fb53cd1dcbmr16836304pfe.16.1625524217649;
        Mon, 05 Jul 2021 15:30:17 -0700 (PDT)
Date: Mon, 5 Jul 2021 15:30:14 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: oss-security@lists.openwall.com
Cc: linuxptp-devel@lists.sourceforge.net,
	linuxptp-users@lists.sourceforge.net
Message-ID: <20210705223014.GA18898@hoboy.vegasvil.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] linuxptp: Fixes published for CVE-2021-3570 and CVE-2021-3571

Dear list,

Now that the embargo period has expired, I published fixes for:

   CVE-2021-3570 linuxptp: missing length check of forwarded messages
   CVE-2021-3571 linuxptp: wrong length of one-step follow-up in transparent clock

The fixes have been published to SourceForge and to GitHub:

   https://sourceforge.net/projects/linuxptp
   https://github.com/richardcochran/linuxptp

The tags with the fixes are as follows:

   v1.5.1
   v1.6.1
   v1.7.1
   v1.8.1
   v1.9.3
   v2.0.1
   v3.1.1

In addition, the head of the master branch (soon to be version 3.2)
also includes the fixes.

Although it is possible to apply the fix to versions 1.2, 1.3, and
1.4, those versions are obsolete and do not pass our CI tests.  For
this reason I decided to withdraw them instead.

Thanks,
Richard
