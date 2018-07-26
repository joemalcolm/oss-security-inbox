X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["907" "Thursday" "26" "July" "2018" "10:25:22" "+0100" "Rajini Sivaram" "rajinisivaram@gmail.com" "<CAOJcB3_j1XqXK3TnJaqZrga0d13=taYOVoG9cGG0og5Zf+=L5w@mail.gmail.com>" "57" "[oss-security] CVE-2018-1288: Authenticated Kafka clients may interfere with data replication" nil nil nil "7" "2018072609:25:22" "[oss-security] CVE-2018-1288: Authenticated Kafka clients may interfere with data replication" (number mark "U       rajinisivara Jul 26   57/907   " thread-indent "\"[oss-security] CVE-2018-1288: Authenticated Kafka clients may interfere with data replication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4054 invoked by uid 550); 26 Jul 2018 10:23:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28633 invoked from network); 26 Jul 2018 09:25:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=vYTSs0Kg2WVLMYFQJHZsR3yOSgeBpkIUKdB9rlZEPaw=;
        b=D/hvpRZld4hcJBAFuPu1S+yhZaBz8vTid+tQWKlhIST41/k9iUqZfOpc/zegxiTUAe
         gF7KO8Dc0BpLTuYsQDucXaARkduO36h+KDbxrqnDOO02zbf+cDx9vlCEo69DS8k+cEX+
         QdDaQSKPqfitXot1eB3mNp7+ON+TVSl9Pt2OD4lSPDolpSBEka7oGD2UUkX62Gb3LU34
         jUHAa2g2Q6/SmIesVJh6TvXDfq+goNsFr4XRsY4ytOEdjAoBMVkQLOZyVwHUmgDdUZUo
         Dv06Tls/7MVFxHEnlvxHdZ289+dGUrXHZJyZAIQ2oSSVUYp0vaqP7RIbkrv9CH7MKtVz
         JQdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vYTSs0Kg2WVLMYFQJHZsR3yOSgeBpkIUKdB9rlZEPaw=;
        b=VX7rtF8fwwEXY/zbyy28rqeyT37o0k0zhTi5xuER68jshIAzl4MFqLbrNWOTtIScz1
         rTH/NI9ckOPXEH6CeaG0rlNjMuBu3vGSksou5dY3GhGrmtwpJFyhSzZ8nBhaC7S42zQd
         auCYiw1wCKe7vC7fehrEOA029bFinlwfCtNP3rMC+q7fGMeI17ez+NtSH89q8INzX+Oy
         5itr/b40BImASTj6fuxQ0l8RqvR3d/ydI/6c/S9tlXaWESpkrFDBYAso8JxNbicfYJ7D
         tb6Z3gP8h0+5UXaFWaVLfDc404eYGgAVtZOVvSVd5JD96+2NzkxFel/+Z2I+jmUXOAvP
         QoZw==
X-Gm-Message-State: AOUpUlG4efvaORbt41MiwkwKU5WQuBvvpFZZbRyr9h5E48zr9IVk1u7c
	W2KiglRkKTmCrEBP9s1vFO7t8/vOixgl2jzAPPc=
X-Google-Smtp-Source: AAOMgpcYt7JVdQQMWYScLl9yb7xTw+poaTF3q+hFlyPtVylHOclo0jWRglyhZOWXM8fYy6jNSV61Udxus931qPC4MFU=
X-Received: by 2002:a6b:ab87:: with SMTP id u129-v6mr933812ioe.30.1532597122839;
 Thu, 26 Jul 2018 02:25:22 -0700 (PDT)
MIME-Version: 1.0
From: Rajini Sivaram <rajinisivaram@gmail.com>
Date: Thu, 26 Jul 2018 10:25:22 +0100
Message-ID: <CAOJcB3_j1XqXK3TnJaqZrga0d13=taYOVoG9cGG0og5Zf+=L5w@mail.gmail.com>
To: security@kafka.apache.org, oss-security@lists.openwall.com, 
	announce@apache.org, Users <users@kafka.apache.org>, dev <dev@kafka.apache.org>, 
	kafka-clients <kafka-clients@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000173b130571e393e7"
Subject: [oss-security] CVE-2018-1288: Authenticated Kafka clients may interfere with data replication

--000000000000173b130571e393e7
Content-Type: text/plain; charset="UTF-8"

CVE-2018-1288: Authenticated Kafka clients may interfere with data
replication



Severity: Moderate



Vendor: The Apache Software Foundation



Versions Affected:

Apache Kafka 0.9.0.0 to 0.9.0.1, 0.10.0.0 to 0.10.2.1, 0.11.0.0 to
0.11.0.2, 1.0.0



Description:

Authenticated Kafka users may perform action reserved for the Broker via a
manually created fetch request interfering with data replication, resulting
in data loss.



Mitigation:

Apache Kafka users should upgrade to one of the following versions where
this vulnerability has been fixed.


   - 0.10.2.2 or higher
   - 0.11.0.3 or higher
   - 1.0.1 or higher
   - 1.1.0 or higher



Acknowledgements:

We would like to thank Edoardo Comar and Mickael Maison for reporting this
issue and providing a resolution.



Regards,


Rajini

--000000000000173b130571e393e7--
