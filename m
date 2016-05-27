X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1369" "Friday" "27" "May" "2016" "16:17:33" "+0100" "Keith W" "keith.wall@gmail.com" "<CAFEMS4tXDKYxKVMmU0zTb_7uzduoUS4_RePnUwz1tj+GQLNw5Q@mail.gmail.com>" "42" "[oss-security] [CVE-2016-4432] Apache Qpid Java Broker - authentication bypass" nil nil nil "5" "2016052715:17:33" "[oss-security] [CVE-2016-4432] Apache Qpid Java Broker - authentication bypass" (number mark "U       keith.wall@g May 27   42/1369  " thread-indent "\"[oss-security] [CVE-2016-4432] Apache Qpid Java Broker - authentication bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11940 invoked by uid 550); 27 May 2016 15:18:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11543 invoked from network); 27 May 2016 15:17:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:date:message-id:subject:from:to;
        bh=1crnYb5c9irryVOCUIbpzuCDZDgvhXTohS4GndcTj40=;
        b=ijbDnA/ut1qrOOFgm+G65EPYLS0k3mqlNe9KmWsF6fYWeqvqq4UdIrpGAbkxajBLVW
         kO5TxMzKzmSb1nGlnFFaJ1DnR5gHDxVODI2xCuXKgfOGpt3jkUQeqZYXVjyDWhrIdm3u
         /CSSzgrkE/uG+/7ol07tBIqEwAU+Y/Og3BsyPzyAq5qUhNAb5KkUCD8jH5KJSVKZ2nDD
         J1jOvM/AOeiIWeVfV1rY5zR7MPLU0o38vFWu5DlVdyAgDkPL52Tc2VaV0HdL8JbFnwlq
         FpFqLumdeTUpNGEMfTNMD2+tN/BLjbLMXScdRXSijstEBrdYYAgPK+ZNR7nvLfMrbdzV
         Z0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:date:message-id:subject
         :from:to;
        bh=1crnYb5c9irryVOCUIbpzuCDZDgvhXTohS4GndcTj40=;
        b=T0UEv7JHHa01mje2VhLl79W5OHtkPZkb2gVKy01CdH+aoyxgpzOBzctXWAiQw/sjmL
         FVlvspK2KISiEvlvM/80Zu6PHC9V1lZJNX/6bMsslofGSuCbsdKZUpTqC1DgGRnuBH9u
         NzQ8sG/7fx1XTxLoh8a4Ahv4zFxpYorGmQoaG8btS/0o2Kr3pJ12dxDhcXO37sqwu7XT
         qhVWiwMBRrMV6dbcTW9i5BznmCFFJYaYBWRT4C1zVmNJeUMZ6+TQN7Qkid8f+uKMDJyr
         cnoGTQXZMaei39GDePDoyIizX0aRQtEfLV1E9LSktUXgpHGsIlnpuTzmXLBcUH+Xkhby
         m9KQ==
X-Gm-Message-State: ALyK8tJ5jkfct5h/Bi8/7MEKm7NqdbOl5i/cpU+fiXtP0AWxQhT2RuN7/2dZKdHHItmEj6D1jVMDCZAbOL7LQQ==
MIME-Version: 1.0
X-Received: by 10.55.176.133 with SMTP id z127mr14712921qke.128.1464362253335;
 Fri, 27 May 2016 08:17:33 -0700 (PDT)
Date: Fri, 27 May 2016 16:17:33 +0100
Message-ID: <CAFEMS4tXDKYxKVMmU0zTb_7uzduoUS4_RePnUwz1tj+GQLNw5Q@mail.gmail.com>
From: Keith W <keith.wall@gmail.com>
To: "users@qpid.apache.org" <users@qpid.apache.org>, "dev@qpid.apache.org" <dev@qpid.apache.org>, 
	"security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] [CVE-2016-4432] Apache Qpid Java Broker - authentication bypass

[CVE-2016-4432] Apache Qpid Java Broker - authentication bypass

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Qpid Java Broker versions 6.0.2 and earlier

Description:

The code responsible for handling incoming AMQP 0-8, 0-9, 0-91, and
0-10 connections contains a flaw that allows authentication to be
bypassed.  An remote attacker can exploit this vulnerability to
perform actions, without the need to specify valid credentials.  For
instance, unauthorised messages could be injected or messages stolen.

The vulnerability cannot be exploited if the Access Control List (ACL)
feature is enabled AND access to all virtual hosts controlled.

The vulnerability does not apply to the Broker's AMQP 1.0 support.

The vulnerability does not apply if the Broker is configured to
require SSL client authentication for all messaging connections.

Resolution:

Users should upgrade the Qpid Java Broker to version 6.0.3 or later
(recommended).

Mitigation:

If upgrading is not possible, the vulnerability can be mitigated using
an ACL file containing "ACCESS VIRTUALHOST" clauses that white-lists
user access to all virtualhosts.

If AMQP 0-8, 0-9, 0-91, and 0-10 support is not required, the
vulnerability can also be mitigated by turning off these protocols at
the Port level.

References:

https://issues.apache.org/jira/browse/QPID-7257
