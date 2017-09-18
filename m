X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1069" "Monday" "18" "September" "2017" "10:45:14" "-0700" "Shalin Shekhar Mangar" "shalin@apache.org" "<CAOOKt53_E7=PL=drJhbQ3ar8prnWccxpVrq6dHgXnOwQL7NjLQ@mail.gmail.com>" "40" "[oss-security] CVE-2017-9803: Security vulnerability in kerberos delegation token functionality" nil nil nil "9" "2017091817:45:14" "[oss-security] CVE-2017-9803: Security vulnerability in kerberos delegation token functionality" (number mark "U       shalin@apach Sep 18   40/1069  " thread-indent "\"[oss-security] CVE-2017-9803: Security vulnerability in kerberos delegation token functionality\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20115 invoked by uid 550); 18 Sep 2017 17:58:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12149 invoked from network); 18 Sep 2017 17:45:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=9ybjrgCPwuIFGbtYbySYCFhQVcI2saG5FXZv+PXGS7g=;
        b=C4j+C1J2TCcmo9t1BGK5yNtvoeVWvjkVtkbk/oyCzGHCYWpsVhZjO9FuZ9QZ3bMo2t
         V47czUKgq4ghQ4USVidKuObZEH2bGPJ29S3ThVN6JrJytqzEjXPqNDc37qCyztCcxmUr
         e7pX+OqDfB4+1HYypFim+2S0WvhFuc6bP275h2ewOsKYOZmnDCREyok82fVIZ4lrpWqh
         MCblEczkhXwqguy8zxB4KCCB/hQH366EED3Qov01ezys8NHwBG+FxAdAVwQRvUvUWQxe
         iCf9dOwHv5WF1wYdIExWbJXyTeK4a5PdaGJ+inYmentiXCBajtWZ0NtGkLt1YIV44Y5D
         sB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=9ybjrgCPwuIFGbtYbySYCFhQVcI2saG5FXZv+PXGS7g=;
        b=PTVLrE7r0JgT1eSAzDlCq3T5j4Zr1exkICM83DO/VXMHmR8mzUyGExSs9dGdtHN02P
         oJmJcjdVHlDmWw1Q+yZmAYnOK2WIWNXYq3WxjzqF2VS6hltgpa6RMI7tKqDzxI9PUqYG
         0w++ovKebdY+90k958m5nrT1xSEVMeRlhpSLY6H08R8cLW4v5dr1bI4ykKnpBEVT43GK
         x0rXjhdYVTi4AUHoAbxkK6i00dnfRVWzLxCcPGgsVWmNrUOILzROpLIWC3wAoVQ+PeFC
         NSA95OMnH5iHAzFetFe/42ZDqdvNwVuro9QJS5J75ytaCcxmE27WUW3N+rjnVJhuxDWC
         iq2Q==
X-Gm-Message-State: AHPjjUgknVlls6u1a0IwBosyYSgs554lYIzd7H6VO/DLO5BWRan8cn9c
	WaklXOhoK4/L3xyJOAH42SiDub4le9QnZmdco1BdVBW2
X-Google-Smtp-Source: AOwi7QAfXGH/sjsXDuvwfr6SYtMekbp25CSrayRBn3pIK2/FeY6Pv75HI2iWcIEDK5NHnAOTDdC1+aDMkCh7dLfAQ1g=
X-Received: by 10.107.55.8 with SMTP id e8mr23297022ioa.166.1505756715398;
 Mon, 18 Sep 2017 10:45:15 -0700 (PDT)
MIME-Version: 1.0
Sender: shalinmangar@gmail.com
From: Shalin Shekhar Mangar <shalin@apache.org>
Date: Mon, 18 Sep 2017 10:45:14 -0700
X-Google-Sender-Auth: zQU9dNFDB21vRnnBNs8aCZZ47ss
Message-ID: <CAOOKt53_E7=PL=drJhbQ3ar8prnWccxpVrq6dHgXnOwQL7NjLQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-9803: Security vulnerability in kerberos delegation token functionality

CVE-2017-9803: Security vulnerability in kerberos delegation token functionality

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Solr 6.2.0 to 6.6.0

Description:

Solr's Kerberos plugin can be configured to use delegation tokens,
which allows an application to reuse the authentication of an end-user
or another application.
There are two issues with this functionality (when using
SecurityAwareZkACLProvider type of ACL provider e.g.
SaslZkACLProvider),

Firstly, access to the security configuration can be leaked to users
other than the solr super user. Secondly, malicious users can exploit
this leaked configuration for privilege escalation to further
expose/modify private data and/or disrupt operations in the Solr
cluster.

The vulnerability is fixed from Solr 6.6.1 onwards.

Mitigation:
6.x users should upgrade to 6.6.1

Credit:
This issue was discovered by Hrishikesh Gadre of Cloudera Inc.

References:
https://issues.apache.org/jira/browse/SOLR-11184
https://wiki.apache.org/solr/SolrSecurity


-- 
The Lucene PMC
