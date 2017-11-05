X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["487" "Sunday" "5" "November" "2017" "17:01:41" "+0200" "Tomer Brisker" "tbrisker@redhat.com" "<CAE=eJscBcsPYzh61Cz8Pp-b9T_wiDbHykG=NCUvD8sQ8+vdFrA@mail.gmail.com>" "14" "[oss-security] Foreman 1.2+ stored XSS in fact charts" nil nil nil "11" "2017110515:01:41" "[oss-security] Foreman 1.2+ stored XSS in fact charts" (number mark "U       tbrisker@red Nov  5   14/487   " thread-indent "\"[oss-security] Foreman 1.2+ stored XSS in fact charts\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1793 invoked by uid 550); 5 Nov 2017 15:21:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12220 invoked from network); 5 Nov 2017 15:02:33 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=uXFrA1FaEMj2H5/VuJ/48JNkxPxZ9hLyGbjYStvtOiY=;
        b=g6oonj8ccUHqMcHG/HaLSN9CzsQDUMSimW303ACcspQl3DUsT02uBvN6HwniNhO6b2
         hBjkKBrbYwSWfSAEn+2QWoT+OS3zltr+LRb+iDfAZMdAIa7CrDhXMXrgX6JpK3w6Z+0h
         vK+w2PYSXqDDZGJXzuJSzUOUpcmVuTBfEJFF/6YmuHeBJlL1yLEUAxm9yEAuU6tpMe0c
         oo/hzeazJEyAWLd1j6ZXCLrEMctwJvBdTJIAeL3da3B58u3rdv+BcFNahM9CR+RO+ihk
         4qaDJ6rjbk6wJE3pJxmvdVZHwyYgdDNHP+MbZTswklS+ZqpYRSJo2PUGhEWDoOfnseYl
         iiSg==
X-Gm-Message-State: AJaThX45MybX+G31BXFK6aZWOv7kbrugx2Vb7xw7tbWQ9tRpkXgws2mJ
	CZW4neZeBOSTnoBOHTvJopuouqGGqjoXInI/60l/C5VE
X-Google-Smtp-Source: ABhQp+SUf8ukC/mUOTp4vXRqrbFEDPxGUHy2YTEfn8IhjdT3xTZKjBmLWzbWjIkCwSHxYWbsTfPP5q6MLWE+8MfFnPQ=
X-Received: by 10.36.9.144 with SMTP id 138mr6279661itm.106.1509894141759;
 Sun, 05 Nov 2017 07:02:21 -0800 (PST)
MIME-Version: 1.0
From: Tomer Brisker <tbrisker@redhat.com>
Date: Sun, 5 Nov 2017 17:01:41 +0200
Message-ID: <CAE=eJscBcsPYzh61Cz8Pp-b9T_wiDbHykG=NCUvD8sQ8+vdFrA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Foreman 1.2+ stored XSS in fact charts

CVE-2017-15100: Facts reported by hosts to Foreman containing HTML are
not properly escaped on fact charts in the facts page, statistics
page, and trends page when hovering over the chart with the mouse.

Affects Foreman 1.2 and higher.

Patch available at https://github.com/theforeman/foreman/pull/4967
Fix will be release in Foreman 1.16.0 (to be released).
For more information see: http://projects.theforeman.org/issues/21519

-- 
Have a nice day,
Tomer Brisker
Red Hat Engineering
