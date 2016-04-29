X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1033" "Friday" "29" "April" "2016" "10:26:00" "+1000" "Brendan Scarvell" "bscarvell@iix.net" "<CAOJmqsBw6V5m4NbHzX4-KLhjgZqmzHLem_ZfTrgiwx9SBc979g@mail.gmail.com>" "36" "[oss-security] CVE Request - Multiple vulnerabilities in Activiti Explorer" nil nil nil "4" "2016042900:26:00" "[oss-security] CVE Request - Multiple vulnerabilities in Activiti Explorer" (number mark "U       bscarvell@ii Apr 29   36/1033  " thread-indent "\"[oss-security] CVE Request - Multiple vulnerabilities in Activiti Explorer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3575 invoked by uid 550); 29 Apr 2016 00:26:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3552 invoked from network); 29 Apr 2016 00:26:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iix-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:cc;
        bh=IntzdVVQjpFnUHFAe8uirGFdNAjuNSGcsxhpJ6ZfiHM=;
        b=164qIvnvWEGRS8d6IFGgTaFb9Cl3db19RPZFL2ZwLbf4mDPYUNvxjX5TFfOIdL3Sw3
         IWS09LWXo+yZhNIDe5u718Ya7JCDZ5rDd11jORWpG+h0/+hpJng0+V975dRQmD6ngI4R
         XjmDvobxywAcNGqtuIqh9kMWcM8amSgzkGK05MCIQ7uALjjPaiVhT8mIiioq0UFMChXr
         6Iz1YIg8HvN8+pMs4OyiE9PGZ3Q9x/ExZvklfcJC17VfXqjXFhh+TyEyf6DbJWnoZ2Eq
         Yj4DVKmSQp2oFyiFHT60njCStzSCP6TIf97/YqqbD5jwvCBQyk1yLN95q1cyYt86+bZ2
         PpZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
        bh=IntzdVVQjpFnUHFAe8uirGFdNAjuNSGcsxhpJ6ZfiHM=;
        b=QIZHmV5MnhSTbJ/DSztKgemayoP1Z+z8uvJa6u4Q/rYN8NQ7Qy2abMe2D6NBPr/6yr
         66i+rxpBfH8Q1mqm5UCZJdcwx4HpNXZ2uMxR0r5s/QseQXeQGFTGlDTkW3/fiDXOIHPG
         iax947RpuxRC7MVhwV7qXk5dz/qtO/U/iVRAZ6UNYVqp0TfXJVQJmJD/pg1xci58cDOK
         fAJGBK94qK/OYmcHq5P0zyhqKAJwY5mTUAzJZi1OTMJf6OszfoZ+uwNFd79j+d0iI551
         5VO8totklJQNDjYm2efKgrR2R9Y1hi/EQ8iD078R/urfrJiAVLfzRQbbhcr03q8Ob3+n
         EP6g==
X-Gm-Message-State: AOPr4FXMoL7HKgoE+1pIW+BSIFBPpDKRhnoMyCTNmN6WpHaOVPpJX/GC2/l752bN91TLe7qElQIPRWPBKCz+2WSZ
MIME-Version: 1.0
X-Received: by 10.55.200.137 with SMTP id t9mr18162601qkl.41.1461889560966;
 Thu, 28 Apr 2016 17:26:00 -0700 (PDT)
Date: Fri, 29 Apr 2016 10:26:00 +1000
Message-ID: <CAOJmqsBw6V5m4NbHzX4-KLhjgZqmzHLem_ZfTrgiwx9SBc979g@mail.gmail.com>
From: Brendan Scarvell <bscarvell@iix.net>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a1145beb0fb93a0053194afa4
Subject: [oss-security] CVE Request - Multiple vulnerabilities in Activiti Explorer

--001a1145beb0fb93a0053194afa4
Content-Type: text/plain; charset=UTF-8

Good morning

I've discovered a stored XSS and an XXE vulnerability in Alfresco's Activi
Explorer.

Comments created for "tasks" aren't having HTML characters sanitized
correctly resulting in a stored XSS being executed when any user visits the
page.

Activiti Explorer also has the parsing of external entities enabled and
I've noticed that deployments tab is vulnerable to XXE. An attacker is able
to upload malicious XML files to read arbitrary files off the server.


I've attempted to report the issue to the vendor several times, however
have received no response.

Timeline:
March 11  - Contacted vendor, no response
March 17  - Contacted vendor, no response.
March 24  - Contacted vendor, no response
April 1      - Contacted vendor, no response
April 15    - Contacted vendor, gave deadline for April 29th.
April 29th - Still no response

Could a CVE ID please be assigned to these issues.


Thanks,

Brendan Scarvell

--001a1145beb0fb93a0053194afa4--
