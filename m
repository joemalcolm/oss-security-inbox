X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["446" "Thursday" "2" "June" "2016" "11:40:37" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRoP9Aek2NFS84gCQjiNA-cK0udHRZaZxsJ4mq2ivR81Q@mail.gmail.com>" "14" "[oss-security] CVE request: DoS in phantomjs 2.1.1 rasterizing websites" nil nil nil "6" "2016060209:40:37" "[oss-security] CVE request: DoS in phantomjs 2.1.1 rasterizing websites" (number mark "U       gustavo.grie Jun  2   14/446   " thread-indent "\"[oss-security] CVE request: DoS in phantomjs 2.1.1 rasterizing websites\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24110 invoked by uid 550); 2 Jun 2016 09:40:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24091 invoked from network); 2 Jun 2016 09:40:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=W2cP+lfx95vXYlaqBnuaDSVm71/qzfj3knkWokjmH9Q=;
        b=ZUdEb1QnYMi+jvOC06FZP+lcTRGymFVdxTfoUgYV78vFwIjrj1iAiDXJYvMQsR/grO
         849u6dRVzMR6y8RIGTJ/AXDfIy7QfH5aCGlYWO0tPZnkft9PVa54gCbrQOnwNlmxqe1H
         IHM2nf5DLG53bIoEGoLcRuou6jbSQgR+LJFm0pM+n8JmMvR6fUhg0ZzKNVan1LG1AqPF
         ogOxJ1HPYIs8LVGIjmPja8Qbz5EXGUbgVs7enHpKgNG88X0ab6W8tsmR9elvJczxH1U7
         NV8yqtmvYL1pSorzZduDmgFMtcuyKer6Y99eXn5G8Yoxx/v/BLFgFE2PtOCsW6/YnCuw
         14Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=W2cP+lfx95vXYlaqBnuaDSVm71/qzfj3knkWokjmH9Q=;
        b=IuBTgzvYESdISTJH5FBaT3z5yvmwoc+vX0E/uIT6hGJ41WPvueuCV5IODZqNTEHsrl
         fYZ307DRNCmgqGvi8zVLaTH0hcFrR6Fi2IYZ7PKNvTORl7YAzpIQVxWfgsdJkn5aGhbf
         vOEQQe0Q+45uB8YgOnLdkhecNxWkstJGUiccy5jtq23w77g5+dvU8QinJorLWUOMRaYY
         eBlOykFBLCPnQbK5LaSKBp8k3ZeRFw/e9OquQjF55MOwqTbzUp53+viEsGNn27fRWh+k
         sZFFqYrS1twPw7iEmxCM+5PSR8BRrHzPM2VGilNr2gs562QIJgGxcY+kBGitN62heNg0
         f8bQ==
X-Gm-Message-State: ALyK8tJOn/YFeavIUS+cF2xYX7D16AMYvsGWKgpTQYlhCoS5dmM39b3tjXPBTAWCZjMMJ8C2OnJ4XL1Cg53bgw==
MIME-Version: 1.0
X-Received: by 10.107.136.34 with SMTP id k34mr2117444iod.100.1464860437657;
 Thu, 02 Jun 2016 02:40:37 -0700 (PDT)
Message-ID: <CACn5sdRoP9Aek2NFS84gCQjiNA-cK0udHRZaZxsJ4mq2ivR81Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 2 Jun 2016 11:40:37 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: DoS in phantomjs 2.1.1 rasterizing websites
To: oss-security@lists.openwall.com

Hi,

A denegation of service vulnerability was found in phantomjs when it
is processing a particular svg file. This crash caused by a null
pointer derreference can be easily used by a malicious website to
avoid rasterizing when it is crawled using phantomjs 2.1.1. Previous
versions like 1.9.x are not affected. A reproducer is available here:

https://github.com/ariya/phantomjs/issues/14244

Please assign a CVE if suitable.

Regards,
Gustavo.
