X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["578" "Thursday" "23" "March" "2017" "15:57:01" "+0100" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do71TReFYRvbj9isxStB6SOmn1dvrmq=50JwbbyYV_HosQ@mail.gmail.com>" "22" "[oss-security] pcs: CVE-2017-2661 Improper node name field validation when creating clusters leads to XSS" nil nil nil "3" "2017032314:57:01" "[oss-security] pcs: CVE-2017-2661 Improper node name field validation when creating clusters leads to XSS" (number mark "U       cbuissar@red Mar 23   22/578   " thread-indent "\"[oss-security] pcs: CVE-2017-2661 Improper node name field validation when creating clusters leads to XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11900 invoked by uid 550); 23 Mar 2017 14:57:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11875 invoked from network); 23 Mar 2017 14:57:33 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mpwD/BLzliEUgH0vnd9aFWu2EqNNCz7Fcu2GgYqfTmw=;
        b=qnDLU5ARrW9Zfw7kLhAANkiDMRGQzqheJjTwVB3COiqJQvgd2QZfQOtknBBCwr2RCL
         t3TsEs5WXC2gtIsz8DGy0fEvfJYMHQHyaCKEi2V6MPAxPi+uxFcjEUeL8Sd0Z9KQJvtY
         B+vkUBGXVgkNo+a0yZBhqpREy5deKjzvzJdHWtYE1zkgJgv5Ioz+iXgZL6QU6VgVVjnx
         BmjumDBOH3Hv+W+oKoBZCNGCdFAy1EHyVX2+vKX9xWbrEZ8dqSPP8D6Y4tsSbz16mtbK
         i3sHqMGnhwJQvYtqXe70kvSA6MwCSddvp1YgyIkuElKqDZeJC6heUHd8qplo3+dhlrP6
         bYwA==
X-Gm-Message-State: AFeK/H1HP1lmesewmPKa2urwyAlwaDSzkqb7IbiS5D2lJAFrZsi2by3818qKKZUGoxd1Ok46ELdjykIz5ZyAD8Rf
X-Received: by 10.129.29.11 with SMTP id d11mr2061998ywd.228.1490281041978;
 Thu, 23 Mar 2017 07:57:21 -0700 (PDT)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Thu, 23 Mar 2017 15:57:01 +0100
Message-ID: <CAKG8Do71TReFYRvbj9isxStB6SOmn1dvrmq=50JwbbyYV_HosQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11429b821f8c64054b67187d
Subject: [oss-security] pcs: CVE-2017-2661 Improper node name field validation when creating
 clusters leads to XSS

--001a11429b821f8c64054b67187d
Content-Type: text/plain; charset=UTF-8

Hi,

The CVE-2017-2661 has been assigned to the following issue:

Reflected cross-site scripting vulnerability was found in pcs due to
improper validation of Node name field when creating new cluster or adding
existing cluster.

Upstream fix :
* web UI: fixed XSS vulnerability
https://github.com/ClusterLabs/pcs/commit/1874a769b5720ae5430f10c6cedd234430bc703f

Red Hat would like to thank Microsoft for reporting the vulnerability.

-- 
Cedric Buissart,
Product Security

--001a11429b821f8c64054b67187d--
