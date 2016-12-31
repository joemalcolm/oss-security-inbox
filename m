X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1459" "Saturday" "31" "December" "2016" "05:38:20" "-0200" "Pedro Santos" "pedrosans@gmail.com" "<CACvbKQavmHbrxTWnpGKF4XTsmifAa_4hwWavV427P8b4gDb+Sg@mail.gmail.com>" "40" "[oss-security] Fwd: [ANNOUNCE] CVE-2016-6793 Apache Wicket deserialization vulnerability" nil nil nil "12" "2016123107:38:20" "[oss-security] Fwd: [ANNOUNCE] CVE-2016-6793 Apache Wicket deserialization vulnerability" (number mark "U       pedrosans@gm Dec 31   40/1459  " thread-indent "\"[oss-security] Fwd: [ANNOUNCE] CVE-2016-6793 Apache Wicket deserialization vulnerability\"\n") "<CACvbKQa=-=qmeOW8-4iPvKC6Tmqf=XcEf6ETnDzgtvrqe467bA@mail.gmail.com>" ("<CACvbKQa=-=qmeOW8-4iPvKC6Tmqf=XcEf6ETnDzgtvrqe467bA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17813 invoked by uid 550); 31 Dec 2016 12:54:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3389 invoked from network); 31 Dec 2016 07:38:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=7kRmV3B30Izvfj4GNsGFV0lTekS78rA0SkeAqxRYkw8=;
        b=lRG9e+Yze1rRKls8qbDKVThwmwxYF2PF+zByhUx0mYm9H2CgZy3AUO0Xipxw61JErw
         YNcNqMFIhjZcOKgjeX5cCsIyktc4RU5EGTjI7QWDwKm47LKU04l+lqj6+qxO3ObeWGe6
         7pwSoMvWU+HgGO+lQCt8b8146dmPX+0kj0xs8b1DBmtgTQySpeHdUd1GX1u50tUItVSD
         fhMzM3Q6Vd4uB6xTHB6OkbQGeaIe0oP2RH4OXyMoMq/s581tMY74CbbIxsebaGTcJQp1
         pqHoCLFa9wYB6TMJuBnQz0V7uZMhmm9fCEHTm+oDY6nGGiw4+LD3rO5eiT17npfucjaX
         RdgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=7kRmV3B30Izvfj4GNsGFV0lTekS78rA0SkeAqxRYkw8=;
        b=mMHazQaELw53AuX+c8jWz6Am0EbUxbMkNE4a3+ZwH75zGuXb+MuoR84tKi7fXgY0+r
         2XJ6UeAUUNSBjbDEGtBzgfaSk+MjpoRmnj+KDMrk7P/lcJ1K4ZQhyYSonC28GsnhgYqT
         FWb6pqYUmop/UZN+aw0IRZd2yvWCEapqxLnolAXPMTw4Z8eRPfAXZksa7IrN4+14DoHA
         JeIyVqsV7YDrrjUkaq3gUSVTAwAJP2vda2uiUDN3qkjm+771o8B7pEWEa7AppK9sG2i2
         2XULiLYu7MliJ0OZ2EajZu0Q9QOgQr1PFeff0U8kZOVc+/NjTU8RBJlNC6HtcmhXhylO
         8HwQ==
X-Gm-Message-State: AIkVDXKqiKJoyv3hJsuM/jj5AI8QhGVCPELSCUdGR9DKRURNmOhtDz67GRHa2iqDzkEqsfcU1QpdzFatfu1k3w==
X-Received: by 10.157.11.67 with SMTP id p3mr17853363otd.215.1483169901162;
 Fri, 30 Dec 2016 23:38:21 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CACvbKQa=-=qmeOW8-4iPvKC6Tmqf=XcEf6ETnDzgtvrqe467bA@mail.gmail.com>
References: <CACvbKQa=-=qmeOW8-4iPvKC6Tmqf=XcEf6ETnDzgtvrqe467bA@mail.gmail.com>
From: Pedro Santos <pedrosans@gmail.com>
Date: Sat, 31 Dec 2016 05:38:20 -0200
Message-ID: <CACvbKQavmHbrxTWnpGKF4XTsmifAa_4hwWavV427P8b4gDb+Sg@mail.gmail.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	security <security@apache.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Fwd: [ANNOUNCE] CVE-2016-6793 Apache Wicket deserialization vulnerability

Forwarding the message em plain text mode to:

- be accepted by securityfocus's mail server ( didn't accepted MIME
Content-Type 'multipart/alternative' )
- add oss-security@lists.openwall.com at the open receiver ( openwall
is not accepting emails if in BCC)
- adding missing Apache's security team (my bad, missed in the original email)

Pedro Santos

---------- Forwarded message ----------
From: Pedro Santos <pedro@apache.org>
Date: Sat, Dec 31, 2016 at 5:21 AM
Subject: [ANNOUNCE] CVE-2016-6793 Apache Wicket deserialization vulnerability
To: announce@wicket.apache.org, "users@wicket.apache.org"
<users@wicket.apache.org>, dev@wicket.apache.org


CVE-2016-6793: Apache Wicket deserialization vulnerability

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: Apache Wicket 6.x and 1.5.x

Description: Depending on the ISerializer set in the Wicket
application, it's possible that a Wicket's object deserialized from an
untrusted source and utilized by the application to causes the code to
enter in an infinite loop. Specifically, Wicket's DiskFileItem class,
serialized by Kryo, allows an attacker to hack its serialized form to
put a client on an infinite loop if the client attempts to write on
the DeferredFileOutputStream attribute.

Mitigation: Upgrade to Apache Wicket 6.25.0 or 1.5.17

Credit: This issue was discovered by Jacob Baines, Tenable Network
Security and Pedro Santos

References: https://wicket.apache.org/news
