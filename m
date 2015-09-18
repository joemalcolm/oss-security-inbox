X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["648" "Friday" "18" "September" "2015" "10:58:56" "+1000" "David Black" "dblack@atlassian.com" "<CAAYo3BtL5AV6HfKow3XK7ZFx9mFjCvkPJ=zcNUcUnL13sFqfug@mail.gmail.com>" "15" "[oss-security] CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection." nil nil nil "9" "2015091800:58:56" "[oss-security] CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection." (number mark "U       dblack@atlas Sep 18   15/648   " thread-indent "\"[oss-security] CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11966 invoked by uid 550); 18 Sep 2015 01:03:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17944 invoked from network); 18 Sep 2015 00:59:28 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=1hkNUxBBn9VxVpcaGS5Fpqyxi3L7W9yeEuG8WTAjGxQ=;
        b=f7IPLH47++ViCxTMYZoir6s6EMuRcn/4XhOIDce9j0oQ1iEgRNGkG7vtpNVr2vUQ+h
         pVrypy6ZhsyVnZNdM6Q/dj36SJRLQ1G7F0ChBGacnwW750Cm25Q7Fst6hA+hqFy4E+rT
         36ggOxMGZgPryIJ/lj3pv1NQQ1nqZLnvDPJC/PbRBPz9G3SiYilvPwRUSeTiy33PnExv
         sLrSDdN7mA8LNFp2YK5xKV+YFkhYNhwn8vEXd9/g1PhrCKxalAst8DI8IWYNioUp4scH
         1FBi3wbjgEClKg8XnQvIIrz23heepL7eYVCpL2OHG9tXAfwU/aLYLugVmY4HkV807OjO
         k3RQ==
X-Gm-Message-State: ALoCoQkxwo6+w1oQ8It5XQVwdAKi2MYJJcLIBt+QPFsH5Wn6kao9UI4PZtkrpKK8TBgCU9q7leDL
X-Received: by 10.60.63.44 with SMTP id d12mr1899841oes.17.1442537955937; Thu,
 17 Sep 2015 17:59:15 -0700 (PDT)
MIME-Version: 1.0
From: David Black <dblack@atlassian.com>
Date: Fri, 18 Sep 2015 10:58:56 +1000
Message-ID: <CAAYo3BtL5AV6HfKow3XK7ZFx9mFjCvkPJ=zcNUcUnL13sFqfug@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection.

ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection
through the username parameter. This issue was reported at
https://github.com/vesse/node-ldapauth-fork/issues/21 and was fixed in
https://github.com/vesse/node-ldapauth-fork/commit/3feea43e243698bcaeffa904a7324f4d96df60e4
. ldapauth-fork version 2.3.3 includes the fix.

Can a CVE be assigned for this issue?

Note: the node-ldapauth project found at
https://github.com/trentm/node-ldapauth, which node-ldapauth-fork was
forked from, is still vulnerable to this issue. I notified the owner
of the node-ldapauth repository but have no heard back.

-- 
David Black / Security Engineer.
