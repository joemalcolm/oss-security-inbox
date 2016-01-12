X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["542" "Tuesday" "12" "January" "2016" "10:20:59" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3co85-pb-pwfwESMY8To8njpdN+zYrwyHy7P43o8azkA@mail.gmail.com>" "20" "[oss-security] CVE request for Kubernetes api server: patch operation should use patched object to check admission control" nil nil nil "1" "2016011217:20:59" "[oss-security] CVE request for Kubernetes api server: patch operation should use patched object to check admission control" (number mark "U       kseifried@re Jan 12   20/542   " thread-indent "\"[oss-security] CVE request for Kubernetes api server: patch operation should use patched object to check admission control\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3980 invoked by uid 550); 12 Jan 2016 17:21:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3949 invoked from network); 12 Jan 2016 17:21:11 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=NaN+fOHOJBHj2jKpizL5jtIVsrB3BaQp5WrvrsuZkys=;
        b=CL00efSWLa2KCCEHmXDHuRhLZ9w6lkw0WxyTfkRzL0qs1nvnCQh+2AjEPjLeyBxHdp
         Ppf4A1bpzbJpZeB5+Q/8i5lmXenBy8XOYQip6wc9neXDbRGcSrnuRuJpicDDEMgVnm1p
         cpzXux/cjs0VsJ40jxChcNmGwzIj7pUaPuNhqOMyGvo1xt03Ehs1895INa0iUrNYhfbF
         CeyCuN1eaGE7+GnhKWeSq0lElKqmN5WWOCfTy6zAJfmgkySl/LPxArRdKA5YXhT9ABpk
         QZ9oFXcVKiQM/vxZ6Xx8e7WGAvUL6ir4jKvkBzVTPrNCxuTsar1mMZCaoWq2xGVXSsyh
         zWpw==
X-Gm-Message-State: ALoCoQmJhwylsAx3+8NUHcrJgQ/wLQWZrZelt1Al7PpQRRqNdzgsFu0GSfKwhMCzzjU+xVTDS9WqtaayTYALcac2pYJIRjZ7bWmUrIoegyuj3qS4NvaZyck=
MIME-Version: 1.0
X-Received: by 10.129.133.2 with SMTP id v2mr108691048ywf.76.1452619259266;
 Tue, 12 Jan 2016 09:20:59 -0800 (PST)
Date: Tue, 12 Jan 2016 10:20:59 -0700
Message-ID: <CANO=Ty3co85-pb-pwfwESMY8To8njpdN+zYrwyHy7P43o8azkA@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=001a114f1e88f181a1052926461f
Subject: [oss-security] CVE request for Kubernetes api server: patch operation should use
 patched object to check admission control

--001a114f1e88f181a1052926461f
Content-Type: text/plain; charset=UTF-8

CVE request for Kubernetes api server: patch operation should use patched
object to check admission control

https://github.com/kubernetes/kubernetes/issues/19479

TL;DR:  you can patch your resources and they'll always be allowed, so more
ram, disk, etc. CWE-285


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114f1e88f181a1052926461f--
