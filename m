X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1054" "Tuesday" "18" "April" "2017" "09:18:04" "+0100" "Simon Steiner" "simonsteiner1984@gmail.com" "<017201d2b81c$4defec50$e9cfc4f0$@gmail.com>" "35" "[oss-security] [CVE-2017-5661] Apache XML Graphics FOP information disclosure vulnerability" nil nil nil "4" "2017041808:18:04" "[oss-security] [CVE-2017-5661] Apache XML Graphics FOP information disclosure vulnerability" (number mark "U       simonsteiner Apr 18   35/1054  " thread-indent "\"[oss-security] [CVE-2017-5661] Apache XML Graphics FOP information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11717 invoked by uid 550); 18 Apr 2017 11:58:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3588 invoked from network); 18 Apr 2017 08:18:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language;
        bh=Ialca0EhX1ecREs2GgYD4AZbmWq/M/8wP9nk8cnDEoU=;
        b=VN7atWik1v22Wtd+GhuqgTEbs2GUpu+Bm5J2HkGoZTgDGdBlEIPdQwxiHAPQT8FGdH
         yHi7rg40wzzBUWHRYqqBWawsVcoFGSrm0L1VxSAcXcgIXVKcBZZK4vzTwGi1+V3b6EnH
         Ii0NI76X+YnKGJJnwdzxVwdOLMX/zTSWc23w8rawGLE+QoAykP9jqxuET7otUByQwkmt
         +yBgg3L5KqvDuXSikzN6HcWrIYPESKjs0CIGk23IBwVe7S9PjiFOocRRvNX7yku7diSo
         NGXCVlEiHWJDkAHOsGYdQ932YzLL6Xdi0flb7CDZ0aOhh83267DCMnPJZD3Y5Xe+hBeQ
         ASUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language;
        bh=Ialca0EhX1ecREs2GgYD4AZbmWq/M/8wP9nk8cnDEoU=;
        b=DOcst+I/1/suhRbYUcFPclj4+y+JdAWqyu5c4hQ9ZvCLgwJGiG5vsU6TmufW0O6fyg
         p2EVYf2lMxyvZttjYvaeQ3PtPACA0suGPRvA/xRyA4RlGTb43CnaxJxDnkfsFIfBESN1
         Mhl+dGwyAcmBHx/3d73PB2L/md9CdEkEsXCy616owwL7BgygzyIgylj4bQ/bfDKQa2R6
         cA2Q4vKFMhoIpWOyzNu2sE6K/ypE5JJiS+A6Do78EHKzePRvYNGeKYxwXYFJLISMrCc9
         y4bZa5D/0ZhRV40dxawwpCzfWwsdrp8MBxbw1MrB/wFEuWvnnZ4W+CgqFAGCPhRr2Jse
         LYBg==
X-Gm-Message-State: AN3rC/76BdulTp9+V8xGG0eqKC3/CRxIk6C7ziBhIqGRRXIuOjlZcfkI
	3YvXetkx98gYDQ==
X-Received: by 10.28.57.138 with SMTP id g132mr11451425wma.92.1492503485636;
        Tue, 18 Apr 2017 01:18:05 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <general@xmlgraphics.apache.org>,
	<fop-users@xmlgraphics.apache.org>,
	<fop-dev@xmlgraphics.apache.org>,
	<oss-security@lists.openwall.com>,
	<bugtraq@securityfocus.com>
Cc: "'Pierre Ernst'" <pernst@salesforce.com>
Date: Tue, 18 Apr 2017 09:18:04 +0100
Message-ID: <017201d2b81c$4defec50$e9cfc4f0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdK4HElrAiCZPDkMRBqXXf2Tt3eekQ==
Content-Language: en-gb
Subject: [oss-security] [CVE-2017-5661] Apache XML Graphics FOP information disclosure vulnerability

CVE-2017-5661:
        Apache XML Graphics FOP information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        FOP 1.0 - 2.1

Description:
        Files lying on the filesystem of the server which uses batik can
        be revealed to arbitrary users who send maliciously formed SVG
        files. The file types that can be shown depend on the user context
        in which the exploitable application is running. If the user is root
        a full compromise of the server--including confidential or sensitive
        files--would be possible.

        XXE can also be used to attack the availability of the server
        via denial of service as the references within a xml document
        can trivially trigger an amplification attack.

Mitigation:
        Users should upgrade to FOP 2.2+

Credit:
        This issue was independently reported by Pierre Ernst at Salesforce.

References:
        http://xmlgraphics.apache.org/security.html

The Apache XML Graphics team.

