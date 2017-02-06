X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["257" "Monday" "6" "February" "2017" "10:48:08" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSe9Dzm=qqut30N9QDm97quKp467YXa4zPGWC8NGbbMVA@mail.gmail.com>" "10" "Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" nil nil nil "2" "2017020600:48:08" "[oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" (number mark "U       wmealing@red Feb  6   10/257   " thread-indent "\"Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read\"\n") "<26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>" ("<CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>" "<26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20160 invoked by uid 550); 6 Feb 2017 00:48:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20142 invoked from network); 6 Feb 2017 00:48:20 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=XFSPD8/gGUunin50VbcxDXfKbk6i9bGxYU4DEd7Drzg=;
        b=TTzEsgJeD2KZ9dbzWP3cixkoUptkA5Ln0lKwt5IVpnegFhFyWeSSAPc95BJXoN63xt
         v1JdwysB+NGPA5cn3dLSa1WmvKqWqWSP40Rkwk/u0Qwm046SCXawJ3AwLUmribE59F8R
         v+09ZzTp0rEq4T5r2tQGXWeIdLUHU2L9ktwM917C3oKDywQwl2tTJ1pYxEYcaJ/yDt6I
         2Gc9/MQPPHjVmLHoWWyew7szCTUbpEQLGPsSwSdgRucNS4h3Nd0Dng9PpXmjNKiM7A54
         kMiC68J86OieQcglTXXOz7PMuaH/5nU4tQ7c+SmdSm7Lfaa9SM0hECIYnHSKVc0uYx32
         3osw==
X-Gm-Message-State: AIkVDXIqSEVojTJqyTSmCcFf6obuQmHuBVbEVxKjxsAOylcvHM2W7dlAEvJoLtZkC/d+EJe8OzlNQVygCpqZDiuB
X-Received: by 10.36.28.147 with SMTP id c141mr5399032itc.102.1486342088743;
 Sun, 05 Feb 2017 16:48:08 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>
References: <CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>
 <26fd3ab9-bc82-6180-2b93-9eed6308fd0d@oracle.com>
From: Wade Mealing <wmealing@redhat.com>
Date: Mon, 6 Feb 2017 10:48:08 +1000
Message-ID: <CALJHwhSe9Dzm=qqut30N9QDm97quKp467YXa4zPGWC8NGbbMVA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption /
 SLAB-Out-of-Bounds Read

> The bugzilla link from the above isn't accessible.  Are we missing any
> useful information?

Not so much that wasn't already disclosed in the initial full
disclosure bug.  I'm working on getting that public, may or may not
happen.

Thanks,

Wade Mealing
