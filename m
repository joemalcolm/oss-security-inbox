X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1806" "Friday" "27" "November" "2015" "13:41:54" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1JVZUA4u-3cX4UgyfaZ5JMTowDeF_nmkRPKmzN0Ew9SQ@mail.gmail.com>" "62" "[oss-security] Major outstanding CVE requests" "^Date:" nil nil "11" "2015112720:41:54" "[oss-security] Major outstanding CVE requests" (number mark "        kseifried@re Nov 27   62/1806  " thread-indent "\"[oss-security] Major outstanding CVE requests\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15789 invoked by uid 550); 27 Nov 2015 20:42:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15771 invoked from network); 27 Nov 2015 20:42:07 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=kjSZrFdRZ5nxECs6systqGDwyrgw+a6QgJnWrDpMfJ0=;
        b=PNfNAEP3sH8YBUvkL43oN8RDMu4aenVJiu6bCLh2SccWs0d6xQGWv+pWzFF3tK5a5w
         hpLaGwqD/Wphj73CtXJtStNTajFGX2wT+9mzRR3ZYmN0wy4zP36l/wtpp5R4lM4BJl8X
         Yp17VdKRYbcxhD7PjYnVcg6n4pOrGlvcmrfqDH6ImvPuWCkmG1MPpI4+juBWynmL7HYg
         +BDfcUMG9kPU+45Of6NhXiYmBuqNGTcXq2lBL3Kvs9hUwgdzjV+tZgQVLQyHDu3W5VV6
         edo67TIXS+O9O5KW/LGKbQaPGOHkV3ZJA88pESvvS655FFskvrmQVRApTj7d8+049MqH
         7Kbw==
X-Gm-Message-State: ALoCoQlx2RbclahQVLjJm8AR+37/RItCI8U/4SR+5k0omqrs0L5nkk9AfsDW8OwGyXopC19gIGXx
MIME-Version: 1.0
X-Received: by 10.129.80.11 with SMTP id e11mr42321533ywb.303.1448656915035;
 Fri, 27 Nov 2015 12:41:55 -0800 (PST)
Message-ID: <CANO=Ty1JVZUA4u-3cX4UgyfaZ5JMTowDeF_nmkRPKmzN0Ew9SQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1147d2b2d2d2ad05258bb8b9
Date: Fri, 27 Nov 2015 13:41:54 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Major outstanding CVE requests
To: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>, 
	cve-editorial-board-list <cve-editorial-board-list@lists.mitre.org>

--001a1147d2b2d2d2ad05258bb8b9
Content-Type: text/plain; charset=UTF-8

So we have a number of PCRE issues that need CVE's and a git issue that
needs a CVE (at this point we've actually shipped an update for it, most of
these requests are more than a month old, and several are 2-3 months old.
Red Hat needs CVE's for these, as do other vendors I'm sure. I know it's
thanksgiving in the USA right now, but the backlog is becoming a problem.
Can I have permission from Mitre to assign CVE's to these issues?

Git:
http://seclists.org/oss-sec/2015/q4/37
asked for Oct 5, pinged recently, still no answer.


PCRE:
======
https://blog.fuzzing-project.org/29-Heap-Overflow-in-PCRE.html
http://seclists.org/oss-sec/2015/q4/363

Appart from that a couple of other vulnerabilities found by other
people have been fixed in this
release:https://bugs.exim.org/show_bug.cgi?id=1672
Heap overflow in compile_regexhttps://bugs.exim.org/show_bug.cgi?id=1515
Stack overflow in compile_regexhttps://bugs.exim.org/show_bug.cgi?id=1667
Heap overflow in compile_regex

======


More PCRE:


======

http://seclists.org/oss-sec/2015/q4/364

The other unassigned issues already have open CVE requests:
https://bugs.exim.org/show_bug.cgi?id=1503
-> http://www.openwall.com/lists/oss-security/2015/05/31/5
https://bugs.exim.org/show_bug.cgi?id=1672
-> http://www.openwall.com/lists/oss-security/2015/08/24/1
https://bugs.exim.org/show_bug.cgi?id=1515
-> http://www.openwall.com/lists/oss-security/2015/05/31/4
https://bugs.exim.org/show_bug.cgi?id=1667
-> http://www.openwall.com/lists/oss-security/2015/08/05/3

======






-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1147d2b2d2d2ad05258bb8b9--
