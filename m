X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["983" "Tuesday" "6" "October" "2020" "14:38:23" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjW3i-jA6c-UtkvECzmYDMs9NL=i62poTgz6cfi_Z=xgPQ@mail.gmail.com>" "26" "[oss-security] CVE-2020-14355 spice: multiple buffer overflow vulnerabilities in QUIC decoding code" nil nil nil "10" "2020100612:38:23" "[oss-security] CVE-2020-14355 spice: multiple buffer overflow vulnerabilities in QUIC decoding code" (number mark "U       mcascell@red Oct  6   26/983   " thread-indent "\"[oss-security] CVE-2020-14355 spice: multiple buffer overflow vulnerabilities in QUIC decoding code\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-14355 spice: multiple buffer overflow vulnerabilities in QUIC decoding code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5190 invoked by uid 550); 6 Oct 2020 13:37:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8007 invoked from network); 6 Oct 2020 12:38:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601987918;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=H2bwV8KllZmzwe0i8x2u7BrJBltjtvaEDQx1NbM7kUY=;
	b=eaQBZmsZKnExQMAby0YCxzNvOGsZvabDzO495pKafL2kiuTNPbUbBSRMMfEs6r2SUQJpYk
	40TjrJ6tVeRiq6j5WnYkkRbgnjPafxFIOVjokJG22X8dEC/01EnSqMBATsjI5ndYsisewH
	69rw+T1erUwnjMUnsNyfXnd1i+Ss97U=
X-MC-Unique: v3hKoiHUMZipofxgMjU1Kg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=H2bwV8KllZmzwe0i8x2u7BrJBltjtvaEDQx1NbM7kUY=;
        b=iqB2WeebSJJsTBrQn6UXZDIgnrEn6eZ4cjyQ29zMSJtksQr5cRazmqWw+gqpQtk2F6
         8XfV6LzoXDhEMPM36m6AbJAk9z+Y9yO5ok+6C0bkyNAtANcU1oZ+3Afkb1CoPFhrcW8Z
         NIGwpHHS1yu7iQ7LToX5vGWKBareJYnS6f7MrgiY8X+6RUjDhOfg/HNNGxVCYEuCePCZ
         ffLRphygt81fMo6huDYTMucItHZZ/HaWP5SqOZbon0xGN5hCYCkkKh4KDpM6Ecr/WwQt
         Ko2zcIihOF3VnvwYy3o+sYi1CNOOaixTyy4E/FfVDGRM2g08SUl86brYr/PBvQd9gDP8
         xT3Q==
X-Gm-Message-State: AOAM532dYJ1tyYvM3H0CGQKTOWW9g1wrvB+qADLAm74+HWAt25iQPORc
	QZcKTdGVCRMhjl/nlfNVT6rAgylYEerSfv433foP7UI8Q5CQjfZqd49OsRKTUUYoapsnEy1u7hc
	t4EsHPHcvubyuFV8qlqzTEkJ2ji1vXxQUxg8WPUiUuLTw
X-Received: by 2002:a17:906:d9c3:: with SMTP id qk3mr4982630ejb.207.1601987914563;
        Tue, 06 Oct 2020 05:38:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+Iod/pl2rCTM5LoJiPF5mDJrmbH3nQpxQQodPxFH41gFy7TCIjLc1fv8VZxKt0qhDzfFj67kzHp9FJHLMuKg=
X-Received: by 2002:a17:906:d9c3:: with SMTP id qk3mr4982616ejb.207.1601987914364;
 Tue, 06 Oct 2020 05:38:34 -0700 (PDT)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Tue, 6 Oct 2020 14:38:23 +0200
Message-ID: <CAA8xKjW3i-jA6c-UtkvECzmYDMs9NL=i62poTgz6cfi_Z=xgPQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Frediano Ziglio <fziglio@redhat.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-14355 spice: multiple buffer overflow
 vulnerabilities in QUIC decoding code

Hello,

Multiple buffer overflow vulnerabilities were found in the QUIC image
decoding process of the SPICE remote display system. More
specifically, these flaws reside in the spice-common shared code
between the client and server of SPICE. In other words, both the
client (spice-gtk) and server are affected by these flaws. A malicious
client or server could send specially crafted messages which could
result in a process crash or potential code execution scenario.

CVE-2020-14355 has been assigned for this flaw by Red Hat Inc.

Upstream commits:
* https://gitlab.freedesktop.org/spice/spice-common/-/commit/762e0aba
* https://gitlab.freedesktop.org/spice/spice-common/-/commit/404d7478
* https://gitlab.freedesktop.org/spice/spice-common/-/commit/ef1b6ff7
* https://gitlab.freedesktop.org/spice/spice-common/-/commit/b24fe6b6

Credit: Frediano Ziglio (Red Hat)

Thank you,

-- 
Mauro Matteo Cascella, Red Hat Product Security
6F78 E20B 5935 928C F0A8  1A9D 4E55 23B8 BB34 10B0

