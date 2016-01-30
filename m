X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["848" "Saturday" "30" "January" "2016" "08:27:10" "+0100" "Claus Ibsen" "claus.ibsen@gmail.com" "<CAGB5yN=VtQWD15+7n9NoVVrJiZdwrvgXhpyU67ir2M78C2HfGw@mail.gmail.com>" "27" "[oss-security] CVE-2015-5344 - Apache Camel medium disclosure vulnerability" nil nil nil "1" "2016013007:27:10" "[oss-security] CVE-2015-5344 - Apache Camel medium disclosure vulnerability" (number mark "U       claus.ibsen@ Jan 30   27/848   " thread-indent "\"[oss-security] CVE-2015-5344 - Apache Camel medium disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19603 invoked by uid 550); 30 Jan 2016 07:45:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13906 invoked from network); 30 Jan 2016 07:27:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=BLBTic08tXkUz+W8Yl35BAa5sebwFnBKlafs/h21pcY=;
        b=FHG9kRevaSdyYjY9oK9asZLtNG2zCoPtnqXvG1sHbS1qfTKEJMZn90IAfXAD5bmCH6
         mwYmZwbOE+UXRXSAg5rv8QIwbqnQ0VWo159Rjz2obA89kXygyEp7XBt6J20fEyJRi+Gd
         cCwHCDD4p6Y1wz16ANooTJK6/vW1WyanN+Lkt+VpSNOcl8Q2qnqM4TVjV6EEivNk0uPj
         fNON1YoodJK0udiT9kjGYnPUb1B+H/vVNmyLrzztlxriRYTYg3Gg7lsO4J4JzMm5vXzT
         bcTksbZUCQITpHlPTHrpIVk2Jpt6F/nA7jtlqz6EonOqIhr3HRTX3srcybUxQkWGcAsJ
         yesQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=BLBTic08tXkUz+W8Yl35BAa5sebwFnBKlafs/h21pcY=;
        b=htTQA7nlrHjxpItpGgA9GGo8kP4EkZdZjfiK4nqSEtMsLU4FyLhU2MnbT5cgzDgpJp
         IyJUrZhgYzxR3bOYCAqr8fB3UopHwFgJTjXuBFPCZ41zxCQp7wMrUOB+8YXH9BlM9Exn
         esr71bfLFQkyc3VpIDjXGJRnOmtoxd+N/YrqU/1SZCywJ1hDxc46rGe8VJ+AWBlsg7mi
         nh5rTjD0s0pJeoNxfq4ztS3nn5wMqm/Ll1Wiz1+JJ46u3qd3MAQR4tDUJMoGjgTxCkQn
         7P/UdOyjeEW5pvCu098tozhSBcTrtYmPqIZJqGVhzrpCHH1bkQ3C+Z6Yr65YCzPI0uRu
         0+Rg==
X-Gm-Message-State: AG10YOQtJFbT0rZhIlzLhF7p95DRNaqaCxt/2rCgFLY686mg4vSErG9mt66/2UBHBFTOlCMqRSidZiqu9NXq4g==
X-Received: by 10.107.159.7 with SMTP id i7mr12898427ioe.29.1454138849749;
 Fri, 29 Jan 2016 23:27:29 -0800 (PST)
MIME-Version: 1.0
From: Claus Ibsen <claus.ibsen@gmail.com>
Date: Sat, 30 Jan 2016 08:27:10 +0100
Message-ID: <CAGB5yN=VtQWD15+7n9NoVVrJiZdwrvgXhpyU67ir2M78C2HfGw@mail.gmail.com>
To: "users@camel.apache.org" <users@camel.apache.org>, dev <dev@camel.apache.org>, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	security <security@apache.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2015-5344 - Apache Camel medium disclosure vulnerability

Apache Camel's XStream usage is vulnerable to Remote Code Execution attacks

Apache Camel's camel-xstream component is vulnerable to Java object
de-serialisation vulnerability.
Such as de-serializing untrusted data can lead to security flaws as
demonstrated in various similar reports about Java de-serialization
issues.

Please study this security vulnerability carefully!
CVE-2015-5344 - [1]

You can download the fixed Apache Camel 2.15.x and 2.16.x version from
the Apache mirrors [2] or from the Central Maven repository.

[1] http://camel.apache.org/security-advisories.data/CVE-2015-5344.txt.asc?version=1&modificationDate=1454056803464&api=v2
[2] http://camel.apache.org/download


On behalf of the Camel PMC,
Claus Ibsen


-- 
Claus Ibsen
-----------------
http://davsclaus.com @davsclaus
Camel in Action 2: https://www.manning.com/ibsen2
