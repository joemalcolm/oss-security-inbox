X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["820" "Thursday" "13" "August" "2015" "15:00:35" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1O8VjFrbhFDW73aeoyOrpoMYp22A=ExDvXtWG1hpTPgQ@mail.gmail.com>" "25" "[oss-security] Audit: log terminal emulator escape sequences handling CVE-2015-5186" nil nil nil "8" "2015081321:00:35" "[oss-security] Audit: log terminal emulator escape sequences handling CVE-2015-5186" (number mark "        kseifried@re Aug 13   25/820   " thread-indent "\"[oss-security] Audit: log terminal emulator escape sequences handling CVE-2015-5186\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6131 invoked by uid 550); 13 Aug 2015 21:00:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6110 invoked from network); 13 Aug 2015 21:00:47 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=e16H4zoTC9zeONAipwQO7+f9+RXeWWUgI6tp+tNzpx8=;
        b=Km5J9ra+qUyTY1ckaEoWPqfZ7Uwyt8fDUfKjRyVQB7qtTL7IIiFymblWwZ4Di3zing
         0yekHJwVGSnYHJhsQ7VxDUQBAuV4UQ/ypuQjigyXZjhyzM7SjpO1QhTPIYkEZ6gEElJk
         0MFnpwMfTmsuZocKkxNOnsidt1swTu+uz4HZIVokuxnICk/+34v32UWP0Ou57XSYHZh8
         xCah96ZCR/mWHH2f/9w5yrxCZtUkxto3XS65Sh9zfrvJg5cPLQtZ3fs3twOa299Pd+Yp
         T+CwlBWx41lqG6X6v5rbhvs6tFsO9upaJqPBUfmPOlmTJKKLGWej2KIY2q0gzfMedjqF
         SpMQ==
X-Gm-Message-State: ALoCoQkeA29XD12nBRm/5Vt9tQOhp6UWJ2kxnp7h/WlvZAxI5HK/gkKi/aTjqWjroeO/f3a7+83t
MIME-Version: 1.0
X-Received: by 10.170.41.144 with SMTP id 138mr40214409ykj.45.1439499635851;
 Thu, 13 Aug 2015 14:00:35 -0700 (PDT)
Message-ID: <CANO=Ty1O8VjFrbhFDW73aeoyOrpoMYp22A=ExDvXtWG1hpTPgQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1137d4427341fc051d37a01a
Date: Thu, 13 Aug 2015 15:00:35 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Audit: log terminal emulator escape sequences handling CVE-2015-5186
To: oss-security <oss-security@lists.openwall.com>

--001a1137d4427341fc051d37a01a
Content-Type: text/plain; charset=UTF-8

Steve Grubb of Red Hat reports:

When auditing the filesystem the names of files are logged. These filenames
can contain escape sequences, when viewed using the ausearch programs "-i"
option for example this can result in the escape sequences being processed
unsafely by the terminal program being used to view the data.

This has been corrected upstream with the following commit:
https://fedorahosted.org/audit/changeset/1122

Easy workaround: don't use really old terminals/rxvt/etc that are
vulnerable to escape sequence handling issues.


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1137d4427341fc051d37a01a--
