X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["941" "Thursday" "11" "March" "2021" "17:19:44" "+1000" "Wade Mealing" "wmealing@redhat.com" nil "38" "[oss-security] CVE-2021-20269: kexec-tools: incorrect permissions on vmcore-dmesg.txt file" nil nil nil "3" nil nil (number mark "U       wmealing@red Mar 11   38/941   " thread-indent "\"[oss-security] CVE-2021-20269: kexec-tools: incorrect permissions on vmcore-dmesg.txt file\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20269: kexec-tools: incorrect permissions on vmcore-dmesg.txt file" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13876 invoked by uid 550); 11 Mar 2021 07:20:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13855 invoked from network); 11 Mar 2021 07:20:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615447199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=VV2Od/PX6fawxs4tXqfeksupFJjKTP5xsXzN6aFhyw0=;
	b=BuDwRa5auJUyjWJjQ8/vNc7F3MfdGsDl2L2CJf4N/+hF056xhS1HQT3mPCv0u4KMnnQHv1
	Fk6YIApk3EyQ/jsvlCIlLCk7ihRup7AmDakqielRb3gc6cEzYQxJLgGwPW1cVW7gwSACge
	Lgv84Sa+lCXNGAxTar7LG4+7L2zpCic=
X-MC-Unique: 1urApHdGNOe_MFVZGCbnYQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VV2Od/PX6fawxs4tXqfeksupFJjKTP5xsXzN6aFhyw0=;
        b=DSMf1Zx3waU07RaD3bK0JQB+PvM54EJpIdm7Fg/qraC0XI7+omg7mgCi5BF2OUqSnr
         vIP59/MJwJWpiC9psbB3Z0jJK4QloxtJ11KxC71EXiD9jKdcSL7SrMyE7nD9UChTqnB/
         uixb7bVduN7BSSHoq87bF2vuQw7zC9lB84JLwWQnQAowCJgJFYERZteTn0iWZjWBqmBh
         nJQ9ti7Hkb5hKMHkxNGySFttyIEF//RrYgb/ExTNptJbMpmOMpoEgkZGWeXVdnPc5fok
         A57lspsF2AhArh9ONq/PVTBBhhfg8gOE/SJz2/mOZY6v2/b6Yu79m8FAdyKag25NNNOX
         ej2A==
X-Gm-Message-State: AOAM533LyxKgwbQ/MzNINIQnPE2dJXJddPHQeGZwf318NbN+3/y8UZyx
	e80G+Jz4vOWLgydjr/xqw2lFDh8L/ixdLchzHvhdFlo3TN7CPUQRtYkM0vvKwpzICk8nRUHrJ4O
	EYtw7n4b/lITun5aDHTV8Ox/23GAFEPD+12WNqurjH1us
X-Received: by 2002:a05:6602:1207:: with SMTP id y7mr5291539iot.23.1615447196255;
        Wed, 10 Mar 2021 23:19:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzrAU4dFBxaazeituNjcFKgkl51kWVf3rBTC5ww7HbHk120fcZm+ZQHacsvunnqNzOIVWO760DKQeZQDWmSvjU=
X-Received: by 2002:a05:6602:1207:: with SMTP id y7mr5291525iot.23.1615447195998;
 Wed, 10 Mar 2021 23:19:55 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Thu, 11 Mar 2021 17:19:44 +1000
Message-ID: <CALJHwhT3uLqQEbkVd9f2zMRONWUB3M2_Z60n7jXUPX3=A5d6uA@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=wmealing@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000045704c05bd3d9cb9"
Subject: [oss-security] CVE-2021-20269: kexec-tools: incorrect permissions on
 vmcore-dmesg.txt file

--00000000000045704c05bd3d9cb9
Content-Type: text/plain; charset="UTF-8"

Gday,

A flaw was found in the kexec-tools where it made the incorrect permissions
on the vmcore-dmesg.txt extracted from the vmcore of a previous kernel
panic.  It is possible that this could be used to leak kernel internal
information from a previous execution if it was output to the ring buffer
or part of the panic backtrace.   An unprivileged user with a local account
can use this to extract kernel internal information resulting in an
information leak.

TLDR: The vmcore-dmesg.txt is created world readable and should not be.

Red Hat Bugzilla:
  http://bugzilla.redhat.com/CVE-2021-20269


Thank you.
-- 

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

<https://www.redhat.com>

wmealing@redhat.com
<https://red.ht/sig>
TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>

secalert@redhat.com for urgent response

--00000000000045704c05bd3d9cb9--

