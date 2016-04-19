X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["538" "Tuesday" "19" "April" "2016" "15:09:32" "+0000" "Nathan Van Gheem" "vangheem@gmail.com" "<CAL8hw9GTBixuPdUDvyanNNGPp3_tFAad=QWfFX3FEhjPyaAMhw@mail.gmail.com>" "24" "[oss-security] CVE Request: Privilege escalation in webdav" "^Date:" nil nil "4" "2016041915:09:32" "[oss-security] CVE Request: Privilege escalation in webdav" (number mark "        vangheem@gma Apr 19   24/538   " thread-indent "\"[oss-security] CVE Request: Privilege escalation in webdav\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10067 invoked by uid 550); 19 Apr 2016 15:09:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10046 invoked from network); 19 Apr 2016 15:09:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=n5sfBRquRyPVZUOsjOYwIghuRYF0f/F+TvK6A/8mLnU=;
        b=R0wNQjpp5yItny8uxLYQsAi9VK2qdRTKYkHuVMhXG7ogAbch3Wd6pzT5LFNBX756/i
         FEtVccutsptXk/UR0gKdYFpynmfSKBuoLORHpi7eesQ6YsJNWJcrfbekUq1pd1ycQDjj
         deAgk40AQe6krFcDxJu8BvExCpSw9qPXcPOi2/tYKevHJecoBqGdqYi3KzvnAuOjjVHz
         LEJTFDwYOM8zh+BtFq3FdJiJpu6PVkLz0QO84uXdxkHp3QcmO3Ntnw3Fhq0WhiGKPRd2
         Spr1x+ZsAR8kCSzOeSNFW+BVvafvADuDJmHXU54I30u3g+xMkj5X50ienhpmczItiVVE
         jpIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=n5sfBRquRyPVZUOsjOYwIghuRYF0f/F+TvK6A/8mLnU=;
        b=FatYfuHGs9W5wy/lWM6xEIjL6aJTRqBwmAwmnvwrJ7b4P1pUmNivHYgQ+fOwBPKxop
         q+SqsNyn6ngm5U9X3AZWV+kxsOQ/Ji0kzckE1FI/j2F7ItNo5eAAXJz6k6P81bZuUj4D
         pTyjtaBnjPFKFSBogOCTnwWewdqpucDvDNNv4sGo27WLkHkjg/AEq7MhMg4Cs3bjYNNW
         4gArvNNXKvmS0ym63HFsNi94XWZCfiCoJkfM7kSzqo6eoz9arY/bxzPmKT3mNrEfYKcM
         6lRXk+yi/fXTcEbhXzVU02/KFhn//LgRCy4Ud+VkZKHCYu3y41/Mq9brAMCBnrof+Ai9
         03/Q==
X-Gm-Message-State: AOPr4FVkoiAXSuF70e4NoFCr1rUKCC7E+Z1dGw/rme4/9yiyyrDuQe2KY7XDoN4x2tkO99Sg4fZNx//mwpSLEg==
X-Received: by 10.107.12.224 with SMTP id 93mr4474758iom.70.1461078582378;
 Tue, 19 Apr 2016 08:09:42 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAL8hw9GTBixuPdUDvyanNNGPp3_tFAad=QWfFX3FEhjPyaAMhw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113f91aee444c00530d7dd3a
Date: Tue, 19 Apr 2016 15:09:32 +0000
From: Nathan Van Gheem <vangheem@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Privilege escalation in webdav
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a113f91aee444c00530d7dd3a
Content-Type: text/plain; charset=UTF-8

Can a CVE be assigned to this issue, please?

https://plone.org/security/20160419/privilege-escalation-in-webdav

A missing webdav security declaration would allow unauthorized webdav
access.

The relevant code is:

https://plone.org/security/20150910/

The vendor credits with the discovery: Thomas Mogensen

Thanks, let me know if you'd like more information.

-- 
Nathan Van Gheem
Director of Solutions Engineering
Wildcard Corp

--001a113f91aee444c00530d7dd3a--
