Received: (qmail 12193 invoked by uid 550); 30 Oct 2024 23:45:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8006 invoked from network); 30 Oct 2024 23:43:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730331794; x=1730936594; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cYBFu+A1QnJ/xATefymIXpO07qbJ7sptsDDJvZ7U+ow=;
        b=Gxj0SBCmvz3TU+ogKaEV6cCPL5//PEnEOAsnyq7uQ1CBh8AzPB4q0cznAcFZDy5/da
         Hnxi7YRmatSYmiNVkZ1+IZPyYRJTNdo5s9fDqXzIfAK9ICg37aBSJ9L2Ou96KInsjPo5
         CLyFf0miQDkwsbZli51+oGFMkrXyYTEViMrYXdk2Vtu6EMuoNGekaMw0JuUCuUCNWk1t
         i68qKMqzs7AHhzJbpHESfZ87RWUV5n5CsEig5gxUFjYm1PIu8GZ5cyjJ/FERuftUCYMz
         vWRMfTxLfL7mt0w2CaQMZLK/f3/urEVNmdRSrSVXmPWUAVCVjbeRFBV3knD1Re4n7808
         iNzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730331794; x=1730936594;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cYBFu+A1QnJ/xATefymIXpO07qbJ7sptsDDJvZ7U+ow=;
        b=Arlsrqxs3oVQpADXSlittOS335zTJNIKvKM3Da3oQN9iKS79f4GIsYjARO8kxMEwAV
         Owpe0BaCORRRoPoU2Kg6HEDM83+CqKiqQ+oKBQzGKAY6gjwp0pKzO2CwtMdHZY4WCyWF
         5mSG/nY0E1j9Liv5Nm8Df5LxzMGWUAnZszO/Z3xGHTexKRyUq8QdEfHTc+QSjcvHqkgM
         zTVSSfa/iCa9M5OlE0x2oQ8YNa+/VTokS0NdFpCbeutCSk4yw8LJhL4a/eZF/ENeVa3I
         A0ZOnKa1GBOzXQmhfCheDP0phQrw2bTKYW24dA6PlRKA7u/FkW1hmygJR3IakOSNLpDT
         h8/Q==
X-Gm-Message-State: AOJu0YzlT0FgeiS3loBa3SYX/K3GpIEmAefXgWYqx4PdyMS5g3W6GM7Y
	nWjnr+Qvfq/pZ9rKtWEji2i+Wft5I3FfnxgUwX9HKJ8eJwUSDP1iFRzVJwiTrVWHPeSxmFwX3dd
	/duVI6IQ0diT42bFvUJ6YgqC+kh+Yj/Mz
X-Google-Smtp-Source: AGHT+IHcvKZDuiFRm6pSm4+o+Rfr92mP2xJ0DTquJeZXPcPYIEAFb3ktL9sLCj6E9CdKDn97zHYZOwAKbZNhHleqZbI=
X-Received: by 2002:adf:ea43:0:b0:37d:633a:b361 with SMTP id
 ffacd0b85a97d-38061206c0cmr13258981f8f.51.1730331793540; Wed, 30 Oct 2024
 16:43:13 -0700 (PDT)
MIME-Version: 1.0
From: Sec Guy <0xsee4@gmail.com>
Date: Thu, 31 Oct 2024 00:43:02 +0100
Message-ID: <CANOyCOFT24kym0XnyUnVMeKn=GG07s8y7wpVSLWfHMeW0nriww@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e5cc850625ba43d2"
Subject: [oss-security] qBittorrent RCE, Browser Hijacking vulnerabilities

--000000000000e5cc850625ba43d2
Content-Type: text/plain; charset="UTF-8"

Hi all,

qBittorrent, on all platforms, did not verify any SSL certificates in its
DownloadManager class from 2010 until October 2024. If it failed to verify
a cert, it simply logged an error and proceeded.

To be exploitable, this bug requires either MITM access or DNS spoofing
attacks, but under those conditions (seen regularly in some countries),
impacts are severe.

The primary impact is single-click RCE for Windows builds from 2015 onward,
when prompted to update python the exe is downloaded from a hardcoded URL,
executed, and then deleted afterwards.

The secondary impact for all platforms is the update RSS feed can be
poisoned with malicious update URLs which the user will open in their
browser if they accept the prompt to update. This is browser hijacking and
arbitrary exe delivery to a user who would likely trust whatever URL this
software sent them to.

The tertiary impact is this means that an older CVE (CVE-2019-13640
<https://www.cvedetails.com/cve/CVE-2019-13640/>) which allowed remote
command execution via shell metacharacters could have been exploited by
(government) attackers conducting either MITM or DNS spoofing attacks at
the time, instead of only by the author of the feed.

Full write up is here:
https://sharpsec.run/rce-vulnerability-in-qbittorrent/
I have applied for a CVE but have had no response yet. Mitigation is to use
any other torrent client. The latest release is patched against this issue.

Credit: Jordan Sharp (finder)

--000000000000e5cc850625ba43d2--
