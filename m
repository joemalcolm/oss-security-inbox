Received: (qmail 9565 invoked by uid 550); 8 Apr 2025 13:00:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15633 invoked from network); 8 Apr 2025 12:36:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brad-house.com; s=google; t=1744115764; x=1744720564; darn=lists.openwall.com;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=SK6LeEwYqI0v2Vw8ZARKnR4aA41DG5UgO9jVLZZ81Rc=;
        b=WxA9qPvFLlkMlq+RLbtYD2jwk7k6PjoLNQIzS5LTrLG5CNlF1+P6Biq5UY9TVuaN+N
         a/6T+20FcLXrmPCzD9i1YudE8fgW5bDcKTqM5OwV4jCxhiC0AOfnVigpcet2aUS9pMV7
         MOtTEGCMv5kfMOqnD45KiVNL4buIc9oghSlNWWBGzSzF8/j7WdACSNf1fYiSV+9fJvGM
         tK3XOSBqWfaSi6VLKXwOZBzE1gRPTY1bXeC2oSwvw8R9qAawzr8glMGmNziag9QjGxSb
         XBYM6a74lkOBJQxBCwabYxne4KI8SH72/IKWbX3azW+s3ubJ07pP98r0pxP7BPTfApN8
         856w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744115764; x=1744720564;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SK6LeEwYqI0v2Vw8ZARKnR4aA41DG5UgO9jVLZZ81Rc=;
        b=WqEeRN/+hm3ovpuG/WESbnaxdY8rYViVBaC9r755e8HSG+yPwR7l7jYVeHqfIr0MbZ
         lDOfLkR67+lv4jN8KCAVD+wXTPfIWNBCP+zqM82Z9A1JtxibE0TexOKwsV5Uy8sY2pco
         3gHnL0fn6twGhtjb0NNB8XBtPmEn1HG+CAS+qPZLrMN90SmYZhIpxoAGepWs8dq2/FI1
         7p9yk6/JZKNkr3voIMKJVZIrVCWpq9BZDu1rVQquXVP91pKKOtSSbnlQCfmxWSPeHDG3
         qAiBGGxdCOaG8sE8Jp43slhguqjdA/syHMCzicv802RzUD3auW17sC0q8ObquDBHp/pk
         7Y1Q==
X-Gm-Message-State: AOJu0YxXWCxK+UFXL7JczF7qZfzVre1JmTX0+mQT+A495+A5vga8T6LE
	uSM5jYWqU9fwqVzJEYvakc5ztLvBYccT+osRW0ahR6n9Tt/mfPHhcIs8o6a5CxVZRdeXgHyj72p
	Isnc=
X-Gm-Gg: ASbGncsIwFoZfCKHT7fwSbM7kLUE6rJcNdU5wX1gzZRFVgkLWvVKty6NpFj0rOvjVMc
	mKDh46dzO+Xe4kj7sWL7OZ5k/ZRa+klf6Q/sQXZrDo31OQLPOwgAx1XI1dEOLsj7g87GD+VeqFH
	NFPByezfgNdVQqquN+EZY7aRP2Ltd/7Z+j1HZrnTTcmLjv6EJVhmh9kkYGmIpNdMeLLiaIdFDQw
	4Ik5Jb8YrKtB4kTdUTc//jwgp825nM15wXtWQb/nF0XFvZc1sV1XvpCiUBxTk73eiq9ANeCjynp
	90Ylt47DARwzScxUrZzLSfN5t9fpdrhxtDbWWy6XJwnOcFs5TRZFeRr0Kt5nPvaiTFkuqtiMFxp
	rUBXQEWyv8Lmt7jg4PoyGV254KKDAKDfJUvvO
X-Google-Smtp-Source: AGHT+IH0YOtJ8BfbPBRYFu4Ygn7NBRIQmMxzmj4gB3B2jpfV1XRAXt3Pmzpd4J2amUoaOK4Cuoft6Q==
X-Received: by 2002:a81:b2ca:0:b0:702:4643:8eca with SMTP id 00721157ae682-7042d41ec3fmr40964277b3.1.1744115764210;
        Tue, 08 Apr 2025 05:36:04 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------A757U6wZifjAjOIKF23BY3By"
Message-ID: <b9af7d69-9cab-4cfe-8570-7909466c5c0f@brad-house.com>
Date: Tue, 8 Apr 2025 08:36:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Brad House <brad@brad-house.com>
Subject: [oss-security] CVE-2025-31498: c-ares use-after-free

--------------A757U6wZifjAjOIKF23BY3By
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


    CVE-2025-31498


      Impact

Use after free() in read_answers() when process_answer() may re-enqueue 
a query either due to a DNS Cookie Failure or when the upstream server 
does not properly support EDNS, or possibly on TCP queries if the remote 
closed the connection immediately after a response. If there was an 
issue trying to put that new transaction on the wire, it would close the 
connection handle, but read_answers() was still expecting the connection 
handle to be available to possibly dequeue other responses.

In theory a remote attacker might be able to trigger this by flooding 
the target with ICMP UNREACHABLE packets if they also control the 
upstream nameserver and can return a result with one of those 
conditions, this has been untested. Otherwise only a local attacker 
might be able to change system behavior to make send()/write() return a 
failure condition.


      Patches

Versions 1.32.3 - 1.34.4 are affected. Patch in 1.34.5.


      Workarounds

None


      References

c-ares started handling UDP write failures in 1.32.3 in PR#821 
<https://github.com/c-ares/c-ares/pull/821>whereas they were previously 
ignored, thus uncovering this particular issue.

https://github.com/c-ares/c-ares/releases/tag/v1.34.5


      Credit


Reported by Erik Lax

--------------A757U6wZifjAjOIKF23BY3By--
