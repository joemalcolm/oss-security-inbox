X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1166" "Monday" "23" "November" "2020" "13:27:34" "+1100" "Daniel Axtens" "dja@axtens.net" "<87o8johko9.fsf@dja-thinkpad.axtens.net>" "31" "[oss-security] Re: CVE-2020-4788: Speculation on incompletely validated data on IBM Power9" nil nil nil "11" "2020112302:27:34" "[oss-security] Re: CVE-2020-4788: Speculation on incompletely validated data on IBM Power9" (number mark "U       dja@axtens.n Nov 23   31/1166  " thread-indent "\"[oss-security] Re: CVE-2020-4788: Speculation on incompletely validated data on IBM Power9\"\n") "<20201119232934.366442-1-dja@axtens.net>" ("<20201119232934.366442-1-dja@axtens.net>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2020-4788: Speculation on incompletely validated data on IBM Power9" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9884 invoked by uid 550); 23 Nov 2020 07:44:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32302 invoked from network); 23 Nov 2020 02:27:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=axtens.net; s=google;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=sQb4ICiI3hz+Kyn0bKdhd9cGIORO1xp7sz/srnWa3Ys=;
        b=gcufKm/NrhuFCg+9XuqJR/bci2nCxj8PJJFKGRTMV5q6H/JO37SHxhNDnU1SwwEVwn
         nOGsQW8Yq9pHMDlJ4ld/+xT19zCmVFWqkQ8EeEjMqnxscwakRgonjmUigH7NyoWohnYv
         61ObPCTN5jgFeh4y9vXOMsLisMs67/VjVwI/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=sQb4ICiI3hz+Kyn0bKdhd9cGIORO1xp7sz/srnWa3Ys=;
        b=b/ozcFCLb4+QsYxGyEWP8nJF34YbYwAcNqeD8Gz+0+DF+UrG5hdJDUA4d8MJuQCY4e
         oWXQ8qKgcqHzuHeTnE1B9Lg+GBq9DmZyBpvlYxV4hzVoNHMhM96lr15JkVlg4p2Gln45
         AI9Obdf/RBBPiXFARlFXC8KkqQ7nqDMNVl/Pq/CdZgsz2nCjOV543lTjpdvY6iKdiJAh
         X2EMYufOCQQMVbKQt1UvKphjVAnBkq7V2grqqmnerDlFdGut1IGeyxTtfaLS9zK31bKU
         /hLvJOcEOOdbF/XO9MZn6b3D/2STPdMAXMQ8nGFbbDmygyqlXOMAz2ro3W8GFrwRdPBY
         uosQ==
X-Gm-Message-State: AOAM533B6hJdSATFPlzQxKfi+kZoS8UHA50NhKdX80VueMOn0TtoIBQU
	OZkLVr6bUR1IHBnF0qz1yJ7UN1u5BxKeRg==
X-Google-Smtp-Source: ABdhPJyd7CN5tEoaQgrcKGgErsPMoG2hcxJLEFGGP/4z4ksqbcJ+H6H5tw2hs3NAz22TzmFEsk413Q==
X-Received: by 2002:a17:902:c142:b029:d6:ac10:6d25 with SMTP id 2-20020a170902c142b02900d6ac106d25mr22304881plj.37.1606098458630;
        Sun, 22 Nov 2020 18:27:38 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: oss-security@lists.openwall.com
Cc: cmr@informatik.wtf, ruscur@russell.cc, npiggin@gmail.com, mpe@ellerman.id.au, spoorts2@in.ibm.com
In-Reply-To: <20201119232934.366442-1-dja@axtens.net>
References: <20201119232934.366442-1-dja@axtens.net>
Date: Mon, 23 Nov 2020 13:27:34 +1100
Message-ID: <87o8johko9.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE-2020-4788: Speculation on incompletely validated data on IBM Power9

Hi,

> This issue can be mitigated by flushing the L1 cache between privilege
> boundaries of concern.

There's been interest in the performance impact of doing this sort of
flush. The impact depends on the workload, on how often the kernel is
entered and for what, and on the particular flush mechanism supported by
the machine.

To take an unscientific example, I tested compiling a kernel. I dropped
caches, did 1 build to warm the cache, and then 5 timed builds. The
machine uses the mttrig flush.

Wall clock time:
neither flush: avg 98.796s (min 98.329s - max 99.229s) -- 100%
entry flush:   avg 99.061s (min 98.935s - max 99.188s) -- 100.27%
both flushes:  avg 99.158s (min 98.303s - max 99.683s) -- 100.37%

As you can see, the performance impact for this test was less than 0.4%
on this machine.

I want to be clear that this isn't an official claim of performance
under any particular configuration or workload. Your results may vary.

As always, systems running in trusted environments can be booted with
mitigations=off or the firmware 'risk level' adjusted to disable a range
of speculative execution mitigations, including these.

Kind regards,
Daniel
